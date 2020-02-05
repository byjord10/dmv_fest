class DmvFest::CLI

  def call
    puts "Here is a list of music festivals in the DMV.
    Select a number assigned to a Festival to get more information"
    festival_list
  end

  def festival_list
    puts <<-DOC
      1. Capital Jazz Fest
      2. Broccoli City Fest
      3. Something in the Water
      4. Moonrise Fest
    DOC
  end
end




end
