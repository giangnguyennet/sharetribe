# == Schema Information
#
# Table name: transaction_types
#
#  id                         :integer          not null, primary key
#  type                       :string(255)
#  community_id               :integer
#  transaction_process_id     :integer
#  sort_priority              :integer
#  price_field                :boolean
#  price_quantity_placeholder :string(255)
#  price_per                  :string(255)
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#  url                        :string(255)
#
# Indexes
#
#  index_transaction_types_on_community_id            (community_id)
#  index_transaction_types_on_transaction_process_id  (transaction_process_id)
#  index_transaction_types_on_url                     (url)
#

class Inquiry < TransactionType

  DEFAULTS = {}

  def direction
    "inquiry"
  end

  def is_offer?
    false
  end

  def is_request?
    false
  end

  def is_inquiry?
    true
  end

end
