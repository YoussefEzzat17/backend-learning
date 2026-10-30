---
title: SQL Joins
tags:
  - sql
  - joins
date: 2026-10-30
---

# SQL Joins

الـ Join بيربط جدولين على أساس عمود مشترك (غالبًا Foreign Key). راجع الأساسيات الأول: [[SQL/SQL Basics|SQL Basics]].

## 1. الأنواع

| النوع | بيرجّع إيه |
| --- | --- |
| `INNER JOIN` | الصفوف اللي ليها match في الجدولين |
| `LEFT JOIN` | كل صفوف الشمال + الـ match من اليمين (أو `NULL`) |
| `RIGHT JOIN` | عكس `LEFT JOIN` |
| `FULL JOIN` | كل الصفوف من الجدولين |

## 2. مثال

```sql
SELECT u.name, o.total
FROM users u
INNER JOIN orders o ON o.user_id = u.id;
```

```sql
-- كل اليوزرز حتى اللي معندهمش orders
SELECT u.name, o.total
FROM users u
LEFT JOIN orders o ON o.user_id = u.id;
```

> [!warning] انتبه
> لو نسيت شرط `ON` هتاخد Cartesian Product (كل صف × كل صف).

## 3. الخلاصة

- ابدأ دايمًا بـ `INNER JOIN` إلا لو محتاج الصفوف اللي مفيهاش match.
- حط **Index** على أعمدة الـ Join عشان الأداء.
