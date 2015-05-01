class CreateSubscriptions < ActiveRecord::Migration
  def up
    create_table :subscriptions do |t|
    	t.belongs_to :user, index: true
    	t.belongs_to :group, index: true
      t.timestamps null: false
    end
  end

  def down
  	drop_table :subscriptions
  end
end

