class Deposit < ActiveRecord::Base
  # Asso
  belongs_to :agent
  belongs_to :product

  # Validation
  validates :product_id, uniqueness: { scope: :agent_id }
end
