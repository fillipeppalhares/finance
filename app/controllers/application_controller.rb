class ApplicationController < ActionController::Base
  private

  def model_class
    controller_path.classify.constantize
  end
end
