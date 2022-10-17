require_relative '../item'

describe Item do
  before :each do
    @item = Item.new(publish_date: '01-20-1990', archived: true)
  end

  it 'Should be an object instance of Item' do
    expect(@item).to be_an_instance_of Item
  end

  it 'Method can_be_archived? should return true' do
    archiveable = @item.can_be_archieved?
    expect(archiveable).to eql true
  end

  it 'Method move_to_archive should change atribute archived to true' do
    @item.move_to_archive
    expect(@item.archived).to eql true
  end
end
