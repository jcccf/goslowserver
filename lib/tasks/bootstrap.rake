namespace :bootstrap do
  desc "Add base suggestions"
  task :add_base_suggestions => :environment do
    # These suggestions have ID 1 to 21, order of creation matters!
    Suggestion.create(:name => 'Breathe')
    Suggestion.create(:name => 'Choose Consciously')
    Suggestion.create(:name => 'Connect with Nature')
    Suggestion.create(:name => 'Connect with Others')
    Suggestion.create(:name => 'Control Worry')
    Suggestion.create(:name => 'Eat Well')
    Suggestion.create(:name => 'Exercise')
    Suggestion.create(:name => 'Express Gratitude')
    Suggestion.create(:name => 'Get More Sleep')
    Suggestion.create(:name => 'Grow from Mistakes')
    Suggestion.create(:name => 'Laugh')
    Suggestion.create(:name => 'Listen to Music')
    Suggestion.create(:name => 'Meditate')
    Suggestion.create(:name => 'Play')
    Suggestion.create(:name => 'Power Nap')
    Suggestion.create(:name => 'Reflect')
    Suggestion.create(:name => 'Relax your Body')
    Suggestion.create(:name => 'Think Positively')
    Suggestion.create(:name => 'Thoughts Matter')
    Suggestion.create(:name => 'Use Resources')
    Suggestion.create(:name => 'Visualize')
  end
  
  desc "Run all bootstrapping tasks"
  task :all => [:add_base_suggestions]
end