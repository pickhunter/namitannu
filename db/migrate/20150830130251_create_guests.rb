class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|

      t.timestamps null: false
      t.column :name, :string, null: false
      t.column :email, :string, null: false
      t.column :mehendi, :string, default: 'no'
      t.column :wedding, :string, default: 'no'
      t.column :reception, :string, default: 'no'
      t.column :guest, :string, default: 'no'
      t.column :accomodation, :string, default: 'no'
    end
  end
end
