class Show < ActiveRecord::Base 
  
  #binding.pry 
  def self.highest_rating
    #returns the TV show with the highest rating (FAILED - 1)
    Show.maximum(:rating)
  end
  
  def self.most_popular_show
    #returns the tv show with the highest rating (FAILED - 2)
    Show.order("rating DESC").first
  end
  
  def self.lowest_rating
    #returns the TV show with the lowest rating (FAILED - 3)
    Show.minimum(:rating)
  end
  
  def self.least_popular_show
    #returns the tv show with the lowest rating (FAILED - 4)
    Show.order("rating").first
  end
  
  def self.ratings_sum
    #returns the sum of all the ratings of all the tv shows (FAILED - 5)
    Show.sum(:rating)
  end
  
  def self.popular_shows
    #returns an array of all of the shows with a rating above 5 (FAILED - 6)
        Show.where("rating > ?", 5)
  end
  
  def self.shows_by_alphabetical_order
    #returns an array of all of the shows, listed in alphabetical order (FAILED - 7)
    Show.order(:name)
  end
  
end