class Account < ApplicationRecord
  has_ancestry
  belongs_to :chart_of_account
  belongs_to :accountable, polymorphic: true
end
