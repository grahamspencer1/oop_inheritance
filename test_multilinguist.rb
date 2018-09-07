require 'minitest/autorun'
require 'minitest/pride'
require './multilinguist.rb'

class TestMultilinguist < MiniTest::Test

  def setup
    @speaker = Multilinguist.new
  end

  def test_language_in_french
    assert_equal(@speaker.language_in('France'), 'fr')
  end

  def test_language_in_spanish
    assert_equal(@speaker.language_in('Spain'), 'es')
  end

  def test_language_in_italian
    assert_equal(@speaker.language_in('Italy'), 'it')
  end

end
