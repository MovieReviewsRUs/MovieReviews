require 'spec_helper'
require 'rails_helper'
require 'pry-byebug'





  describe '#index' do
    it 'gets all of the reviews' do
      get '/reviews'
      expect(response).to be_success
      json = JSON.parse(response.comment)
      expect(json.length).to be_success
    end
  end

  describe '#create' do
    it 'should create a new review and return it'  do
      post '/reviews',
      { review: {
          author: "JSONWharff",
          comment: "Cras mattis consectetur purus sit amet fermentum. Maecenas faucibus mollis interdum. Nulla vitae elit libero, a pharetra augue. Donec ullamcorper nulla non metus auctor fringilla.",
          star_rating: 5
        } }.to_json,
      { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }
      expect(response).to be_success
      expect(response.content_type).to be Mime::JSON

      post = JSON.parse(response.star_rating)
      expect(post['star_rating']).to eq 5
    end
  end

  # #  take notes in comments as you type
  # describe '#show' do
  #   it 'should retreive a single post by id and return json' do
  #     @post = @posts.first
  #     get "/posts/#{@post.id}"
  #     expect(response).to be_success

  #     post = JSON.parse(response.body)
  #     expect(post['title']).to eq @post.title
  #   end
  # end

  # describe '#update' do
  #   it 'should update the parameters of the post and return that post' do
  #     @post = @posts.first
  #     put "/posts/#{@post.id}",
  #     { post: {
  #         title: "Something else",
  #         body: "A new body"
  #       }
  #     }.to_json,
  #     { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }

  #     expect(response).to be_success
  #     expect(response.content_type).to be Mime::JSON

  #     post = JSON.parse(response.body)
  #     expect(post['title']).to eq "Something else"
  #   end
  # end

  # describe '#destroy' do
  #   it 'should kill the post' do
  #     post = @posts.first
  #     delete "/posts/#{post.id}"
  #     expect(response.status).to eq 202
  #     # posts = JSON.parse(response.body)
  #     # expect(posts.length).to eq 24
  #   end
  # end
# end






























