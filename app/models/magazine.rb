class Magazine < ApplicationRecord
  
  validates :name, presence: true

  has_many :ads, dependent: :destroy

  # after_initialize :magazine_find
  # after_find :after_find_callback
  # before_create :call_before_object_create
  # before_validation :check_name, on: :create
  # after_commit :send_notification
  # after_touch do |magazine|
  #    puts magazine.name
  # end 

  # after_rollback :testing_rollback

  # before_save :some_method, if: :boolean_value_return?
  after_create_commit :create_commit

  private 

    def create_commit
        puts "create commit for after create commit."
    end

  # def testing_rollback
  #     puts "rollback callback runs"
  # end

  # def some_method
  #    puts "hello bafore save callbacks."
  # end

  # def boolean_value_return?
  #    return true
  # end

  # def send_notification
  #     puts "create or update"
  # end

  # def magazine_find
  #     puts self.name.titleize
  # end

  # def after_find_callback
  #     puts "hello"
  # end

  # def call_before_object_create
  #     puts "before create call back trigger."
  # end

  # def check_name
  #     puts "before validation in runs" 
  # end

end
