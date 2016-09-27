# == Schema Information
#
# Table name: agents
#
#  id         :integer          not null, primary key
#  name       :string
#  address    :string
#  phone      :string
#  pic        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Agent < ActiveRecord::Base
  # Asso
  has_many :orders
  has_many :deposits

  def name_with_id
    "#{id} - #{name} (#{pic})"
  end
end
