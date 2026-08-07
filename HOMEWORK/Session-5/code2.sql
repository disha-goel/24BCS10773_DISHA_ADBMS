--follow-up question
--session-5=>code 2
--https://datalemur.com/questions/marketing-touch-streak

WITH consecutive_events_cte AS (
    SELECT 
        event_id,
        contact_id,
        event_type,
        DATE_TRUNC('week', event_date) AS event_week,
        LAG(DATE_TRUNC('week', event_date)) OVER (
            PARTITION BY contact_id 
            ORDER BY event_date
        ) AS lag_event_week,
        LEAD(DATE_TRUNC('week', event_date)) OVER (
            PARTITION BY contact_id 
            ORDER BY event_date
        ) AS lead_event_week
    FROM marketing_touches
)

SELECT DISTINCT contacts.email
FROM consecutive_events_cte AS events
INNER JOIN crm_contacts AS contacts
    ON events.contact_id = contacts.contact_id
WHERE (
    lag_event_week = event_week - INTERVAL '1 week'
    OR lead_event_week = event_week + INTERVAL '1 week'
)
AND events.contact_id IN (
    SELECT contact_id
    FROM marketing_touches
    WHERE event_type = 'trial_request'
);