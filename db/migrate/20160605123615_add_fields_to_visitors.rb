class AddFieldsToVisitors < ActiveRecord::Migration
  def change
    add_column :visitors, :gender, :string
    add_column :visitors, :address , :string
    add_column :visitors, :state, :string
    add_column :visitors, :pincode, :string
    add_column :visitors, :otherEdu, :string
    add_column :visitors, :eduInstitute, :string
    add_column :visitors, :studentOccupation, :string
    add_column :visitors, :highestEducation, :string, null: false
    add_column :visitors, :computerKnowledge, :string
    add_column :visitors, :guardianName, :string, null: false
    add_column :visitors, :guardianEmail, :string, null: false
    add_column :visitors, :guardianPhone, :string, null: false
    add_column :visitors, :guardianOccupation, :string
    add_column :visitors, :arenaNewspaper, :boolean
    add_column :visitors, :arenaTV, :boolean
    add_column :visitors, :arenaInternet, :boolean
    add_column :visitors, :arenaStudent, :boolean
    add_column :visitors, :arenaBanner, :boolean
    add_column :visitors, :arenaFriends, :boolean
    add_column :visitors, :dob, :date
  end
end
