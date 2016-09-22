class AddContactToActivities < ActiveRecord::Migration
  def change
    add_reference :activities, :contact, index: true, foreign_key: true
  end
end
