class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :email
      t.string :password_hash
      t.string :password_salt
      t.timestamps
    end
  end
end
