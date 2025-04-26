-- 1) Checks

-- Check for missing values in all columns of the users table
SELECT
  COUNT(*) AS total_rows,
  SUM(CASE WHEN user_id IS NULL THEN 1 ELSE 0 END) AS missing_user_id,
  SUM(CASE WHEN has_claims IS NULL THEN 1 ELSE 0 END) AS missing_has_claims,
  SUM(CASE WHEN has_violations IS NULL THEN 1 ELSE 0 END) AS missing_has_violations,
  SUM(CASE WHEN currently_insured IS NULL THEN 1 ELSE 0 END) AS missing_currently_insured,
  SUM(CASE WHEN currently_insured_length_months IS NULL THEN 1 ELSE 0 END) AS missing_currently_insured_length,
  SUM(CASE WHEN credit_range IS NULL THEN 1 ELSE 0 END) AS missing_credit_range,
  SUM(CASE WHEN age_group IS NULL THEN 1 ELSE 0 END) AS missing_age_group,
  
  -- Calculate missing value percentages
  ROUND(100 * SUM(CASE WHEN user_id IS NULL THEN 1 ELSE 0 END) / COUNT(*), 2) AS pct_missing_user_id,
  ROUND(100 * SUM(CASE WHEN has_claims IS NULL THEN 1 ELSE 0 END) / COUNT(*), 2) AS pct_missing_has_claims,
  ROUND(100 * SUM(CASE WHEN has_violations IS NULL THEN 1 ELSE 0 END) / COUNT(*), 2) AS pct_missing_has_violations,
  ROUND(100 * SUM(CASE WHEN currently_insured IS NULL THEN 1 ELSE 0 END) / COUNT(*), 2) AS pct_missing_currently_insured,
  ROUND(100 * SUM(CASE WHEN currently_insured_length_months IS NULL THEN 1 ELSE 0 END) / COUNT(*), 2) AS pct_missing_currently_insured_length,
  ROUND(100 * SUM(CASE WHEN credit_range IS NULL THEN 1 ELSE 0 END) / COUNT(*), 2) AS pct_missing_credit_range,
  ROUND(100 * SUM(CASE WHEN age_group IS NULL THEN 1 ELSE 0 END) / COUNT(*), 2) AS pct_missing_age_group
FROM `data.users`;

-- Check for missing values in all columns of the policies table
SELECT
  COUNT(*) AS total_rows,
  SUM(CASE WHEN user_id IS NULL THEN 1 ELSE 0 END) AS missing_user_id,
  SUM(CASE WHEN policy_id IS NULL THEN 1 ELSE 0 END) AS missing_policy_id,
  SUM(CASE WHEN carrier_id IS NULL THEN 1 ELSE 0 END) AS missing_carrier_id,
  SUM(CASE WHEN start_date IS NULL THEN 1 ELSE 0 END) AS missing_start_date,
  SUM(CASE WHEN policy_end_date IS NULL THEN 1 ELSE 0 END) AS missing_policy_end_date,
  SUM(CASE WHEN cancellation_date IS NULL THEN 1 ELSE 0 END) AS missing_cancellation_date,
  
  -- Calculate missing value percentages
  ROUND(100 * SUM(CASE WHEN user_id IS NULL THEN 1 ELSE 0 END) / COUNT(*), 2) AS pct_missing_user_id,
  ROUND(100 * SUM(CASE WHEN policy_id IS NULL THEN 1 ELSE 0 END) / COUNT(*), 2) AS pct_missing_policy_id,
  ROUND(100 * SUM(CASE WHEN carrier_id IS NULL THEN 1 ELSE 0 END) / COUNT(*), 2) AS pct_missing_carrier_id,
  ROUND(100 * SUM(CASE WHEN start_date IS NULL THEN 1 ELSE 0 END) / COUNT(*), 2) AS pct_missing_start_date,
  ROUND(100 * SUM(CASE WHEN policy_end_date IS NULL THEN 1 ELSE 0 END) / COUNT(*), 2) AS pct_missing_policy_end_date,
  ROUND(100 * SUM(CASE WHEN cancellation_date IS NULL THEN 1 ELSE 0 END) / COUNT(*), 2) AS pct_missing_cancellation_date
FROM `data.policies`;

-- Check for missing values in all columns of the drivers table
SELECT
  COUNT(*) AS total_rows,
  SUM(CASE WHEN user_id IS NULL THEN 1 ELSE 0 END) AS missing_user_id,
  SUM(CASE WHEN driver_id IS NULL THEN 1 ELSE 0 END) AS missing_driver_id,
  SUM(CASE WHEN education IS NULL THEN 1 ELSE 0 END) AS missing_education,
  SUM(CASE WHEN occupation IS NULL THEN 1 ELSE 0 END) AS missing_occupation,
  SUM(CASE WHEN marital_status IS NULL THEN 1 ELSE 0 END) AS missing_marital_status,
  
  -- Calculate missing value percentages
  ROUND(100 * SUM(CASE WHEN user_id IS NULL THEN 1 ELSE 0 END) / COUNT(*), 2) AS pct_missing_user_id,
  ROUND(100 * SUM(CASE WHEN driver_id IS NULL THEN 1 ELSE 0 END) / COUNT(*), 2) AS pct_missing_driver_id,
  ROUND(100 * SUM(CASE WHEN education IS NULL THEN 1 ELSE 0 END) / COUNT(*), 2) AS pct_missing_education,
  ROUND(100 * SUM(CASE WHEN occupation IS NULL THEN 1 ELSE 0 END) / COUNT(*), 2) AS pct_missing_occupation,
  ROUND(100 * SUM(CASE WHEN marital_status IS NULL THEN 1 ELSE 0 END) / COUNT(*), 2) AS pct_missing_marital_status
FROM `data.drivers`;

-- 1) Check for missing values in user_table
SELECT
  COUNT(*) AS total_users,
  SUM(CASE WHEN user_id IS NULL THEN 1 ELSE 0 END) AS missing_user_id,
  SUM(CASE WHEN has_claims IS NULL THEN 1 ELSE 0 END) AS missing_has_claims,
  SUM(CASE WHEN has_violations IS NULL THEN 1 ELSE 0 END) AS missing_has_violations,
  SUM(CASE WHEN currently_insured IS NULL THEN 1 ELSE 0 END) AS missing_currently_insured,
  SUM(CASE WHEN currently_insured_length_months IS NULL THEN 1 ELSE 0 END) AS missing_insured_length, -- Can be missing insured length if not already insured
  SUM(CASE WHEN credit_range IS NULL THEN 1 ELSE 0 END) AS missing_credit_range,
  SUM(CASE WHEN age_group IS NULL THEN 1 ELSE 0 END) AS missing_age_group
FROM `data.users`;

-- 2) Check for missing values in policy_table
SELECT
  COUNT(*) AS total_policies,
  SUM(CASE WHEN user_id IS NULL THEN 1 ELSE 0 END) AS missing_user_id,
  SUM(CASE WHEN policy_id IS NULL THEN 1 ELSE 0 END) AS missing_policy_id,
  SUM(CASE WHEN carrier_id IS NULL THEN 1 ELSE 0 END) AS missing_carrier_id,
  SUM(CASE WHEN start_date IS NULL THEN 1 ELSE 0 END) AS missing_start_date,
  SUM(CASE WHEN policy_end_date IS NULL THEN 1 ELSE 0 END) AS missing_policy_end_date,
  SUM(CASE WHEN cancellation_date IS NULL THEN 1 ELSE 0 END) AS missing_cancellation_date -- Is ok to be missing cancellation dates
FROM `data.policies`;

-- 3) Check for missing values in driver_table (no missing values)
SELECT
  COUNT(*) AS total_drivers,
  SUM(CASE WHEN user_id IS NULL THEN 1 ELSE 0 END) AS missing_user_id,
  SUM(CASE WHEN driver_id IS NULL THEN 1 ELSE 0 END) AS missing_driver_id,
  SUM(CASE WHEN education IS NULL THEN 1 ELSE 0 END) AS missing_education,
  SUM(CASE WHEN occupation IS NULL THEN 1 ELSE 0 END) AS missing_occupation,
  SUM(CASE WHEN marital_status IS NULL THEN 1 ELSE 0 END) AS missing_marital_status
FROM `data.drivers`;

-- 4) Check for duplicate user_ids in user_table (no missing values)
SELECT
  user_id,
  COUNT(*) AS count
FROM `data.users`
GROUP BY user_id
HAVING COUNT(*) > 1
ORDER BY count DESC;

-- 5) Check for duplicate policy_ids in policy_table (no dupes)
SELECT
  policy_id,
  COUNT(*) AS count
FROM `data.policies`
GROUP BY policy_id
HAVING COUNT(*) > 1
ORDER BY count DESC;

-- 6) Check for duplicate driver_ids in driver_table (no dupes)
SELECT
  driver_id,
  COUNT(*) AS count
FROM `data.drivers`
GROUP BY driver_id
HAVING COUNT(*) > 1
ORDER BY count DESC;

-- 7) Check for date inconsistencies in policy_table (2553/345497 policies with cancellations after end date)
SELECT
  COUNT(*) AS total_policies,
  SUM(CASE WHEN start_date > policy_end_date THEN 1 ELSE 0 END) AS invalid_date_range,
  SUM(CASE WHEN cancellation_date IS NOT NULL AND cancellation_date < start_date THEN 1 ELSE 0 END) AS invalid_cancellation_date,
  SUM(CASE WHEN cancellation_date IS NOT NULL AND cancellation_date > policy_end_date THEN 1 ELSE 0 END) AS cancellation_after_end_date
FROM `data.policies`;

-- 8) Check for users in policy_table not in user_table (referential integrity) - Same # of users
SELECT
  COUNT(DISTINCT p.user_id) AS policy_user_count,
  COUNT(DISTINCT u.user_id) AS user_count,
  COUNT(DISTINCT p.user_id) - COUNT(DISTINCT u.user_id) AS difference
FROM `data.policies` p
LEFT JOIN `data.users` u ON p.user_id = u.user_id;

-- 9) Check for specific users in policy_table not in user_table - No users in policy table not in user table
SELECT
  DISTINCT p.user_id
FROM `data.policies` p
LEFT JOIN `data.users` u ON p.user_id = u.user_id
WHERE u.user_id IS NULL
LIMIT 10;

-- 10) Check for users in driver_table not in user_table (referential integrity) - No users in driver table not in user table
SELECT
  COUNT(DISTINCT d.user_id) AS driver_user_count,
  COUNT(DISTINCT u.user_id) AS user_count,
  COUNT(DISTINCT d.user_id) - COUNT(DISTINCT u.user_id) AS difference
FROM `data.drivers` d
LEFT JOIN `data.users` u ON d.user_id = u.user_id;

-- 11) Check for specific users in driver_table not in user_table - No users in driver table not in user table
SELECT
  DISTINCT d.user_id
FROM `data.drivers` d
LEFT JOIN `data.users` u ON d.user_id = u.user_id
WHERE u.user_id IS NULL
LIMIT 10;

-- 12) Check for distribution of categorical values in user_table (majority ~2/3 do not have a claim)
SELECT
  has_claims,
  COUNT(*) AS count
FROM `data.users`
GROUP BY has_claims
ORDER BY count DESC;

SELECT
  has_violations,
  COUNT(*) AS count
FROM `data.users`
GROUP BY has_violations
ORDER BY count DESC;

SELECT
  currently_insured,
  COUNT(*) AS count
FROM `data.users`
GROUP BY currently_insured
ORDER BY count DESC;

SELECT
  credit_range,
  COUNT(*) AS count
FROM `data.users`
GROUP BY credit_range
ORDER BY count DESC;

SELECT
  age_group,
  COUNT(*) AS count
FROM `data.users`
GROUP BY age_group
ORDER BY count DESC;

-- Check for distribution of categorical values in driver_table
SELECT
  education,
  COUNT(*) AS count
FROM `data.drivers`
GROUP BY education
ORDER BY count DESC;

SELECT
  occupation,
  COUNT(*) AS count
FROM `data.drivers`
GROUP BY occupation
ORDER BY count DESC;

SELECT
  marital_status,
  COUNT(*) AS count
FROM `data.drivers`
GROUP BY marital_status
ORDER BY count DESC;

-- Check for users with multiple drivers (expected behavior)
SELECT
  user_id,
  COUNT(DISTINCT driver_id) AS num_drivers
FROM `data.drivers`
GROUP BY user_id
ORDER BY num_drivers DESC
LIMIT 10;

-- Check for users with multiple policies
SELECT
  user_id,
  COUNT(DISTINCT policy_id) AS num_policies
FROM `data.policies`
GROUP BY user_id
ORDER BY num_policies DESC
LIMIT 100;

-- Check policy duration statistics
SELECT
  COUNT(*) AS total_policies,
  MIN(DATE_DIFF(policy_end_date, start_date, DAY)) AS min_days,
  MAX(DATE_DIFF(policy_end_date, start_date, DAY)) AS max_days,
  AVG(DATE_DIFF(policy_end_date, start_date, DAY)) AS avg_days
FROM `data.policies`;

-- Check for outliers in policy duration
SELECT
  policy_id,
  user_id,
  start_date,
  policy_end_date,
  DATE_DIFF(policy_end_date, start_date, DAY) AS duration_days
FROM `data.policies`
ORDER BY duration_days DESC
LIMIT 10;

-- Check cancellation patterns
SELECT
  COUNT(*) AS total_policies,
  SUM(CASE WHEN cancellation_date IS NOT NULL THEN 1 ELSE 0 END) AS cancelled_policies,
  ROUND(SUM(CASE WHEN cancellation_date IS NOT NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS cancellation_rate
FROM `data.policies`;

-- Missing date fields
SELECT 
  SUM(CASE WHEN start_date IS NULL THEN 1 ELSE 0 END) AS missing_start_date,
  SUM(CASE WHEN policy_end_date IS NULL THEN 1 ELSE 0 END) AS missing_policy_end_date
FROM `data.policies`;

-- Negative or zero-duration policies
SELECT *
FROM `data.policies`
WHERE DATE_DIFF(COALESCE(policy_end_date, cancellation_date), start_date, DAY) <= 0;

-- cancellation_date before start_date
SELECT *
FROM `data.policies`
WHERE cancellation_date IS NOT NULL
  AND cancellation_date < start_date;

-- Users with multiple policies
SELECT user_id, COUNT(*) AS policy_count
FROM `data.policies`
GROUP BY user_id
HAVING COUNT(*) > 1;

-- Business Questions

-- 2A
SELECT 
  COUNT(DISTINCT user_id) AS active_users
FROM `data.policies`
WHERE 
  start_date <= '2022-04-30'
  AND (
    policy_end_date > '2022-04-30'
    AND (cancellation_date IS NULL OR cancellation_date > '2022-04-30')
  );

-- 2B
WITH policy_lengths AS (
  SELECT
    policy_id,
    DATE_DIFF(policy_end_date, start_date, MONTH) AS length_months
  FROM `data.policies`
)

SELECT
  PERCENTILE_CONT(length_months, 0.5) OVER() AS median_length_months
FROM policy_lengths
LIMIT 1;

-- 2C
WITH policy_lengths AS (
  SELECT
    DATE_DIFF(COALESCE(policy_end_date, cancellation_date), start_date, MONTH) AS policy_length_months
  FROM `data.policies`
  WHERE start_date IS NOT NULL
    AND (policy_end_date IS NOT NULL OR cancellation_date IS NOT NULL)
),
length_distribution AS (
  SELECT
    policy_length_months,
    COUNT(*) AS count
  FROM policy_lengths
  GROUP BY policy_length_months
),
total_policies AS (
  SELECT SUM(count) AS total FROM length_distribution
)
SELECT
  ld.policy_length_months,
  ld.count,
  ROUND(100 * ld.count / t.total, 2) AS percentage
FROM length_distribution ld
CROSS JOIN total_policies t
ORDER BY policy_length_months;

-- 2D
-- 1. Find each user’s first policy start date
WITH first_policies AS (
  SELECT
    user_id,
    MIN(start_date) AS first_policy_start
  FROM `data.policies`
  GROUP BY user_id
),

-- 2. Keep only users with ≥31 weeks of “vintage”
eligible_users AS (
  SELECT
    user_id,
    first_policy_start,
    DATE_ADD(first_policy_start, INTERVAL 31 WEEK) AS week_31_date
  FROM first_policies
  WHERE first_policy_start <= DATE_SUB(CURRENT_DATE(), INTERVAL 31 WEEK)
),

-- 3. For each eligible user, check if they had any active policy at week 31
retention_flags AS (
  SELECT
    e.user_id,
    MAX(
      CASE
        WHEN p.start_date <= e.week_31_date
          AND (p.policy_end_date IS NULL OR p.policy_end_date > e.week_31_date)
          AND (p.cancellation_date IS NULL OR p.cancellation_date > e.week_31_date)
        THEN 1 ELSE 0
      END
    ) AS retained_flag
  FROM eligible_users e
  JOIN `data.policies` p
    ON e.user_id = p.user_id
  GROUP BY e.user_id
)

-- 4. Compute the overall retention rate
SELECT
  ROUND(100.0 * SUM(retained_flag) / COUNT(user_id), 2) AS retention_rate_7_months
FROM retention_flags;


-- Cohort Table

-- Get each user’s first policy start date (week 0)
WITH first_policies AS (
  SELECT
    user_id,
    MIN(start_date) AS first_policy_start,
    DATE_TRUNC(MIN(start_date), WEEK(MONDAY)) AS cohort_week_start
  FROM `data.policies`
  GROUP BY user_id
),

-- Create a weekly calendar of up to 12 weeks per user from week 0 (in lieu of not having a dim_date table)
user_weeks AS (
  SELECT
    fp.user_id,
    fp.first_policy_start,
    DATE_TRUNC(fp.first_policy_start, WEEK(MONDAY)) AS cohort_week_start,
    GENERATE_ARRAY(0, 11) AS week_offsets
  FROM first_policies fp
),

-- Unnest to create one row per user per week
unnested_weeks AS (
  SELECT
    uw.user_id,
    uw.cohort_week_start,
    week_offset,
    DATE_ADD(uw.first_policy_start, INTERVAL week_offset WEEK) AS week_end_date
  FROM user_weeks uw, UNNEST(week_offsets) AS week_offset
),

-- Check if user was active at the end of each week
user_activity AS (
  SELECT
    uw.user_id,
    uw.cohort_week_start,
    uw.week_offset,
    MAX(
      CASE
        WHEN p.start_date <= uw.week_end_date
         AND (p.cancellation_date IS NULL OR p.cancellation_date > uw.week_end_date)
         AND (p.policy_end_date IS NULL OR p.policy_end_date > uw.week_end_date)
        THEN 1 ELSE 0
      END
    ) AS is_active
  FROM unnested_weeks uw
  JOIN `data.policies` p ON uw.user_id = p.user_id
  GROUP BY uw.user_id, uw.cohort_week_start, uw.week_offset
),

-- Calculate cohort sizes (week 0 user counts)
cohort_sizes AS (
  SELECT
    cohort_week_start,
    COUNT(DISTINCT user_id) AS cohort_size
  FROM first_policies
  GROUP BY cohort_week_start
),

-- Final pivot table: retention rate per cohort per week
retention_rates AS (
  SELECT
    ua.cohort_week_start,
    ua.week_offset,
    COUNTIF(ua.is_active = 1) AS retained_users,
    cs.cohort_size,
    ROUND(100 * COUNTIF(ua.is_active = 1) / cs.cohort_size, 2) AS retention_rate
  FROM user_activity ua
  JOIN cohort_sizes cs USING (cohort_week_start)
  GROUP BY ua.cohort_week_start, ua.week_offset, cs.cohort_size
)

-- Pivot weeks as columns (for 12 weeks)
SELECT
  FORMAT_DATE('%Y-%m-%d', cohort_week_start) AS cohort_week_start,
  MAX(IF(week_offset = 0, retention_rate, NULL)) AS week_0,
  MAX(IF(week_offset = 1, retention_rate, NULL)) AS week_1,
  MAX(IF(week_offset = 2, retention_rate, NULL)) AS week_2,
  MAX(IF(week_offset = 3, retention_rate, NULL)) AS week_3,
  MAX(IF(week_offset = 4, retention_rate, NULL)) AS week_4,
  MAX(IF(week_offset = 5, retention_rate, NULL)) AS week_5,
  MAX(IF(week_offset = 6, retention_rate, NULL)) AS week_6,
  MAX(IF(week_offset = 7, retention_rate, NULL)) AS week_7,
  MAX(IF(week_offset = 8, retention_rate, NULL)) AS week_8,
  MAX(IF(week_offset = 9, retention_rate, NULL)) AS week_9,
  MAX(IF(week_offset = 10, retention_rate, NULL)) AS week_10,
  MAX(IF(week_offset = 11, retention_rate, NULL)) AS week_11
FROM retention_rates
GROUP BY cohort_week_start
ORDER BY cohort_week_start
LIMIT 52;  

-- Annual Retention Table

-- Get each user’s first policy start date (week 0)
WITH first_policies AS (
  SELECT
    user_id,
    MIN(start_date) AS first_policy_start,
    DATE_TRUNC(MIN(start_date), WEEK(MONDAY)) AS cohort_week_start
  FROM `data.policies`
  GROUP BY user_id
),

-- Generate 52 weeks from each user's first policy date (dim_date)
user_weeks AS (
  SELECT
    fp.user_id,
    fp.first_policy_start,
    fp.cohort_week_start,
    GENERATE_ARRAY(0, 51) AS week_offsets
  FROM first_policies fp
),

-- Expand user-weeks
unnested_weeks AS (
  SELECT
    uw.user_id,
    uw.cohort_week_start,
    week_offset,
    DATE_ADD(uw.first_policy_start, INTERVAL week_offset WEEK) AS week_end_date
  FROM user_weeks uw, UNNEST(week_offsets) AS week_offset
),

-- Check whether user was active at end of each week
user_activity AS (
  SELECT
    uw.user_id,
    uw.cohort_week_start,
    uw.week_offset,
    MAX(
      CASE
        WHEN p.start_date <= uw.week_end_date
         AND (p.policy_end_date IS NULL OR p.policy_end_date > uw.week_end_date)
         AND (p.cancellation_date IS NULL OR p.cancellation_date > uw.week_end_date)
        THEN 1 ELSE 0
      END
    ) AS is_active
  FROM unnested_weeks uw
  JOIN `data.policies` p ON uw.user_id = p.user_id
  GROUP BY uw.user_id, uw.cohort_week_start, uw.week_offset
),

-- Cohort sizes
cohort_sizes AS (
  SELECT
    cohort_week_start,
    COUNT(DISTINCT user_id) AS cohort_size
  FROM first_policies
  GROUP BY cohort_week_start
),

-- Retention rates
retention_rates AS (
  SELECT
    ua.cohort_week_start,
    ua.week_offset,
    COUNTIF(ua.is_active = 1) AS retained_users,
    cs.cohort_size,
    ROUND(100 * COUNTIF(ua.is_active = 1) / cs.cohort_size, 2) AS retention_rate
  FROM user_activity ua
  JOIN cohort_sizes cs USING (cohort_week_start)
  GROUP BY ua.cohort_week_start, ua.week_offset, cs.cohort_size
)

-- Pivot retention rates across 52 weeks
SELECT
  FORMAT_DATE('%Y-%m-%d', cohort_week_start) AS cohort_week_start,
  MAX(IF(week_offset = 0,  retention_rate, NULL)) AS week_0,
  MAX(IF(week_offset = 1,  retention_rate, NULL)) AS week_1,
  MAX(IF(week_offset = 2,  retention_rate, NULL)) AS week_2,
  MAX(IF(week_offset = 3,  retention_rate, NULL)) AS week_3,
  MAX(IF(week_offset = 4,  retention_rate, NULL)) AS week_4,
  MAX(IF(week_offset = 5,  retention_rate, NULL)) AS week_5,
  MAX(IF(week_offset = 6,  retention_rate, NULL)) AS week_6,
  MAX(IF(week_offset = 7,  retention_rate, NULL)) AS week_7,
  MAX(IF(week_offset = 8,  retention_rate, NULL)) AS week_8,
  MAX(IF(week_offset = 9,  retention_rate, NULL)) AS week_9,
  MAX(IF(week_offset = 10, retention_rate, NULL)) AS week_10,
  MAX(IF(week_offset = 11, retention_rate, NULL)) AS week_11,
  MAX(IF(week_offset = 12, retention_rate, NULL)) AS week_12,
  MAX(IF(week_offset = 13, retention_rate, NULL)) AS week_13,
  MAX(IF(week_offset = 14, retention_rate, NULL)) AS week_14,
  MAX(IF(week_offset = 15, retention_rate, NULL)) AS week_15,
  MAX(IF(week_offset = 16, retention_rate, NULL)) AS week_16,
  MAX(IF(week_offset = 17, retention_rate, NULL)) AS week_17,
  MAX(IF(week_offset = 18, retention_rate, NULL)) AS week_18,
  MAX(IF(week_offset = 19, retention_rate, NULL)) AS week_19,
  MAX(IF(week_offset = 20, retention_rate, NULL)) AS week_20,
  MAX(IF(week_offset = 21, retention_rate, NULL)) AS week_21,
  MAX(IF(week_offset = 22, retention_rate, NULL)) AS week_22,
  MAX(IF(week_offset = 23, retention_rate, NULL)) AS week_23,
  MAX(IF(week_offset = 24, retention_rate, NULL)) AS week_24,
  MAX(IF(week_offset = 25, retention_rate, NULL)) AS week_25,
  MAX(IF(week_offset = 26, retention_rate, NULL)) AS week_26,
  MAX(IF(week_offset = 27, retention_rate, NULL)) AS week_27,
  MAX(IF(week_offset = 28, retention_rate, NULL)) AS week_28,
  MAX(IF(week_offset = 29, retention_rate, NULL)) AS week_29,
  MAX(IF(week_offset = 30, retention_rate, NULL)) AS week_30,
  MAX(IF(week_offset = 31, retention_rate, NULL)) AS week_31,
  MAX(IF(week_offset = 32, retention_rate, NULL)) AS week_32,
  MAX(IF(week_offset = 33, retention_rate, NULL)) AS week_33,
  MAX(IF(week_offset = 34, retention_rate, NULL)) AS week_34,
  MAX(IF(week_offset = 35, retention_rate, NULL)) AS week_35,
  MAX(IF(week_offset = 36, retention_rate, NULL)) AS week_36,
  MAX(IF(week_offset = 37, retention_rate, NULL)) AS week_37,
  MAX(IF(week_offset = 38, retention_rate, NULL)) AS week_38,
  MAX(IF(week_offset = 39, retention_rate, NULL)) AS week_39,
  MAX(IF(week_offset = 40, retention_rate, NULL)) AS week_40,
  MAX(IF(week_offset = 41, retention_rate, NULL)) AS week_41,
  MAX(IF(week_offset = 42, retention_rate, NULL)) AS week_42,
  MAX(IF(week_offset = 43, retention_rate, NULL)) AS week_43,
  MAX(IF(week_offset = 44, retention_rate, NULL)) AS week_44,
  MAX(IF(week_offset = 45, retention_rate, NULL)) AS week_45,
  MAX(IF(week_offset = 46, retention_rate, NULL)) AS week_46,
  MAX(IF(week_offset = 47, retention_rate, NULL)) AS week_47,
  MAX(IF(week_offset = 48, retention_rate, NULL)) AS week_48,
  MAX(IF(week_offset = 49, retention_rate, NULL)) AS week_49,
  MAX(IF(week_offset = 50, retention_rate, NULL)) AS week_50,
  MAX(IF(week_offset = 51, retention_rate, NULL)) AS week_51
FROM retention_rates
GROUP BY cohort_week_start
ORDER BY cohort_week_start;

-- Retention Analysis

WITH first_policies AS (
  SELECT
    user_id,
    MIN(start_date) AS first_policy_start
  FROM `data.policies`
  GROUP BY user_id
),
eligible_users AS (
  SELECT
    user_id,
    first_policy_start,
    DATE_ADD(first_policy_start, INTERVAL 31 WEEK) AS week_31_date
  FROM first_policies
  WHERE first_policy_start <= DATE_SUB(CURRENT_DATE(), INTERVAL 31 WEEK)
),
retention_flags AS (
  SELECT
    e.user_id,
    MAX(
      CASE
        WHEN p.start_date <= e.week_31_date
         AND (p.policy_end_date IS NULL OR p.policy_end_date > e.week_31_date)
         AND (p.cancellation_date IS NULL OR p.cancellation_date > e.week_31_date)
        THEN 1 ELSE 0
      END
    ) AS retained_flag
  FROM eligible_users e
  JOIN `data.policies` p ON e.user_id = p.user_id
  GROUP BY e.user_id
)
SELECT
  r.user_id,
  r.retained_flag,
  u.age_group,
  u.credit_range,
  u.has_claims,
  u.has_violations,
  u.currently_insured,
  d.marital_status,
  d.education,
  d.occupation
FROM retention_flags r
LEFT JOIN `data.users` u ON r.user_id = u.user_id
LEFT JOIN `data.drivers` d ON r.user_id = d.user_id;
