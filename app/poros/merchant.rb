class Merchant
  attr_reader :name,
              :id

  def initialize(attributes, merchant_id)
    # require "pry"; binding.pry
    @name = attributes[:name]
    @id = merchant_id.to_i
  end

end
