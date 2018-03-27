require "datasets"
require "datasets-daru/version"
require "daru"

module DatasetsDaru
  module DaruConvertible
    def to_daru
      Daru::DataFrame.new(to_table.to_h)
    end
  end
end

Datasets::Dataset.include DatasetsDaru::DaruConvertible
