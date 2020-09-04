# Appium test setup

## Before anything else

Make sure you have appium server installed and its up and running. (http://appium.io/docs/en/about-appium/getting-started/)

Also make sure that you have genymotion installed and have at least 1 device up and running.
(docker-android doesnt work on macOS because kvm)

I´m also assuming that you have ruby 2.6.x installed, but if not, you can use chruby(https://github.com/postmodern/chruby) to manage your ruby versions.

Please install all the project dependencies with bundle:

```
bundle install
```

## Setup

Since the "apk" name given was "app-world-beta (1).apk", please place the apk in the root folder of the repository.
If you changed the name of the apk, please change the reference inside the `features/support/env.rb` file under the app capability.

> Note: since appium.txt is a static file, the location of the apk should be a full path, since it cant take the advantage of the capabilities loading that gets the current location of the repository.

## Executing the tests

Execute the following command on the root folder:

```
cucumber
```

## Rubocop

This repository is 100% rubocop complient with no disables.
