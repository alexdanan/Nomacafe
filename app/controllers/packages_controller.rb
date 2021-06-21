class PackagesController < ApplicationController
  before_action :skip_pundit?
  def index
    @packages = policy_scope(Package)


  end
end
