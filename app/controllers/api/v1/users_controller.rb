# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApplicationController
      def show
        user = User.find(params[:id])

        render json: user.slice(:email, :password, :id).as_json
      end
    end
  end
end
