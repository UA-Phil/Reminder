require_relative "spec_helper"
require_relative "../reminder_sinatra.rb"

def app
  ReminderSinatra
end

describe ReminderSinatra do
  it "responds with a welcome message" do
    get '/'

    last_response.body.must_include 'Welcome to the Sinatra Template!'
  end
end
