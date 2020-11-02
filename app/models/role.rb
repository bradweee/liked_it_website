class Role < ApplicationRecord
    has_many :assignments
    has_many :users, through: :assignments

    validate :name, presence: true, uniqueness: true
end
