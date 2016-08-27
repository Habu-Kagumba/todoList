class TodosController < RapidRunty::BaseController
  def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find(params['id'])
  end

  def new
  end

  def create
    todo = Todo.new
    todo.title = params['title']
    todo.body = params['body']
    todo.created_at = Time.now.to_s
    todo.save

    redirect_to '/todos'
  end

  def edit
    @todo = Todo.find(params['id'])
  end

  def update
    todo = Todo.find(params['id'])
    todo.title = params['title']
    todo.body = params['body']
    todo.save

    redirect_to "/todos/#{todo.id}"
  end

  def destroy
    todo = Todo.find(params['id'])
    todo.destroy

    redirect_to '/todos'
  end
end
