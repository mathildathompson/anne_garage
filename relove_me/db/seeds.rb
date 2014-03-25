User.destroy_all
Sale.destroy_all
Item.destroy_all

User.create(:first_name => 'John', :last_name => 'Smith', :email_address => 'jonny_s@gmail.com', :street_number => '15', :street_name => '12/302 Booleeeean street,', :suburb => 'Redfern', :state => 'NSW', :post_code => '2042', :phone_number => '9374 3729')
Sale.create(:start_time => "9:00", :finish_time => "17:00", :date => "12/04/2014", :location => "Redfern", :price_range => "5-200")
Item.create(:title => "Dragonfly lamp", :condition => "near new", :description => "vintage lamp with a porcelain dragonfly attached on the side of the base", :image => "http://newknowledgebase.com/wp-content/uploads/2013/08/Blue-Dragonfly-Tiffany-Lit-Base-Antique-Stained-Glass-Table-Lamps.jpg", :price_range => "50-75")