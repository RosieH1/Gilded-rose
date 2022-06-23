# require File.join(File.dirname(__FILE__), 'gilded_rose')
require_relative '../gilded_rose'

describe GildedRose do

  describe "#update_quality" do
    it "does not change the name" do
      items = [Item.new("foo", 0, 0)]
      GildedRose.new(items).update_quality()
      expect(items[0].name).to eq "foo"
    end
    it 'reduces the sell_in at the end of day' do 
      item = [Item.new("chocolate", 4, 10)]
      GildedRose.new(item).update_quality()
      expect(item[0].sell_in).to eq 3 
    end
  end
end
