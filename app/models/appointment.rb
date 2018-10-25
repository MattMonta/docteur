class Appointment < ApplicationRecord
    belongs_to :doctor, optional: true
    belongs_to :patient, optional: true
    has_one :city
end
