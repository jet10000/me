
```
#!/bin/bash

# 提示用户输入
echo "project name："
read name

pipenv install django
pipenv run django-admin startproject $name .
pipenv run python manage.py migrate

mkdir static
mkdir static_root
mkdir templates

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

# 创建Taskfile.yml
cat << EOF > main.pcss
version: '3'

# task -p task1 task2

# TF_CPP_MIN_LOG_LEVEL=2
# https://stackoverflow.com/questions/52243227/tensorflow-js-how-to-avoid-your-cpu-supports-instructions-avx-avx2

#cmds:
#  - task -p django -w tailwind
#
#django:
#  sources:
#    - templates/*.html
#  cmds:
#    - pipenv run python manage.py runserver 0.0.0.0:8000

tasks:

  dev:
    cmds:
      - task -p django tailwind

  django:
    cmds:
      - pipenv run python manage.py runserver

  tailwind:
    dir: ${name}_static
    cmds:
      - npx postcss main.pcss -o ../static/css/dist/main.css --watch --verbose
EOF

rm new.sh


```
