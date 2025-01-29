Luisa Vue3 Figma prototype POC
==============================

A proof of concept experiment of using [Luisa][] to convert [Figma][] designs
into functional prototypes. Bootstrapped via the [luisa-vue3-starter][] git
template by [@KlausSchaefers][].

Usage
-----
```
$ make .env
$ vim .env
  # Set VUE_APP_FIGMA_FILE to the file name.
  # This is the path component after `https://www.figma.com/design/`
  # Set VUE_APP_FIGMA_ACCESS_KEY to your read-only API key.
  # WARNING: the API key will be available in the browser at runtime!
  # :wq
$ make start tail
  # Wait for initial compile to finish
$ open http://localhost:8080/
```

[Luisa]: https://luisa.cloud/help.html#/
[Figma]: https://www.figma.com/
[luisa-vue3-starter]: https://github.com/KlausSchaefers/luisa-vue3-starter
[@KlausSchaefers]: https://github.com/KlausSchaefers
