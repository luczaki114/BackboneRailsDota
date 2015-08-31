class HeroesController < ApplicationController
  # before_filter :restrict_access


  def index
    @key = ENV['API_KEY']
    @heros = Hero.all
    render json: @heros
  end

  def show
    @hero = Hero.find(params[:id])
    render json: @hero
  end

  def create
    @hero = Hero.create({
      :name => params[:name]
      })
    render json: @hero
  end

  def update
    @hero = Hero.find(params[:id])
    @hero.update(hero_params)
    render json: @hero
  end

  def destroy
    @hero = Hero.find(params[:id])
    @hero.destroy

    @message = {:message => 'A hero with an id of ' + params[:id] + ' has been destroyed.'}
    render json: @message
  end

private
  # Use to secure api
  def restrict_access
    authenticate_or_request_with_http_token do |token, options|
      ApiKey.exists?(access_token: token)
    end
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def hero_params
    params.require(:hero).permit(:name)

    #  :ability1, :ability2, :ability3, :ability4, :ability5, :ability6, :str, :str_gain, :agi, :agi_gain, :intel, :intel_gain, :move_speed, :sight_range, :armor, :base_attack_time, :damage, :attack_point)
  end

end
