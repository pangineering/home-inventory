class Family < ApplicationRecord
    has_many :family_member
    has_many :inventory
end                                         