# Netflix Engagement Analysis

## Overview
SQL-based analysis of a streaming platform dataset to identify what drives user engagement.

---

## Key Finding
Engagement remains highly stable (~49–50%) across all tested variables, including:
- genre
- content type
- duration
- subscription plan

This indicates that content characteristics are not primary drivers of engagement.

---

## Key Insight
User behaviour is a stronger signal than content features.

High activity does not guarantee high engagement. Some users interact frequently but do not complete content, indicating passive consumption rather than meaningful engagement.

---

## Business Implications
Improving engagement should focus on:
- personalised recommendations  
- content discovery  
- overall user experience  

Content strategy should prioritise high-demand categories (e.g. Action, Adventure) to increase activity, but changes in content characteristics alone are unlikely to improve engagement.

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
