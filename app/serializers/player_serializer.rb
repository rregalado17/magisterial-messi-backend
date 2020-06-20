class PlayerSerializer < ActiveModel::Serializer
    attributes :id, :name, :age, :team_id
    belongs_to :team
end
