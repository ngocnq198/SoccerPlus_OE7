class LiveScoreController < ApplicationController
  before_action :load_league, only: :index

  def index
    @matches = Match.end_match.leaguage_find(params[:leg]).page(params[:page]).
               per Settings.per.limit_match
    @lives = Match.live Settings.live
  end

  private

  def load_league
    @leagues = League.select :id, :name
  end
end
