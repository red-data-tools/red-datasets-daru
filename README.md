# README

## Nane

Red Datasets Daru

## Description

Red Datasets Daru provides the way to export a Red Datasets object as Daru::DataFrame object.

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
