class Item < ApplicationRecord

  belongs_to :genre
  has_many :cart_items, dependent: :destroy
  has_many :order_items
  has_one_attached :image

  enum sales_status: { sale: 0, stop_selling: 1 }

  def add_tax_price
    (self.price * 1.10).floor
  end

  # 税込み単価の算出,item.rbに記載が好ましい
  def with_tax_price
      (price * 1.1).floor
  end

end
