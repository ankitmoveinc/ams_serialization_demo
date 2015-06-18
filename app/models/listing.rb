class Listing

  attr_reader :listing_id, :location

  alias :read_attribute_for_serialization :send
  def initialize(options = {})
    puts options
    @listing_id = options[:listing_id]
    @location   = options[:location]
  end

  def self.all
    store.collect do |hsh|
      Listing.new(listing_id: hsh['listing-id'],location: hsh['location'])
    end
  end

  def self.store
    [{'listing-id' => 1111,'location' => 'SFO'},
     {'listing-id' => 2222,'location' => 'EWR'},
     {'listing-id' => 3333,'location' => 'NYC'}]
  end
end
