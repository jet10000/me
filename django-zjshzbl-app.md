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
npm install -D tailwindcss postcss postcss-cli postcss-import autoprefixer @tailwindcss/typography @tailwindcss/forms
```

```
npx tailwindcss init -p
```

tailwind.config.js

```javascript
module.exports = {
    content: [
        '../../templates/**/*.html'
    ],
    theme: {
        extend: {},
    },
    plugins: [
        require('@tailwindcss/typography'),
        require('@tailwindcss/forms'),
    ],
}
```

postcss.config.js

```js
module.exports = {
    plugins: [
        require('postcss-import'),
        require('tailwindcss/nesting'),
        require('tailwindcss'),
        require('autoprefixer'),
    ]
}

```

```

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
