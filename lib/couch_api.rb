require 'couchbase'

class CouchApi
  attr_accessor :client
  def initialize()
    self.client = Couchbase.connect(:bucket => "deliveries",:host => "localhost",:password=>"qaf221")
  end

  def get_products()
    dd_products = self.client.design_docs['products']
    results = []
    dd_products.products.each do |doc|
      results << doc.data["key"]
    end
    results
  end


  def close_connection()
    self.client.disconnect
  end
end
