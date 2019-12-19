require "test_helper"

class ClownsTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Clowns::VERSION
  end

  def test_it_does_something_useful
    assert true
  end

  def test_that_a_clown_is_not_a_horse
    refute "🤡" == "🐎"
  end
  
  def test_that_a_clown_is_not_two_horses
    refute "🤡" == "🐎🐎"
  end
  
end
