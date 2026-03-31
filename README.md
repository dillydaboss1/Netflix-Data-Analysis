# Netflix Engagement Analysis

## Overview
SQL-based analysis of a streaming platform dataset to identify what drives user engagement.

---

## Key Finding
Engagement remains highly stable (~49–50%) across all tested variables, including genre, content type, duration, subscription plan, and activity level.

Neither content characteristics nor user activity meaningfully explain differences in engagement.

---

## Key Insight
User behaviour patterns exist, but higher activity does not correspond to stronger engagement. Users who interact more frequently do not demonstrate higher completion rates or longer watch durations.

This suggests that increased activity reflects usage frequency rather than deeper engagement.

---

## Limitations
The dataset exhibits low variance in key engagement metrics, with completion rates consistently clustered around ~50%. This limits the ability to identify strong drivers of engagement or churn risk.

As a result, conclusions are constrained by the structure of the dataset rather than a lack of analysis.

---

## Business Implications
Improving engagement is unlikely to be achieved through content characteristics alone.

Focus should be placed on:
- personalised recommendations  
- improved content discovery  
- user experience optimisation  

Content strategy should prioritise high-demand categories to increase activity, while engagement improvements should target how users interact with content rather than what content is offered.

---

## Supporting Evidence
- `watch_history`: 105,000 rows  
- Joined dataset: 108,174 rows -> indicates duplicate `user_id` records  
- Data quality checks identified duplicate user records; however, their impact was assessed and found to be negligible relative to the overall dataset size.
- Largest segment: Medium Activity + Medium Completion (5,002 users)  
- Completion rates across all variables remain within ~49–50%

---

## Method
Analysis performed using SQL (SQLite) to:
- validate data integrity  
- calculate user engagement metrics  
- segment users by activity and completion  
- compare engagement across content and subscription variables  

---


## Dataset
Tables used:
- `users`
- `movies`
- `watch_history`

---

## Repository Structure
- `sql/analysis_queries.sql` -> SQL queries used in analysis  
- `notes/findings.md` -> detailed findings  
- `data/` -> dataset files  

---

## Tools
- SQL (SQLite)
- DB Browser for SQLite

---

## Next Steps
- resolve duplicate user records  
- extend analysis into churn prediction  
- add visualisations using Python  
