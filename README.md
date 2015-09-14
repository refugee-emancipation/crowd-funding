# Refugee Emancipation Crowdfunding Campaing

This site is aimed to rise awareness for our upcoming crowdfunding campaign.

## Build the Site
1. Ruby <br>Your Ruby version should be at least 2.0.0

    ```ruby --version```

2. Bundler

    ```gem install bundler```

3. Jekyll

    ```gem install jekyll```

    ```bundle install```

### Build for Local Development

```jekyll serve --config _config_dev.yml```


### Build for Production
For Production, use following command and file

```jekyll serve --config _config.yml```

To build the static files for production, use `jekyll build`.

#### Build for staging environment

For building static files for `staging.support.refugeesemancipation.com`, use

```
jekyll build --config _config.yml,_config_staging-env.yml
```

#### Build for development environment

For building static files for `dev.support.refugeesemancipation.com`, use

```
jekyll build --config _config.yml,_config_dev_-env.yml
```



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
