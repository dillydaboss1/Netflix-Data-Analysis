# Netflix Engagement Analysis

## Project Overview
This project analyses a Netflix-style streaming dataset using SQL to understand what drives user engagement.

The analysis focuses on three questions:
1. What does an engaged user look like?
2. What behaviours indicate lower engagement?
3. What content characteristics drive stronger engagement?

## Dataset
The dataset includes user, content, and watch history tables from a synthetic streaming platform environment.

Main tables used:
- `users`
- `movies`
- `watch_history`

## Method
The analysis was conducted in SQLite using SQL queries to:
- validate row counts and joins
- build user-level engagement metrics
- segment users by activity and completion behaviour
- compare engagement across genre, content type, duration, and subscription plan

## Core Finding
Engagement remained stable within a narrow range of approximately 49–50% across all tested variables, including genre, content type, duration, and subscription plan.

This indicates that content characteristics and user segmentation are not meaningful drivers of engagement or retention.

## Key Supporting Evidence
- `watch_history` contained 105,000 rows
- joining `watch_history` to `users` produced 108,174 rows, indicating duplicate `user_id` records in the `users` table
- the largest user segment was Medium Activity + Medium Completion (5,002 users)
- genre completion ranged only from ~49.0% to ~50.5%
- content type completion ranged from ~49.6% to ~50.2%
- duration completion ranged from ~49.8% to ~50.0%
- subscription completion ranged from ~49.5% to ~50.3%

## Key Insight
Engagement is not meaningfully influenced by content characteristics. Instead, user behaviour appears to be the stronger driver.

High activity does not always correspond to strong engagement, as some high-frequency users still show relatively low completion rates.

## Business Recommendation
Retention strategy should focus on personalised recommendations, content discovery, and user experience improvements rather than content format changes.

Growth strategy should prioritise high-demand categories such as Adventure, Action, and Movies, since these increase activity without reducing engagement.

## Tools Used
- SQLite
- DB Browser for SQLite
- SQL

## Repository Structure
- `sql/analysis_queries.sql` -> core SQL queries used in the project
- `README.md` -> project summary and findings
- `data/` -> dataset files used for analysis

## Next Steps
- deduplicate user-level records where needed
- extend the project into churn-risk segmentation
- add visualisations in Python
