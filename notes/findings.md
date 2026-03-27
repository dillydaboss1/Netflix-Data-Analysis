# Netflix Engagement Analysis — Findings

---

## 1. Data Validation

The `watch_history` table contains 105,000 records.  
A join between `watch_history` and `users` produces 108,174 records.

This discrepancy indicates duplicate `user_id` values in the `users` table. As a result, user-level metrics may be inflated and should be interpreted with caution.

---

## 2. User Behaviour

User activity is not a reliable indicator of engagement.

Example:
- `user_02416` → high activity, moderate completion
- `user_02666` → lower activity, higher completion

Frequent usage does not imply meaningful consumption. Some users browse content without completing it, therefore engagement should not be measured using session volume alone.

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

### 4.2 Content Type

| Content Type     | Total Views | Avg Completion |
|------------------|------------|----------------|
| Movie            | 48110      | 50.06          |
| TV Series        | 27947      | 49.62          |
| Documentary      | 14962      | 50.20          |
| Stand-up Comedy  | 12481      | 50.08          |
| Limited Series   | 5737       | 49.94          |

Completion rates are consistent across all content types.

Movies generate the highest number of views, indicating stronger user attraction, but they do not improve engagement.

---

### 4.3 Duration

| Duration | Total Views | Avg Completion |
|----------|------------|----------------|
| Medium   | 54725      | 50.02          |
| Long     | 18023      | 49.97          |
| Short    | 36489      | 49.87          |

Completion rates remain stable across all duration categories.

Medium-length content generates the highest number of views, indicating user preference without affecting engagement.

---

### 4.4 Subscription Plan

| Plan      | Total Views | Avg Completion |
|-----------|------------|----------------|
| Premium+  | 10825      | 50.29          |
| Standard  | 38106      | 50.27          |
| Basic     | 21306      | 49.85          |
| Premium   | 37937      | 49.57          |

Completion rates are consistent across all subscription tiers.

Subscription level does not significantly influence engagement.

---

## 5. Final Conclusion

Engagement remains stable across all tested variables, including genre, content type, duration, and subscription plan.

Content characteristics are not primary drivers of engagement. User behaviour is a more significant factor.

---

## 6. Business Implications

Improving engagement should focus on:
- personalised recommendations
- improved content discovery
- user experience optimisation

Content strategy should prioritise high-demand categories to increase activity, but changes in content characteristics alone are unlikely to improve engagement.
