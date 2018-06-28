class MatchesController < ApplicationController
  before_action :load_league, only: :index

  def index
    # @matches = Match.start_match.page(params[:page]).per(Settings.per.limit_match)
    @matches = Match.start_match.leaguage_find(params[:leg]).page(params[:page]).
               per(Settings.per.limit_match)
    # if params[:leg]
    #   @matches = Match.where(league_id: params[:leg]).page(params[:page]).per(Settings.per.limit_match)
    # end
  end

  def show
    @match = Match.find_by name: params[:name]

    if @match.nil?
      flash[:danger] = t ".match_not_exist"
      redirect_to root_url
    else
      @chatroom = @match.chat_room
      @message = Message.new
      @informations = @match.informations
    end
  end

  private

  def load_league
    @leagues = League.select :id, :name
  end
end
