[![Build Status](https://travis-ci.org/red-data-tools/red-datasets-daru.svg?branch=master)](https://travis-ci.org/red-data-tools/red-datasets-daru)

# README

## Nane

Red Datasets Daru

## Description

Red Datasets Daru provides the way to export a Red Datasets object as Daru::DataFrame object.

Red Datasets Daru adds `#to_daru` method to each dataset in Red Datasets.  Using this method, you can obtain dataset as an object of `Daru::DataFrame` class, which is provided by [daru](https://github.com/sciruby/daru).

## Install

```console
gem install red-datasets-daru
```

## Usage

```ruby
require "datasets/daru"

iris = Datasets::Iris.new
iris_df = iris.to_daru
puts iris_df.head
```

## License

The MIT License.  See `LICENSE.txt` for the details.
