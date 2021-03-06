class EpisodesController < ApplicationController
before_action :authenticate_podcast!, except: [:show]
# before_action :require_permission
before_action :find_podcast
before_action :find_episode, only: [:show, :edit, :update, :destroy]

def new
  @episode = @podcast.episodes.new
end

def create
  @episode = @podcast.episodes.new episode_params
  if @episode.save
    #need to find both podcast id and episode id because of the nested routes
    redirect_to podcast_episode_path(@podcast, @episode)
  else
    render 'new'
  end
end

def show
  @episodes = Episode.where(podcast_id: @podcast).limit(6).order('created_at DESC').reject { |e| e.id == @episode.id }
end

def edit
end

def update
  if @episode.update(episode_params)
    redirect_to podcast_episode_path(@podcast, @episode), notice: "Episode was succesfully updated!"
  else
    render 'edit'
  end
end

def destroy
  @episode.destroy
  redirect_to root_path
end

private

def episode_params
  params.require(:episode).permit(:title,:description,:episode_thumbnail, :mp3)
end

def find_podcast
  @podcast = Podcast.find(params[:podcast_id])
end

def find_episode
  @episode = Episode.find(params[:id])
end

#TO prevent users from going into other user
def  require_permission
  if current_podcast != Podcast.find(params[:podcast_id])
    redirect_to root_path, notice: "Sorry You are not allowed to view that page"
  end
end

end