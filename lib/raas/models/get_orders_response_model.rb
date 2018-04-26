# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0
# ( https://apimatic.io ).

module Raas
  # Represents the response from the get orders call
  class GetOrdersResponseModel < BaseModel
    # Pagination information
    # @return [PageModel]
    attr_accessor :page

    # An array of orders
    # @return [List of OrderSummaryModel]
    attr_accessor :orders

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['page'] = 'page'
      @_hash['orders'] = 'orders'
      @_hash
    end

    def initialize(page = nil,
                   orders = nil)
      @page = page
      @orders = orders
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      page = PageModel.from_hash(hash['page']) if hash['page']
      # Parameter is an array, so we need to iterate through it
      orders = nil
      unless hash['orders'].nil?
        orders = []
        hash['orders'].each do |structure|
          orders << (OrderSummaryModel.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      GetOrdersResponseModel.new(page,
                                 orders)
    end
  end
end
