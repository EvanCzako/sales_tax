class Item < ApplicationRecord

    validates :name, :category, :basket_id, :quantity, presence: true
    validates :name, length: {minimum: 1}

    belongs_to :parent_basket,
        primary_key: :id,
        foreign_key: :basket_id,
        class_name: :Basket

end