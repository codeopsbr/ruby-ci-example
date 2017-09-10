ENV['RACK_ENV'] = 'test'

require './app'
require 'test/unit'
require 'rack/test'

class HelloWorldTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_home_page
    get '/'
    assert last_response.ok?
    assert_equal 'codeops v2 NG fucker+', last_response.body
  end

end