# Updating Press Items

## Item "template"

```yaml
- title:
    de: 'Deutscher Titel'
    en: 'English title (if exists)'
  author: (e.g. Anna Biselli)
  source: (e.g. Netzpolitik.org)
  date: 'YYYY-MM-DD'
  link:
    de: https://example.com/de/link
    en: english link (if exists
```

## Item processing

The items will be sorted by date, with the newest item on top.
Currently, all the items will be displayed (i.e., no cut-off, top-10, or pagination).

## Rake

The process can be automated, by using `rake _data/press.yml`, which will fetch the Google Sheet and prepare the YAML file.
