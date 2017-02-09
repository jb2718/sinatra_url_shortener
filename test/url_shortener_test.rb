require "minitest/autorun"
require "rack/test"
require "pry"
require "minitest/reporters"
require "fileutils"
Minitest::Reporters.use!

require_relative "../url_shortener"


class URLSHORTENERTest < Minitest::Test
  include Rack::Test::Methods

  def test_valid_url_shortened
  end

  def test_url_previously_submitted
    skip
  end

  def test_invalid_url_rejected_for_format
    skip
  end

  def test_new_short_url_added_to_list
    skip
  end

  def test_delete_short_url_list_item
    skip
  end
end