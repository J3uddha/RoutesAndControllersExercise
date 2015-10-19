class ChangeUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.remove :name, :email
      t.string :username, presence: true, uniqueness: true

    end
  end
end
