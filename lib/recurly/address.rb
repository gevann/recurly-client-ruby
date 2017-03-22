module Recurly
  class Address < Resource
    define_attribute_methods %w(
      address1
      address2
      city
      state
      zip
      country
      phone
      geo_code
    )

    # This ensures every attribute is rendered
    # when updating. The Address object does not
    # accept partial updates on the server
    def xml_keys
      attributes.keys
    end
  end
end
