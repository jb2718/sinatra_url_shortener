require "minitest/autorun"
require "rack/test"
require "pry"
require "minitest/reporters"
require "fileutils"
Minitest::Reporters.use!

require_relative "../url_shortener"


class URLSHORTENERTest < Minitest::Test
  include Rack::Test::Methods

  def test_index
  end
end