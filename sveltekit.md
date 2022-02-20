### Sveltekit搭配tailwindcss和daisyui并支持pcss嵌套以及@tailwindcss/typography

https://tailwindcss.com/docs/guides/sveltekit

https://daisyui.com/docs/install/

* 然后修改app.css为app.pcss
* 支持nesting https://tailwindcss.com/docs/using-with-preprocessors#nesting
* `npm install -D postcss-import` https://tailwindcss.com/docs/using-with-preprocessors#build-time-imports

```css
@tailwind base;
@layer base {
    body {
        @apply antialiased text-gray-700;

    }
}
@tailwind components;
@layer components {
    .prose {
        @apply text-gray-700;

        h1, h2, h3, h4 {
            @apply font-extralight;
        }

        a {
            @apply font-normal no-underline;
        }

        a:hover {
            @apply text-pink-500;
        }
    }

    .tag {
        @apply text-sm mr-2 text-green-500;
    }
}
@tailwind utilities;

```

ok, done!
