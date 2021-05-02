class ChangeCurrencyPrice < ActiveRecord::Migration[5.2]
  def up
<<<<<<< HEAD
    Currency.find_each do |c|
      c.update(price: 1) if c.price.blank?
    end
=======
>>>>>>> 9b73ca2c (Update currency price field)
    change_column :currencies, :price, :decimal, precision: 32, scale: 16, null: false, default: 1.0
  end

  def down
    change_column :currencies, :price, :decimal, precision: 32, scale: 16
  end
end
