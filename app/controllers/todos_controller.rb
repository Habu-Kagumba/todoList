class TodosController < RapidRunty::BaseController
  def index
    @todos = []
    render
  end

  def new
    redirect_to '/'
  end

  def show
    JSON.dump params
  end
end
