
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



```
