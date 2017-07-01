class TeamsController < ApplicationController
#  teams#create
#     new_team GET    /teams/new(.:format)        teams#new
#    edit_team GET    /teams/:id/edit(.:format)   teams#edit
#         team GET    /teams/:id(.:format)        teams#show
#              PATCH  /teams/:id(.:format)        teams#update
#              PUT    /teams/:id(.:format)        teams#update
#              DELETE /teams/:id(.:format)        teams#destroy

#methods to display the teams
  def index
    @teams = Team.all
  end

  def show
     get_team
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    if @team.save
       redirect_to @team
    else
       render 'new'
    end
  end
#methods to edit the entries
  def edit
    get_team
  end
  def update
    get_team
    if @team.update(team_params)
       redirect_to @team
    else
       render 'update'
    end
  end
  #these methods can be loaded only inside this controller
  private
  def team_params
    team_params = params.require(:team).permit(:name, :image_url)
  end
  def get_team
    @team = Team.find(params[:id])
  end
end
