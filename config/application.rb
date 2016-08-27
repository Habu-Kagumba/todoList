require 'rapid_runty'

$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'app', 'controllers')
$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'app', 'models')

module TodoList
  class Application < RapidRunty::Application
  end
end
