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
    todo = ::Todo.create todo_params

    render json: todo

  end

  def todo_params
    params.require(:todo).permit(:name, :description, :priority, :label)
  end

end
