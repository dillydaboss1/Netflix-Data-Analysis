# Netflix Engagement Analysis — Findings

---

## 1. Data Validation

The `watch_history` table contains 105,000 records.  
A join between `watch_history` and `users` produces 108,174 records.

This discrepancy indicates duplicate `user_id` values in the `users` table. The impact was assessed and found to be minimal relative to the overall dataset size, and does not materially affect the conclusions.

---

## 2. User Behaviour

Initial observations suggested that user activity may not directly correlate with engagement quality.

This was later confirmed through aggregate analysis, which showed that users with higher activity levels do not demonstrate higher completion rates or longer watch durations.

This indicates that frequent usage reflects increased platform interaction rather than deeper content engagement.

---

## 3. User Segmentation

### 3.1 Distribution Overview

| Activity Level | Engagement Quality | User Count |
|---------------|------------------|-----------|
| Medium        | Medium Completion | 5002      |
| Low           | Medium Completion | 2994      |
| Medium        | Low Completion    | 803       |
| Low           | Low Completion    | 852       |
| Medium        | High Completion   | 77        |
| High          | Medium Completion | 72        |
| High          | Low Completion    | 5         |
| High          | High Completion   | 1         |

---

### 3.2 Core Segment

The largest group consists of users with medium activity and medium completion. These users engage consistently but do not demonstrate strong viewing commitment.

---

### 3.3 Opportunity Segment

A significant portion of users show low activity but medium completion.

These users engage meaningfully when active but do not use the platform frequently. This group represents a clear opportunity for increased engagement through improved recommendations or content discovery.

---

## 4. Content Analysis

### 4.1 Genre

Completion rates remain within a narrow range (49–50%) across all genres.

This indicates that genre does not influence engagement depth. However, view counts vary significantly, meaning genre impacts demand rather than engagement.

Example:
- Adventure → highest views
- Action → strong balance of demand and completion

Action content is the strongest candidate for promotion as it increases activity without reducing engagement.

---

### 4.2 Content Type, Duration, and Subscription

Completion rates remain consistent (~49–50%) across all content types, durations, and subscription plans.

While view counts vary (e.g. movies and medium-length content generate higher activity), these factors do not influence engagement depth.

This reinforces the broader finding that content characteristics affect demand, but not engagement quality.

---

## 5. Activity vs Engagement Analysis

User activity levels were analysed to determine whether higher activity leads to stronger engagement.

While session frequency increases significantly across activity levels, average watch duration and completion rates remain consistent:

- High Activity → avg_progress: 49.64%
- Medium Activity → avg_progress: 50.14%
- Low Activity → avg_progress: 49.65%

Similarly, average watch time per session remains stable (~65 minutes) across all groups.

This indicates that higher activity does not translate to stronger engagement, but instead reflects increased usage frequency.

### Key Insight
User activity level is not a meaningful driver of engagement quality. Users who interact more frequently do not demonstrate higher completion rates or deeper content consumption.

### Limitation
Completion rates remain tightly clustered around ~50% across all segments, suggesting potential limitations in the dataset or metric sensitivity. This may reduce the ability to detect more nuanced behavioural differences.

---

## 6. Churn / Risk Segmentation

Users were classified into risk categories based on average completion rates.

Results show that high-risk users are almost entirely concentrated in low and medium activity groups, with very few high-activity users falling into this category.

However, high-activity users represent a very small portion of the dataset, limiting the strength of conclusions regarding their behaviour.

The largest segment of users falls into the medium-risk category, particularly within the medium activity group. This suggests that moderately active users represent a broad and heterogeneous group rather than a clearly defined behavioural segment.

### Limitations

The dataset exhibits low variance in key engagement metrics, with completion rates consistently clustered around ~50%. This limits the ability to detect strong relationships between user behaviour, content characteristics, and engagement outcomes.

This suggests the dataset may lack sufficient variability to capture more nuanced engagement patterns.

---

## 7. Final Conclusion

Engagement remains highly stable (~49–50%) across all tested variables, including genre, content type, duration, subscription plan, and activity level.

Neither content characteristics nor user activity meaningfully explain differences in engagement.

The analysis suggests that while behavioural differences exist, the dataset lacks sufficient variance in key metrics to identify strong drivers of engagement or churn risk.

---

## 8. Business Implications

Improving engagement is unlikely to be achieved through content characteristics alone.

Focus should be placed on:
- personalised recommendations  
- improved content discovery  
- user experience optimisation  

Content strategy should prioritise high-demand categories to increase activity, while engagement improvements should target how users interact with content rather than what content is offered.
