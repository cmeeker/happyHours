class ArtCar
  include Mongoid::Document
  field :name, type: String
  field :hometown, type: String
  field :power_source, type: String
  field :flame_effects, type: Mongoid::Boolean
  field :street_legal, type: Mongoid::Boolean
  field :photo_url, type: String
end
