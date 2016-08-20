require_relative './config/application'
TodoListApplication = TodoList::Application.new

require_relative './config/routes'

run TodoListApplication
