---
title: SQL Basics
tags:
  - sql
  - database
date: 2026-10-30
---

# SQL Basics

> [!info] تعريف
> **SQL** (Structured Query Language) هي اللغة اللي بنتكلم بيها مع الـ Relational Databases.

## 1. أنواع الأوامر

| النوع | الاسم | أمثلة |
| --- | --- | --- |
| DDL | Data Definition | `CREATE`, `ALTER`, `DROP` |
| DML | Data Manipulation | `INSERT`, `UPDATE`, `DELETE` |
| DQL | Data Query | `SELECT` |
| DCL | Data Control | `GRANT`, `REVOKE` |

## 2. إنشاء جدول

```sql
CREATE TABLE users (
    id         BIGINT PRIMARY KEY,
    name       VARCHAR(100) NOT NULL,
    email      VARCHAR(255) UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

## 3. الاستعلام الأساسي

```sql
SELECT name, email
FROM users
WHERE created_at >= '2026-01-01'
ORDER BY name
LIMIT 10;
```

> [!tip] ترتيب التنفيذ
> `FROM` ← `WHERE` ← `GROUP BY` ← `HAVING` ← `SELECT` ← `ORDER BY` ← `LIMIT`

## 4. الخلاصة

- الـ **Primary Key** بيعرّف كل صف بشكل فريد.
- `WHERE` بيفلتر الصفوف، و `HAVING` بيفلتر المجموعات.
- كمّل مع [[SQL/Joins|Joins]].
