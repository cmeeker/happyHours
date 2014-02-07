class HappyHour
  include Mongoid::Document
  field :name, type: String
  field :hometown, type: String
  field :address, type: String
  field :photo_url, type: String
end
