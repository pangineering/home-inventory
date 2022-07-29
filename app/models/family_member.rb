class FamilyMember < ApplicationRecord
    belongs_to :families
    has_one :user
end
