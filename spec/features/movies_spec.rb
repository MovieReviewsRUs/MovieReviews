require 'pry-byebug'
require 'rails_helper'

describe 'Post Requests' do
  before(:all) do
    Movie.destroy_all
    movies = Movie.create([
      {title: 'The Lego Move', total_gross: 257756197, release_date: DateTime.new(2014,2,07,9), mpaa_rating: 'pg', description: 'rate this movie!'},
      {title: '22 Jump Street', total_gross: 191616238, release_date: DateTime.new(2014,6,13,9), mpaa_rating: 'r', description: 'rate this movie!'},
      {title: 'Gone Girl', total_gross: 167735396, release_date: DateTime.new(2014,10,03,9), mpaa_rating: 'r', description: 'rate this movie!'},
      ])

  end

  describe '#index' do
    it 'gets all of the movies' do
      get '/movies'
      expect(response).to be_success
      json = JSON.parse(response.body)
      expect(json.length).to eq 25
    end
  end

  describe '#create' do
    it 'should create a new movie and return it' do
      post '/movies',
      { movie: {title: 'Gone Girl', total_gross: 167735396, release_date: DateTime.new(2014,10,03,9), mpaa_rating: 'r', description: 'rate this movie!'} }.to_json,
      { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }
      expect(response).to be_success
      expect(response.content_type).to be Mime::JSON

      movie = JSON.parse(response.body)
      expect(movie['title']).to eq "Gone Girl"
    end
  end

  #  take notes in comments as you type
  describe '#show' do
    it 'should retreive a single movie by id and return json' do
      @movie = @movies.first
      get "/movies/#{@movie.id}"
      expect(response).to be_success

      movie = JSON.parse(response.body)
      expect(movie['title']).to eq @movie.title
    end
  end

  describe '#update' do
    it 'should update the parameters of the movie and return that movie' do
      @movie = @movies.first
      put "/movies/#{@movie.id}",
      { movie: {
          title: "Something else",
          body: "A new body"
        }
      }.to_json,
      { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }

      expect(response).to be_success
      expect(response.content_type).to be Mime::JSON

      movie = JSON.parse(response.body)
      expect(movie['title']).to eq "Something else"
    end
  end

  describe '#destroy' do
    it 'should kill the movie' do
      movie = @movies.first
      delete "/movies/#{movie.id}"
      expect(response.status).to eq 202
    end
  end
end
