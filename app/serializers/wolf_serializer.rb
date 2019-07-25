class WolfSerializer < ActiveModel::Serializer
  attributes :photo, :age, :description, :name
  has_one :adoption
end