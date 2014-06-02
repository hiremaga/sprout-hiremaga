# sprout-hiremaga

[![Build Status](https://travis-ci.org/pivotal-sprout/sprout-hiremaga.png?branch=master)](https://travis-ci.org/pivotal-sprout/sprout-hiremaga)

A skinny cookbook that uses sprout and chef to setup my personal Mac.

## Usage

### Prerequisites

- [system ruby](.ruby-version)
- [bundler](http://bundler.io/)

### Quickstart

```
bundle
bundle exec soloist
```

### Fresh install

#### 1. Install Command Line Tools

    xcode-select --install

If you receive a message about the update server being unavailable and are on Mavericks, then you already have the command line tools.

#### 2. Clone this project

    git clone https://github.com/hiremaga/sprout-hiremaga.git
    cd sprout-hiremaga

#### 3. Install soloist & and other required gems

If you're running under rvm or rbenv, you shouldn't preface the following commands with `sudo`.

    sudo gem install bundler
    sudo bundle

If you receive errors like this:

    clang: error: unknown argument: '-multiply_definedsuppress'

then try downgrading those errors like this:

    sudo ARCHFLAGS=-Wno-error=unused-command-line-argument-hard-error-in-future bundle

#### 4. Run soloist

[You may want to modify your Energy Saver preferences (**System Preferences &rarr; Energy Saver &rarr; Computer Sleep &rarr; 3hrs**) because soloist usually takes 2-3 hours to complete.]

    bundle exec soloist

## Development

### Before committing

```
bundle
bundle exec rake
```

The default rake task includes rubocop, foodcritic, unit specs

### [Rubocop](https://github.com/bbatsov/rubocop)

```
bundle
bundle exec rake rubocop
```

### Unit specs

Unit specs use [ChefSpec](https://github.com/sethvargo/chefspec/)

```
bundle
bundle exec rake spec:unit
```

### Integration specs

Integrations specs will run the default recipe on the host system (destructive) and make assertions on the system after
install.

*Note:* It has a precondition that hiremaga is _not_ already installed on the system.

```
bundle
bundle exec rake spec:integration
```
