class User < ApplicationRecord
  LEFT = 'left'
  RIGHT = 'right'

  scope :left_handed, -> { where(dominant_hand: LEFT) }
  scope :right_handed, -> { where(dominant_hand: RIGHT) }

  def left_handed?
    dominant_hand == LEFT
  end
  def right_handed?
    dominant_hand == RIGHT
  end
end
