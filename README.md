# Refugee Emancipation Crowdfunding Campaign

This site is aimed to rise awareness for our upcoming crowdfunding campaign.

## Usage
### Installation
For further information see [jekyllrb.com/docs/installation](http://jekyllrb.com/docs/installation/).

1. Ruby <br>Your Ruby version should be at least 2.0.0
Check it with `ruby --version`

2. Bundler

    ```gem install bundler```

3. Jekyll, Rack, dependencies:

    ```bundle install```

### Local development: building and previewing

For local development, use Guard to run Jekyll on changes, and serve the files:

`guard`

Then visit `http://127.0.0.1:4000`.

[Guard](https://github.com/guard/guard) will re-run Jekyll when its input files have changed, and trigger a browser reload using [guard-livereload](https://github.com/guard/guard-livereload) and [rake-livereload](https://github.com/johnbintz/rack-livereload).
It also takes care of serving the files using [Rack](http://rack.github.io) via [guard-jekyll-plus](https://github.com/imathis/guard-jekyll-plus).

#### Build for Production

To build the static files for production, use `jekyll build`.

#### Build for staging environment

For building static files for [staging.support.refugeesemancipation.com](staging.support.refugeesemancipation.com), use

```jekyll build --config _config.yml,_config_staging-env.yml```

#### Build for development environment

For building static files for [dev.support.refugeesemancipation.com](dev.support.refugeesemancipation.com), use

```jekyll build --config _config.yml,_config_dev-env.yml```


## How to Contribute
1. Fork the repository. If you don't know how to do that, [follow these instructions](https://help.github.com/articles/fork-a-repo/)

2. Then do the fix. If it's content-related, please try to update both the German and the English versoin. (Alternatively, please indicate in the PR if you need help with this.)

3. Create a [pull request](https://help.github.com/articles/using-pull-requests/)

## TODO
### Website
* Make fonts responsive

## Built with Jekyll Theme: *Feeling Responsive*

MIT License (MIT)
Copyright (c) 2014 Moritz »mo.« Sauer // Phlow.de
