require 'securerandom'

class Label

    attr_accessor :name
    attr_reader :id, :items

    def initialize(id:, name:)
        @id = id || SecureRandom.random_number(1000)
        @name = name
        @items = []
    end
end