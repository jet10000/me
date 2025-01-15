
```
#!/bin/bash

# 提示用户输入
echo "project name："
read name

uv init
uv add django
uv run django-admin startproject $name .
uv run python manage.py migrate

rm -rf .git
rm .gitignore
rm README.md
rm hello.py

static_src_folder_name="${name}_static"
mkdir $static_src_folder_name
cd $static_src_folder_name
npm init -y
npm install -D tailwindcss postcss autoprefixer
npm install -D postcss-cli
npm install -D @tailwindcss/typography @tailwindcss/forms
npx tailwindcss init -p
touch main.pcss
echo """
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
"""
cd ..



```
