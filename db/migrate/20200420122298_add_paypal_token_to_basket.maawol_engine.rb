# This migration comes from maawol_engine (originally 20200219114309)
class AddPaypalTokenToBasket < ActiveRecord::Migration[5.2]
  def change
    add_column :baskets, :paypal_payment_id, :string, after: :id
  end
end
