require_relative './config/application'
ROOT_DIR = __dir__

TodoListApplication = TodoList::Application.new

require_relative './config/routes'

use Rack::Static, root: 'public', urls: ['/images', '/js', '/css']
use Rack::MethodOverride
use Rack::ContentLength
use Rack::Reloader, 0

run TodoListApplication
