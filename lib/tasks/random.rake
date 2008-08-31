task :random=>:environment do
  500.times do |i|
    number_of_recipients = rand(10)
    g = Greeting.create! :comment=>"This is greeting #{i} with #{number_of_recipients} recipients"
    number_of_recipients.times do |j|
      g.recipients.create! :name=>"I am recipient #{j} of greeting #{i}"
    end
  end
end