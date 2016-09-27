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

require 'rails_helper'

RSpec.describe Agent, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
