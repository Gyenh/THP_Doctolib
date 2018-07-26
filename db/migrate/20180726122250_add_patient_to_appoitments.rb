class AddPatientToAppoitments < ActiveRecord::Migration[5.2]
  def change
    add_reference :appoitments, :patient, foreign_key: true
  end
end
