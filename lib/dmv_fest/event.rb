class DmvFest::Event

  def self.this_year
    puts <<-DOC.gsub /^\s*/,''
      1. Capital Jazz Fest
      2. Broccoli City Fest
      3. Something in the Water
      4. Moonrise Fest
    DOC
    
  end


end
