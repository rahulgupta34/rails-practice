class RepositoriesController < ApplicationController
  before_action :authenticate_user!

  def index
    repos = current_user.repository
    response = RestClient.get(repos.repo_url)
    @repo_data = JSON.parse(response)
  end

end
