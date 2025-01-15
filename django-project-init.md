
```
#!/bin/bash

# 提示用户输入
echo "project name："
read name

pipenv install django
pipenv run django-admin startproject $name .
pipenv run python manage.py migrate

#rm -rf .git
#rm .gitignore
#rm README.md
#rm hello.py

static_src_folder_name="${name}_static"
mkdir $static_src_folder_name
cd $static_src_folder_name
npm init -y
npm install -D tailwindcss postcss autoprefixer
npm install -D postcss-cli
npm install -D @tailwindcss/typography @tailwindcss/forms
npx tailwindcss init -p

# 覆盖tailwind.config.js
cat << EOF > tailwind.config.js
/** @type {import('tailwindcss').Config} */
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
EOF

# 覆盖postcss.config.js
cat << EOF > postcss.config.js
module.exports = {
    plugins: {
        'postcss-import': {},
        'tailwindcss/nesting': {},
        tailwindcss: {},
        autoprefixer: {},
    },
}
EOF

# 初始化main.pcss
cat << EOF > main.pcss
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
EOF

cd ..

rm new.sh


```
