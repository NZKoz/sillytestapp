require 'performance/test_helper'

class GreetingsTest < ActionController::PerformanceTest
  def test_index
    100.times do
      get greetings_path
      assert_response :ok
    end
  end
end
