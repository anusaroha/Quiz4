class CompaniesController < ApplicationController
  before_action :find_company, only: [:show, :edit, :update, :destroy]

  def index
    @companies = Company.all
    # @companies = Company.includes(:products).find(params[:id])
    respond_to do |format|
      format.html {redirect_to root_path}
      format.json{render json: @companies.to_json(only: :name, include: {products: {only: :title  }})}
    end
    # render :json => @companies, :include => {:products => {:only => :name}}, :except => [:created_at, :updated_at, :product_id]
  end


  # def show
  #   @product = Product.order(created_at: :desc)
  # end

  private
    def company_params
      params.require(:company).permit(:name)
    end

    def find_company
      @company = Company.find params[:id]
    end
end
