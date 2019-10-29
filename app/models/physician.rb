class Physician < ApplicationRecord
        has_many :offices, inverse_of: :physician
        accepts_nested_attributes_for :offices, reject_if: :all_blank, allow_destroy: true

        has_and_belongs_to_many :patients, through: :appointment
      

end
