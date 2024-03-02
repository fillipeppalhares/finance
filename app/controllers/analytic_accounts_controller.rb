# frozen_string_literal: true

class AnalyticAccountsController < ApplicationController
  include DryAction

  private

  def set_params
    params.require(:analytic_account).permit(:id, account_attributes: %i[id account_number description parent_id accountable_type accountable_id chart_of_account_id])
  end
end
