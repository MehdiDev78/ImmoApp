class AddOtherFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :phone_number, :string
    add_column :users, :desciption, :text
  end
end
