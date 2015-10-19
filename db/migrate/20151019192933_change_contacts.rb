class ChangeContacts < ActiveRecord::Migration
  def change
    change_table :contacts do |t|
      t.remove :user_id
      t.integer :user_id, presence: true
    end
  end
end
