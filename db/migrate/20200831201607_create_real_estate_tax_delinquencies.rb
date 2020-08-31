class CreateRealEstateTaxDelinquencies < ActiveRecord::Migration[6.0]
  def change
    create_table :real_estate_tax_delinquencies do |t|
        t.integer :objectid
        t.string :street_address
        t.string :zip_code # strings for zips just in case
        t.string :zip_4
        t.string :unit_type
        t.string :unit_num
        t.string :owner
        t.string :co_owner
        t.float :principal_due
        t.float :penalty_due
        t.float :interest_due
        t.float :other_charges_due
        t.float :total_due
        t.boolean :is_actionable
        t.boolean :payment_agreement
        t.integer :num_years_owed
        t.integer :most_recent_year_owed
        t.integer :oldest_year_owed
        t.date :most_recent_payment_date
        t.integer :year_of_last_assessment
        t.integer :total_assessment
        t.integer :taxable_assessment
        t.string :mailing_address
        t.string :mailing_city
        t.string :mailing_state
        t.string :mailing_zip
        t.string :opa_number
        t.string :building_code
        t.string :detail_building_description
        t.string :general_building_description
        t.string :building_category
        t.integer :coll_agency_num_years
        t.integer :coll_agency_most_recent_year
        t.integer :coll_agency_oldest_year
        t.float :coll_agency_principal_owed
        t.float :coll_agency_total_owed
        t.integer :exempt_abatement_assessment
        t.float :homestead_value
        t.float :net_tax_value_after_homestead
        t.string :agreement_agency
        t.boolean :sequestration_enforcement
        t.boolean :bankruptcy
        t.integer :years_in_bankruptcy
        t.integer :most_recent_bankrupt_year
        t.integer :oldest_bankrupt_year
        t.integer :principal_sum_bankrupt_years
        t.integer :total_amount_bankrupt_years
        t.boolean :sheriff_sale # represented as Y/N in data
        t.boolean :liens_sold_1990s
        t.boolean :liens_sold_2015 # represented as Y/N in data
        t.boolean :assessment_under_appeal
        t.float :lat
        t.float :lon
    end
  end
end
