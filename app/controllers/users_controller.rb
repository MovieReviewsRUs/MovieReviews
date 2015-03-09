class UsersController < ApplicationController

  before_filter :authenticate, only: [:index]




end
