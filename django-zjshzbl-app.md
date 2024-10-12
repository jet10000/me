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
npm install -D tailwindcss postcss autoprefixer
npm install -D postcss-cli
npm install -D @tailwindcss/typography @tailwindcss/forms

npm install -D postcss-import  # 安装postcss时，node_modules就有了，只需要在postcss.config.js的plugins加入便可。
```

```
npx tailwindcss init -p
```

tailwind.config.js

```javascript
module.exports = {
    content: [
        '../templates/**/*.html'
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
touch main.pcss
```

main.pcss

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
