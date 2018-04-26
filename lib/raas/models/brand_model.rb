# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module Raas
  # Represents a Brand
  class BrandModel < BaseModel
    # The brand key
    # @return [String]
    attr_accessor :brand_key

    # The brand name
    # @return [String]
    attr_accessor :brand_name

    # The brand's disclaimer
    # @return [String]
    attr_accessor :disclaimer

    # The brand's description
    # @return [String]
    attr_accessor :description

    # The brand's short description
    # @return [String]
    attr_accessor :short_description

    # The brand's terms
    # @return [String]
    attr_accessor :terms

    # The date the brand was created
    # @return [DateTime]
    attr_accessor :created_date

    # The date the brand was last updated
    # @return [DateTime]
    attr_accessor :last_update_date

    # A map of Image URLs
    # @return [Array<String, String>]
    attr_accessor :image_urls

    # The brand's status
    # @return [String]
    attr_accessor :status

    # An array of Item objects
    # @return [List of ItemModel]
    attr_accessor :items

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['brand_key'] = 'brandKey'
      @_hash['brand_name'] = 'brandName'
      @_hash['disclaimer'] = 'disclaimer'
      @_hash['description'] = 'description'
      @_hash['short_description'] = 'shortDescription'
      @_hash['terms'] = 'terms'
      @_hash['created_date'] = 'createdDate'
      @_hash['last_update_date'] = 'lastUpdateDate'
      @_hash['image_urls'] = 'imageUrls'
      @_hash['status'] = 'status'
      @_hash['items'] = 'items'
      @_hash
    end

    def initialize(brand_key = nil,
                   brand_name = nil,
                   disclaimer = nil,
                   description = nil,
                   short_description = nil,
                   terms = nil,
                   created_date = nil,
                   last_update_date = nil,
                   image_urls = nil,
                   status = nil,
                   items = nil)
      @brand_key = brand_key
      @brand_name = brand_name
      @disclaimer = disclaimer
      @description = description
      @short_description = short_description
      @terms = terms
      @created_date = created_date
      @last_update_date = last_update_date
      @image_urls = image_urls
      @status = status
      @items = items
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      brand_key = hash['brandKey']
      brand_name = hash['brandName']
      disclaimer = hash['disclaimer']
      description = hash['description']
      short_description = hash['shortDescription']
      terms = hash['terms']
      created_date = DateTime.rfc3339(hash['createdDate']) if
        hash['createdDate']
      last_update_date = DateTime.rfc3339(hash['lastUpdateDate']) if
        hash['lastUpdateDate']
      image_urls = hash['imageUrls']
      status = hash['status']
      # Parameter is an array, so we need to iterate through it
      items = nil
      unless hash['items'].nil?
        items = []
        hash['items'].each do |structure|
          items << (ItemModel.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      BrandModel.new(brand_key,
                     brand_name,
                     disclaimer,
                     description,
                     short_description,
                     terms,
                     created_date,
                     last_update_date,
                     image_urls,
                     status,
                     items)
    end
  end
end
