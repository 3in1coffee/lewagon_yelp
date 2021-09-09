class RemoveReviewsToRestaurant < ActiveRecord::Migration[6.0]
  def change
    remove_reference :restaurants, :reviews, foreign_key: true
  end
end
