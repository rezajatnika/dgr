class Agent < ActiveRecord::Base
  # Asso
  has_many :orders
  has_many :deposits

  def name_with_id
    "#{id} - #{name} (#{pic})"
  end
end
