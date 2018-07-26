class AddDoctorToAppoitments < ActiveRecord::Migration[5.2]
  def change
    add_reference :appoitments, :doctor, foreign_key: true
  end
end
