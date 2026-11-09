class PaginasController < ApplicationController
  def inicio
    @posts = Post.order(created_at: :desc)
  end
end
