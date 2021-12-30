class Public::HomesController < ApplicationController
  def top
    @author = Author.all
  end

  def about; end

  def author_params
    params.require(:author).permit(:name)
  end
end
