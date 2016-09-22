class ChangePhoneTypeInContacts < ActiveRecord::Migration
  def self.up
    change_column :contacts, :phone, :string
  end

  def self.down
    change_column :contacts, :phone, :integer
  end
end
