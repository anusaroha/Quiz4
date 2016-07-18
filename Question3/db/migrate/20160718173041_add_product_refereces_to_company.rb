class AddProductReferecesToCompany < ActiveRecord::Migration[5.0]
  def change
    add_reference :companies, :product, index: true, foreign_key: true
  end
end
