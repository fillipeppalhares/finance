class SyntheticAccount < ApplicationRecord
  has_one :account, as: :accountable, dependent: :destroy
  accepts_nested_attributes_for :account

  delegate :description, to: :account

  after_initialize :build_account, unless: -> { account }
end
