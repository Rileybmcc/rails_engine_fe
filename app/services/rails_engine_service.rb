require 'json'
require 'faraday'

class RailsEngineService

  def self.conn
      Faraday.new(url: 'http://localhost:3000/')
  end

  def self.parse(response)
    JSON.parse(response, symbolize_names: true)
  end

  def self.all_merchants
    response = conn.get('api/v1/merchants')
    parse(response.body)
  end

  def self.a_merchant(merch_id)
    response = conn.get("api/v1/merchants/#{merch_id}")
    parse(response.body)
  end

  def self.merchant_items(merchant_id)
    response = conn.get("api/v1/merchants/#{merchant_id}/items")
    parse(response.body)
  end

  def self.an_item(item_id)
    response = conn.get("api/v1/items/#{item_id}")
    parse(response.body)
  end

  def self.items
    response = conn.get('api/v1/items')
    parse(response.body)
  end

  def self.merchant_by_partial(search_params)
    response = conn.get("api/v1/merchants/find?name=#{search_params}")
    parse(response.body)
  end

end
