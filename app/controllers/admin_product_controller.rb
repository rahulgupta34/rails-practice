class AdminProductController < ApplicationController
  def index
    @hello = "this is hello world from admin product controller."
    render template: "home/index"
  end
end
