class DaruTest < Test::Unit::TestCase
  def setup
    @dataset = Datasets::Iris.new
  end

  test('#to_daru') do
    result = @dataset.to_daru
    assert_kind_of(::Daru::DataFrame, result)
    assert_equal(<<-TABLE.chomp, result.inspect)
#<Daru::DataFrame(150x5)>
            sepal_leng sepal_widt petal_leng petal_widt      class
          0        5.1        3.5        1.4        0.2 Iris-setos
          1        4.9        3.0        1.4        0.2 Iris-setos
          2        4.7        3.2        1.3        0.2 Iris-setos
          3        4.6        3.1        1.5        0.2 Iris-setos
          4        5.0        3.6        1.4        0.2 Iris-setos
          5        5.4        3.9        1.7        0.4 Iris-setos
          6        4.6        3.4        1.4        0.3 Iris-setos
          7        5.0        3.4        1.5        0.2 Iris-setos
          8        4.4        2.9        1.4        0.2 Iris-setos
          9        4.9        3.1        1.5        0.1 Iris-setos
         10        5.4        3.7        1.5        0.2 Iris-setos
         11        4.8        3.4        1.6        0.2 Iris-setos
         12        4.8        3.0        1.4        0.1 Iris-setos
         13        4.3        3.0        1.1        0.1 Iris-setos
         14        5.8        4.0        1.2        0.2 Iris-setos
        ...        ...        ...        ...        ...        ...
    TABLE
  end
end