# Backend Learning

ملاحظاتي وأنا بتعلم Backend Engineering (Java / SQL / Spring Boot)، متكتوبة في **Obsidian** ومنشورة كموقع باستخدام **Quartz** على GitHub Pages.

🌐 **الموقع:** https://youssefezzat17.github.io/backend-learning/

## الهيكل

```
.
├── Backend Engineering/      # Obsidian Vault
│   └── 99 - Published/       # الملاحظات المنشورة بس (الباقي خاص ومش بيترفع)
├── quartz/                   # Quartz: بيحوّل الملاحظات لموقع static
│   └── content -> ../Backend Engineering/99 - Published   (symlink)
├── scripts/sync.sh           # commit + push تلقائي للتعديلات
└── .github/workflows/        # نشر الموقع على GitHub Pages
```

## إزاي بيشتغل

1. بكتب أو أعدّل ملاحظة في `99 - Published` من Obsidian.
2. `scripts/sync.sh` بيعمل commit و push تلقائي.
3. GitHub Actions بيبني Quartz وينشر الموقع.

## تشغيل الموقع محليًا

محتاج Node 22+ و npm 10.9.2+.

```bash
cd quartz
npm install
npx quartz plugin install
npx quartz build --serve
```

وبعدها افتح http://localhost:8080

## ملاحظات

- فولدرات الملاحظات الخاصة (`02 - Java` و `03 - SQL` و `06 - Spring Boot`) مستبعدة بـ `.gitignore`.
- Quartz: https://quartz.jzhao.xyz
