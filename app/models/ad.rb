class Ad < ApplicationRecord
  belongs_to :magazine

  after_destroy :log_destroy_action
  before_save :some_method 


  private 

  def some_method
     puts "hello bafore save callbacks."
  end

  def log_destroy_action
    puts 'Article destroyed'
  end

end
