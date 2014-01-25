##
# = TODOリストを表示、登録するControllerです。
class TodosController < ApplicationController

  #
  # === 最新のTODOリストを表示します
  #
  def index
    @todos = ::Todo.order(priority: :desc)
  end

  #
  # === TodoListを作成します
  #
  def create
  end

end
