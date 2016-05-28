class EpisodesController < ApplicationController
before_action :find_podcast
before_action :find_episode, only: [:show]
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
  @episode = find_episode
  @episodes = Episode.where(podcast_id: @podcast).order('created_at DESC').reject { |e| e.id == @episode.id }
end


private

def episode_params
  params.require(:episode).permit(:title,:description)
end

def find_podcast
  @podcast = Podcast.find(params[:podcast_id])
end

def find_episode
  @episode = Episode.find(params[:id])
end

end