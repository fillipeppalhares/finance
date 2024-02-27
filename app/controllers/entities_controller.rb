# frozen_string_literal: true

class EntitiesController < ApplicationController
  include DryAction

  private

  def set_params
    params.require(:entity).permit(:id, :description, :bio)
  end
end
