class HomeController < ApplicationController
  def homepage
  end

  def printable
  	@so_header = current_user.so_headers.find(current_user.so_headers.last.id)

    respond_to do |format|
      format.html {render layout: false}
    end
  end
end
