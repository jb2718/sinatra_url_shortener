class ShortUrl
  attr_reader :created_at, :url, :orig_url_id

  def initialize(orig_url, short_url)
    @orig_url_id = orig_url.id
    @url = short_url
    @created_at = Time.now
  end

  def self.save(orig_url, short_url)
    ShortUrl.new(orig_url, short_url)
  end

  def self.shorten
  end

  # def self.shorten(original, custom=nil)
  #   url = Url.first(:original => original)
  #   return url.link if url
  #   link = nil
  #   if custom 
  #     transaction do |txn|
  #       link = Link.new(:identifier => custom)
  #       link.url = Url.create(:original => original)
  #       link.save
  #     end
  #   else
  #     transaction do |txn|
  #       link = create_link(original)
  #     end
  #   end
  #   return link
  # end

  private

  def self.create_link
  end

  # def self.create_link(original)
  #   url = Url.create(:original => original)
  #   if Link.first(:identifier => url.id.to_s).nil?
  #     link = Link.new(:identifier => url.id.to_s)
  #     link.url = url
  #     link.save
  #     return link
  #   else
  #     create_link(original)
  #   end
  # end
end