class HomeController < ApplicationController
  def homepage
  end

  def printable
  	@so_header = current_user.so_headers.find(current_user.so_headers.last.id)
  end
end
