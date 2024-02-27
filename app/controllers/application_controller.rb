class ApplicationController < ActionController::Base

  helper_method :model_class,
                :model_name

  private

  def model_class
    controller_path.classify.constantize
  end

  def model_name
    controller_path.singularize
  end
end
