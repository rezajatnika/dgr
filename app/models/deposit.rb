# == Schema Information
#
# Table name: deposits
#
#  id         :integer          not null, primary key
#  agent_id   :integer
#  product_id :integer
#  quantity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Deposit < ActiveRecord::Base
  # Asso
  belongs_to :agent
  belongs_to :product

  # Validation
  validates :product_id, uniqueness: { scope: :agent_id }
end
