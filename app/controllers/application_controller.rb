class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  

  get "/users" do
    users = User.all
    users.to_json
  end

  
  post "/users" do
    user = User.new(name: params[:name])
    if user.save
      user.to_json
    else
      status 422
      user.errors.to_json
    end
  end

  
  get "/users/:id" do
    user = User.find_by(id: params[:id])
    if user
      user.to_json
    else
      status 404
      { message: "User not found" }.to_json
    end
  end

  
  patch "/users/:id" do
    user = User.find_by(id: params[:id])
    if user
      if user.update(name: params[:name])
        user.to_json
      else
        status 422
        user.errors.to_json
      end
    else
      status 404
      { message: "User not found" }.to_json
    end
  end


  delete "/users/:id" do
    user = User.find_by(id: params[:id])
    if user
      user.destroy
      { message: "User deleted successfully" }.to_json
    else
      status 404
      { message: "User not found" }.to_json
    end
  end

  
  get "/reviews" do
    reviews = Review.all
    reviews.to_json
  end

  
  post "/reviews" do
    review = Review.new(
      title: params[:title],
      content: params[:content],
      user_id: params[:user_id]
    )
    if review.save
      review.to_json
    else
      status 422
      review.errors.to_json
    end
  end

  
  get "/reviews/:id" do
    review = Review.find_by(id: params[:id])
    if review
      review.to_json
    else
      status 404
      { message: "Review not found" }.to_json
    end
  end


  patch "/reviews/:id" do
    review = Review.find_by(id: params[:id])
    if review
      if review.update(
        title: params[:title],
        content: params[:content]
      )
        review.to_json
      else
        status 422
        review.errors.to_json
      end
    else
      status 404
      { message: "Review not found" }.to_json
    end
  end

  
  delete "/reviews/:id" do
    review = Review.find_by(id: params[:id])
    if review
      review.destroy
      { message: "Review deleted successfully" }.to_json
    else
      status 404
      { message: "Review not found" }.to_json
    end
  end
end
