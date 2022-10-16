require 'securerandom'
class Item
    attr_reader :id, :archived, :genre, :author, :source, :label,
    attr_accessor :publish_date
    def initialize(id: ,publish_date:, archived:)
        @id = SecureRandom.random_number(1000)
        @publish_date = publish_date
    end
    
end