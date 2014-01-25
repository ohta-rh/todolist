##
# = TODOリストを表示、登録するControllerです。
class TodosController < ApplicationController

  #
  # === 最新のTODOリストを表示します
  #
  def index
    @todos = ::Todo.order(priority: :asc)
  end

  #
  # === TodoListを作成します
  #
  def create
    todo = ::Todo.create todo_params

    redirect_to [:todos]
  end

  def todo_params
    params.require(:todo).permit(:title, :description, :priority, :label)
  end

end
