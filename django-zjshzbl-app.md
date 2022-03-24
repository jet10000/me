```
mkdir django-zjshzbl-app
cd django-zjshzbl-app
pipenv install django
pipenv run django-admin startproject zjshzbl .
pipenv run python manage.py runserver
```

```
django-project-app
  - docs(health)
  - toc(rootfs)
类似于mkdocs，rootfs用来管理toc，health相当于docs
```


### tailwind

https://tailwindcss.com/docs/installation/using-postcss

https://tailwindcss.com/docs/typography-plugin

https://tailwindcss.com/docs/typography-plugin#element-modifiers

https://www.themes.dev/blog/typographic-defaults-in-tailwind-css/

```
npm install -D tailwindcss postcss postcss-cli autoprefixer

@tailwind base;
@tailwind components;
@tailwind utilities;

@layer base {
    body {
        @apply antialiased;
        @apply bg-gradient-to-bl from-lime-200 via-yellow-50 to-lime-50;
    }
}
@layer components {
}
```
