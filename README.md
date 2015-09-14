# Refugee Emancipation Crowdfunding Campaign

This site is aimed to rise awareness for our upcoming crowdfunding campaign.

## Usage
### Installation
For further information see [jekyllrb.com/docs/installation](http://jekyllrb.com/docs/installation/).
1. Ruby <br>Your Ruby version should be at least 2.0.0

    ```ruby --version```

2. Bundler

    ```gem install bundler```

3. Jekyll

    ```gem install jekyll```

    ```bundle install```

### Build static files

Jekyll comes with a built-in development server that will allow you to preview what the generated site will look like in your browser locally.

`jekyll serve` will run a development server at `http://localhost:4000/`

To get further information on Jekyll build options, see
[jekyllrb.com/docs/usage/](http://jekyllrb.com/docs/usage/)

#### Build for Local Development

```jekyll serve --config _config_dev.yml```


#### Build for Production
For Production, use following command and file

```jekyll serve --config _config.yml```

To build the static files for production, use `jekyll build`.

#### Build for staging environment

For building static files for [staging.support.refugeesemancipation.com](staging.support.refugeesemancipation.com), use


```jekyll build --config _config.yml,_config_staging-env.yml```

#### Build for development environment

For building static files for [dev.support.refugeesemancipation.com](dev.support.refugeesemancipation.com), use


```jekyll build --config _config.yml,_config_dev-env.yml```



## How to Contribute
1. Fork the repository. If you don't know how to do that, [follow these instructions](https://help.github.com/articles/fork-a-repo/)

2. Then do the fix

3. Create a [pull request](https://help.github.com/articles/using-pull-requests/)

## TODO
* hosting the campaing (Kickstarter, StartNext, betterplace, self-hosted)
* depending on the chosen plattform: sort our payment options and fees
* discuss funding goals
* concept for a pitch - video
* create a corporate identity (logo, icons, fonts, phrases)
* collect ideas for "thank you" goodies (if wanted) like buttons, t-shirts or naming computers after supporters
* update Refugee Emancipation website

## Built with Jekyll Theme: *Feeling Responsive*

MIT License (MIT)
Copyright (c) 2014 Moritz »mo.« Sauer // Phlow.de
