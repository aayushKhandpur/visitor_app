class CreateVisitors < ActiveRecord::Migration
  def change
    create_table :visitors do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email_id, null: false, index:true
      t.string :phone_no, null: false, index:true
      t.string :city, null: false

      t.timestamps null: false
    end
  end
end
