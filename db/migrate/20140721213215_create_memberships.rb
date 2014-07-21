class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.belongs_to :user, index: true, null: false
      t.belongs_to :account, index: true, null: false
      t.string :type, null: false

      t.timestamps null: false
    end
  end
end
