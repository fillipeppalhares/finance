# frozen_string_literal: true

module DryAction
  extend ActiveSupport::Concern

  def index
    @objects = model_class.all
  end

  def show
    @object = find_record
  end

  def new
    @object = model_class.new
  end

  def create
    @object = model_class.new(set_params)

    respond_to do |format|
      if @object.save
        format.html { redirect_to "#{url_for(action: :index)}/#{@object.id}" }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @object = find_record
  end

  def update
    @object = find_record

    respond_to do |format|
      if @object.update(set_params)
        format.html { redirect_to "#{url_for(action: :index)}/#{@object.id}" }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @object = find_record
    @object.destroy
  rescue ActiveRecord::InvalidForeignKey => e
    error = destroy_error_message(e)
  ensure
    respond_to do |format|
      format.html do
        if !error
          redirect_to url_for(action: "index"), status: :see_other
        else
          redirect_to url_for(action: "show"), status: :see_other
        end
      end
    end
  end

  private

  def find_record
    model_class.find(params[:id])
  end
end
