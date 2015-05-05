class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
    	t.string :name, null: false
    	t.string :email, null: false
      t.string :password_digest, null: false
      t.timestamps null: false
    end
  end

  def down
  	drop_table :users
  end
end
