class CreateLicenseViolations < ActiveRecord::Migration[6.0]
  def change
    create_table :license_violations do |t|
        t.string :violation_code
        t.integer :address_object_id
        t.string :case_number
        t.datetime :case_created_date
        t.datetime :case_completed_date
        t.string :case_status
        t.string :case_responsibility
        t.string :case_priority_desc
        t.string :violation_number
        t.date :violation_date
        t.string :violation_code_title
        t.string :violation_status
        t.date :violation_resolution_date # might be empty for all data (lol)
        t.string :violation_resolution_code # might be empty for all data
        t.datetime :most_recent_investigation
        t.string :opa_account_num
        t.string :address
        t.string :unit_type # might be empty for all data
        t.string :unit_num # might be empty for all data
        t.string :zip # includes 4 digit code in data
        t.string :census_tract
        t.string :opa_owner_1 # data includes two owners in single entry separated by tab or spaces
        t.string :opa_owner_2 # we should split into two colums
        t.string :system_of_record
        t.float :geocode_x
        t.float :geocode_y
    end
  end
end
