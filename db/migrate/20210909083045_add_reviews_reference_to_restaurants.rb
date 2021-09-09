class AddReviewsReferenceToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_reference :restaurants, :reviews, foreign_key: true
  end
end
