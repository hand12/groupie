class SuggestsController < ApplicationController
  before_action :set_current_season, only: [:index]

  def index
  end

  def gender
    consumers_from_gender = Consumer.where(gender: params[:gender])
    @products_from_gender = @consumers_from_gender.map{|c| c.products}
    @popular_products = @products_from_gender.order(buy_count: :desc).limit(10)
    @detail_products = @popular_products.map{|p| [p.middle_category.name, p.buy_count] }

    respond_to do |format|
      format.any
      format.json
    end
  end

  # def age
  #   @consumers_from_age = consumers_from_gender.where('age <= ? and age >= ?', params[:age][:max], params[:age][:min])
  #   @prefectures = Prefecture.all
  # end

  # def prefectures
  #   @consumers_form_prefectures = consumers_from_age.where('prefecture_id == ?', params[:id])
  # end

end
