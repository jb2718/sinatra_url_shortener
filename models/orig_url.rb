class OrigUrl
  attr_reader :id, :orig_url, :short_url_id

  @@last_id = 0
  def initialize(orig_url, short_url_id) 
    next_id
    @orig_url = orig_url
    @short_url_id = short_url_id
  end

  def next_id
    @id = @@last_id + 1
    @@last_id = @id
  end

  def self.last_id
    @@last_id
  end
end

# Example Cases
# url0 = OrigUrl.new('http://launchschool.com', 1252)
# p url0
# p url0.id # => 1
# p url0.orig_url # => 'http://launchschool.com'
# p OrigUrl.last_id # => 1 