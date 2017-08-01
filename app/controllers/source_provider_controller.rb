class SourceProviderController < ApplicationController
  before_action :set_test, only: [:show]

  # GET /source_providers
  def index
    @source_providers = SourceProvider.all

    render json: @source_providers
  end

  # GET /source_providers/1
  def show
    render json: @source_provider
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_test
    @source_provider = SourceProvider.find(params[:id])
  end

end
