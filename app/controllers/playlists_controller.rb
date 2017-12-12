class PlaylistsController < ApplicationController
  def new
  end

  def create
    spotify_user = RSpotify::User.new(JSON.parse(current_user.spotify_info))
    playlist = spotify_user.create_playlist!(params[:name])
  end

  def playlist_params
    params.require(:playlist).permit(:name)
  end
end
