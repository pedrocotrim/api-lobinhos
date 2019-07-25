class AdoptionSerializer < ActiveModel::Serializer
  attributes :age, :email, :name
  belongs_to :wolf
end