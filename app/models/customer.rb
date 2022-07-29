class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :cart_items
  has_many :orders
  has_many :shipping_addresses

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :first_name_kana, presence: true
  validates :last_name_kana, presence: true
  #VALID_EMAIL_REGEX = /\A[\w+-.]+@[a-z\d-]+(.[a-z\d-]+)*.[a-z]+\z/i  /  #, format: { with: VALID_EMAIL_REGEX }
  validates :email, presence: true
  VALID_POSTAL_CODE_REGEX = /\A\d{7}\z/
  validates :post_code, presence: true, format: { with: VALID_POSTAL_CODE_REGEX }
  validates :address, presence: true
  VALID_PHONE_NUMBER_REGEX = /\A\d{10,11}\z/
  validates :phone_number, presence: true, format: { with: VALID_PHONE_NUMBER_REGEX }
  validates :password, presence: true, length: { minimum: 6 }, on: :create
  validates :password_confirmation, presence: true, length: { minimum: 6 }, on: :create

  def address_display
  '〒' + postal_code + ' ' + address + ' ' + first_name + last_name
  end

  def active_for_authentication?
    super && (is_deleted == false)
  end

end
