class PlaylistsController < ApplicationController

  def index
    RSpotify.authenticate(ENV["spotify_client_id"], ENV["spotify_secret_id"])
    # me = RSpotify::User.find('ryanmccool13')
    me = RSpotify::User.find('12122573728')
    me.playlists.each do |playlist|
      puts playlist.name
    end
     puts me.playlists[0].tracks.first.preview_url
     puts me.playlists[0].tracks.first.album.images
  end

# # Now you can access playlists in detail, browse featured content and more


# me.playlists #=> (Playlist array)

# # Find by id
# playlist = RSpotify::Playlist.find('guilhermesad', '1Xi8mgiuHHPLQYOw2Q16xv')
# playlist.name               #=> "d33p"
# playlist.description        #=> "d33p h0uz"
# playlist.followers['total'] #=> 1
# playlist.tracks             #=> (Track array)

# # Search by category
# party = RSpotify::Category.find('party')
# party.playlists #=> (Playlist array)
# categories = RSpotify::Category.list # See all available categories

# # Access featured content from Spotify's Browse tab
# featured_playlists = RSpotify::Playlist.browse_featured(country: 'US')
# new_releases = RSpotify::Album.new_releases(country: 'ES')

# # Access tracks' audio features
# sorry = RSpotify::Track.search("Sorry").first
# sorry.audio_features.danceability #=> 0.605
# sorry.audio_features.energy #=> 0.768
# sorry.audio_features.tempo #=> 100.209

# # Get recommendations
# recommendations = RSpotify::Recommendations.generate(seed_genres: ['blues', 'country'])
# recommendations = RSpotify::Recommendations.generate(seed_tracks: my_fav_tracks.map(&:id))
# recommendations = RSpotify::Recommendations.generate(seed_artists: my_fav_artists.map(&:id))
# recommendations.tracks #=> (Track array)

end
