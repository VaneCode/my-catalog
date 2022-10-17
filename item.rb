require 'securerandom'
class Item
  attr_reader :id, :genre, :author, :source, :label, :archived
  attr_accessor :publish_date

  def initialize(publish_date:, archived:)
    @id = SecureRandom.random_number(1000)
    @publish_date = publish_date
    @archived = archived
  end

  def add_genre(genre)
    @genre = genre
  end

  def add_author(author)
    @author = author
  end

  def add_source(source)
    @source = source
  end

  def add_label(label)
    @label = label
  end

  def move_to_archive
  end

  private

  def can_be_archieved?
  end
end
