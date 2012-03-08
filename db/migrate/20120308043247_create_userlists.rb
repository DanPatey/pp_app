class CreateUserlists < ActiveRecord::Migration
  def change
    create_table :userlists do |t|
      t.string :email
      t.string :phone
      t.string :f_name
      t.string :l_name
      t.string :address
      t.string :zip
      t.boolean :spot
      t.string :timestp
      t.string :braintree_cc
      t.boolean :tos
      t.boolean :dlv
      t.boolean :emv
      t.boolean :flagged

      t.timestamps
    end
  end
end
