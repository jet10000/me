```
nano -w new.sh
bash ./new.sh
```


```
#!/bin/bash

# 提示用户输入
echo "project name："
read name

pipenv install django
pipenv run django-admin startproject $name .
pipenv run python manage.py migrate

# 创建静态文件目录
mkdir static
mkdir static_root
# 注意向settings.py追加文本行使用>>，完全替代使用>
cat << EOF >> $name/settings.py

STATICFILES_DIRS = [
    BASE_DIR / "static",
]
STATIC_ROOT = BASE_DIR / 'static_root'
EOF

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

# 安装preline
npm install preline
cp ./node_modules/preline/dist/preline.js ../static/js/preline.js

# 覆盖tailwind.config.js
cat << EOF > tailwind.config.js
/** @type {import('tailwindcss').Config} */
module.exports = {
    content: [
        '../templates/**/*.html',
        'node_modules/preline/dist/*.js' // preline
    ],
    theme: {
        extend: {},
    },
    plugins: [
        require('@tailwindcss/typography'),
        require('@tailwindcss/forms'),
        require('preline/plugin') // preline
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
    :root {
        font-family: "Ubuntu", -apple-system, BlinkMacSystemFont, Helvetica, Arial, sans-serif
    }

    body {
        @apply antialiased min-h-screen text-gray-700;
        @apply bg-gradient-to-bl from-emerald-400 via-yellow-50 to-emerald-200;
    }
}

@layer components {
}
EOF

# 返回项目根目录
cd ..

# 创建模版
# sed在mac上的用法参考 https://qiita.com/ponsuke0531/items/be8b4a3c5e19676f9691
mkdir templates
sed -i '' "s|'DIRS': \[\]|'DIRS': \['templates'\]|g" $name/settings.py
cat << EOF > templates/base.html
{% load static %}
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name='viewport' content='width=device-width initial-scale=1.0'>
    <title>{% block title %}Title{% endblock %}</title>
    <link rel="stylesheet" href="{% static 'css/dist/main.css' %}?dev={% now "U" %}">
    <script src="{% static 'js/preline.js' %}"></script>
</head>
<body>
{% block header %}{% endblock %}

{% block main %}{% endblock %}

{% block footer %}{% endblock %}
</body>
</html>
EOF

# 创建Taskfile.yml
cat << EOF > Taskfile.yml
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
