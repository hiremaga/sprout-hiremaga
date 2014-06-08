# sprout-hiremaga

[![Build Status](https://travis-ci.org/hiremaga/sprout-hiremaga.png?branch=master)](https://travis-ci.org/hiremaga/sprout-hiremaga)

A skinny [Sprout](https://github.com/pivotal-sprout) cookbook setup my personal Mac.

#### 1. Install Command Line Tools

    xcode-select --install

If you receive a message about the update server being unavailable and are on Mavericks, then you already have the command line tools.

#### 2. Clone this project

    git clone https://github.com/hiremaga/sprout-hiremaga.git
    cd sprout-hiremaga

#### 3. Install soloist & and other required gems

    sudo gem install bundler
    bundle

#### 4. Run soloist

    bundle exec soloist
