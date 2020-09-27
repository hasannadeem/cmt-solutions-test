class ProvidersController < ApplicationController
  before_action :set_provider, only: %w[show]

  def index
    @providers = Provider.paginate(page: params[:page], per_page: 10).order(created_at: :desc)
  end

  def create
    @response = Npi::Provider.create(permitted_params[:number])
  end

  def show; end

  def top_searched_npis
    @providers = Provider.paginate(page: params[:page], per_page: 10).order(search_count: :desc).select(:number, :search_count)
  end

  private

    def permitted_params
      params.require(:provider).permit(:number)
    end

    def set_provider
      @provider = Provider.find(params[:id])
    end
end
