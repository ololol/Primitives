class Output
  def messages
    @messages ||= []
  end

  def puts message
    messages << message
  end
end

def output
  @output ||= Output.new
end


Given /^I see form for login$/ do
end

When /^I enter a "([^"]*)" with password "([^"]*)"$/ do |username, password|
  User.correct?(username, password)
end

Then /^I should $/ do
  pending
end