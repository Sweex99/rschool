class TestsController < ApplicationController
    def index
        binding.pry
        @user = User.first
    end
end
