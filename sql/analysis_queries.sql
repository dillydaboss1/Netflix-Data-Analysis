-- NETFLIX ENGAGEMENT ANALYSIS
-- SQL queries used in the project

-- 1. Data validation

-- Check total watch history row count

SELECT COUNT(*) AS watch_history_rows
FROM watch_history;

-- Check joined row count between watch history and users

SELECT COUNT(*) AS join_rows
FROM watch_history w
JOIN users u
ON w.user_id = u.user_id;

-- Compare both counts in one result

SELECT 'watch_history' AS source, COUNT(*) AS row_count
FROM watch_history
UNION ALL
SELECT 'join_result', COUNT(*)
FROM watch_history w
JOIN users u
ON w.user_id = u.user_id;

-- 2. User engagement metrics

SELECT
    w.user_id,
    COUNT(*) AS total_sessions,
    ROUND(AVG(w.watch_duration_minutes), 2) AS avg_watch_minutes,
    ROUND(AVG(w.progress_percentage), 2) AS avg_progress,
    SUM(CASE WHEN w.action = 'completed' THEN 1 ELSE 0 END) AS completed_sessions
FROM watch_history w
GROUP BY w.user_id
ORDER BY total_sessions DESC
LIMIT 10;

-- Categorise users by activity level and completion behaviour
-- 3. User segmentation

SELECT
    activity_level,
    engagement_quality,
    COUNT(*) AS user_count
FROM (
    SELECT
        user_id,
        CASE
            WHEN COUNT(*) >= 20 THEN 'High'
            WHEN COUNT(*) >= 10 THEN 'Medium'
            ELSE 'Low'
        END AS activity_level,
        CASE
            WHEN AVG(progress_percentage) >= 70 THEN 'High Completion'
            WHEN AVG(progress_percentage) >= 40 THEN 'Medium Completion'
            ELSE 'Low Completion'
        END AS engagement_quality
    FROM watch_history
    GROUP BY user_id
)
GROUP BY activity_level, engagement_quality
ORDER BY activity_level, engagement_quality;

-- 4. Genre analysis

SELECT
    m.genre_primary,
    COUNT(*) AS total_views,
    ROUND(AVG(w.progress_percentage), 2) AS avg_completion
FROM watch_history w
JOIN movies m
ON w.movie_id = m.movie_id
GROUP BY m.genre_primary
ORDER BY avg_completion DESC;

-- Genre analysis ordered by total views

SELECT
    m.genre_primary,
    COUNT(*) AS total_views,
    ROUND(AVG(w.progress_percentage), 2) AS avg_completion
FROM watch_history w
JOIN movies m
ON w.movie_id = m.movie_id
GROUP BY m.genre_primary
ORDER BY total_views DESC;

-- 5. Content type analysis

SELECT
    m.content_type,
    COUNT(*) AS total_views,
    ROUND(AVG(w.progress_percentage), 2) AS avg_completion
FROM watch_history w
JOIN movies m
ON w.movie_id = m.movie_id
GROUP BY m.content_type
ORDER BY avg_completion DESC;

-- 6. Duration analysis

SELECT
    CASE
        WHEN m.duration_minutes < 60 THEN 'Short'
        WHEN m.duration_minutes < 120 THEN 'Medium'
        ELSE 'Long'
    END AS duration_category,
    COUNT(*) AS total_views,
    ROUND(AVG(w.progress_percentage), 2) AS avg_completion
FROM watch_history w
JOIN movies m
ON w.movie_id = m.movie_id
GROUP BY duration_category
ORDER BY avg_completion DESC;

-- 7. Subscription plan analysis (user segmentation)

SELECT
    u.subscription_plan,
    COUNT(*) AS total_views,
    ROUND(AVG(w.progress_percentage), 2) AS avg_completion
FROM watch_history w
JOIN users u
ON w.user_id = u.user_id
GROUP BY u.subscription_plan
ORDER BY avg_completion DESC;
-- 8. User activity vs Engagement 
SELECT
  activity_level,
  COUNT(*) AS user_count,
  ROUND(AVG(total_sessions), 2) AS avg_sessions,
  ROUND(AVG(avg_watch_minutes), 2) AS avg_watch_minutes,
  ROUND(AVG(avg_progress), 2) AS avg_progress,
  ROUND(AVG(completed_sessions), 2) AS avg_completed_sessions
FROM (
  SELECT
    user_id,
    COUNT(*) AS total_sessions,
    AVG(watch_duration_minutes) AS avg_watch_minutes,
    AVG(progress_percentage) AS avg_progress,
    SUM(CASE WHEN action = 'completed' THEN 1 ELSE 0 END) AS completed_sessions,
    CASE
      WHEN COUNT(*) >= 20 THEN 'High Activity'
      WHEN COUNT(*) >= 10 THEN 'Medium Activity'
      ELSE 'Low Activity'
    END AS activity_level
  FROM watch_history
  GROUP BY user_id
) user_metrics
GROUP BY activity_level
ORDER BY
  CASE
    WHEN activity_level = 'High Activity' THEN 1
    WHEN activity_level = 'Medium Activity' THEN 2
    ELSE 3
  END;
