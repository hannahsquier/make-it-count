class VoterStatsController < ApplicationController
  def new

  end

  def show

    @data = StateData.new(params[:state])

  end

  def create

    @address = Address.new(voter_stats_params[:address])
    @state = @address.get_state
    redirect_to address_voter_stats_path(
            state: @address.get_state,
             address: @address.address.parameterize)
  end

  private

  def voter_stats_params
    params.require(:voter_stats).permit(:address)
  end
end
