# frozen_string_literal: true

class ChartOfAccountsController < ApplicationController
  include DryAction

  private

  def set_params
    params.require(:chart_of_account).permit(:id, :description, :money, :entity_id)
  end
end
