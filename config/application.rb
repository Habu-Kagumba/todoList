require 'rapid_runty'

$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'app', 'controllers')

require 'todos_controller'

module TodoList
  class Application < RapidRunty::Application
  end
end
