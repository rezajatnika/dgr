# == Schema Information
#
# Table name: shipments
#
#  id         :integer          not null, primary key
#  order_id   :integer
#  status     :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Shipment < ActiveRecord::Base
  # Enumeration
  enum status: { created: 0, approved: 1, rejected: 2, finished: 3 }

  # Association
  belongs_to :order
end
