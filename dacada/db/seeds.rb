User.create first_name:'Alex', last_name:'Smith', email:'a@a.com', password:'asdfasdf', password_confirmation:'asdfasdf', card_number:'1234 1234 1234 1234', street:'1234 Ashland St.', city:'Chicago', state:'IL', notification:'checked'

User.create first_name:'Mike', last_name:'Smith', email:'m@b.com', password:'asdfasdf', password_confirmation:'asdfasdf', card_number:'1234 1234 1234 1234', street:'1234 Ashland st.', city:'Chicago', state:'IL', notification:'checked'

User.create first_name:'Tim', last_name:'Smith', email:'t@mp.com', password:'asdfasdf', password_confirmation:'asdfasdf', card_number:'1234 1234 1234 1234', street:'1234 Ashland st.', city:'Chicago', state:'IL', notification:'checked'

User.create first_name:'Bill', last_name:'Smith', email:'b@s4.com', password:'asdfasdf', password_confirmation:'asdfasdf', card_number:'1234 1234 1234 1234', street:'1234 Ashland st.', city:'Chicago', state:'IL', notification:'checked'

User.create first_name:'Harry', last_name:'Smith', email:'h@k4.com', password:'asdfasdf', password_confirmation:'asdfasdf', card_number:'1234 1234 1234 1234', street:'1234 Ashland st.', city:'Chicago', state:'IL', notification:'checked'

User.create first_name:'Frank', last_name:'Smith', email:'f@c4.com', password:'asdfasdf', password_confirmation:'asdfasdf', card_number:'1234 1234 1234 1234', street:'1234 Ashland st.', city:'Chicago', state:'IL', notification:'checked'

User.create first_name:'David', last_name:'Smith', email:'d@w.com', password:'asdfasdf', password_confirmation:'asdfasdf', card_number:'1234 1234 1234 1234', street:'1234 Ashland st.', city:'Chicago', state:'IL', notification:'checked'

User.create first_name:'Abbey', last_name:'Smith', email:'a@c.com', password:'asdfasdf', password_confirmation:'asdfasdf', card_number:'1234 1234 1234 1234', street:'1234 Ashland st.', city:'Chicago', state:'IL', notification:'checked'

User.create first_name:'Dasha', last_name:'Smith', email:'d@d.com', password:'asdfasdf', password_confirmation:'asdfasdf', card_number:'1234 1234 1234 1234', street:'1234 Ashland st.', city:'Chicago', state:'IL', notification:'checked'

User.create first_name:'Vanessa', last_name:'Smith', email:'v@b.com', password:'asdfasdf', password_confirmation:'asdfasdf', card_number:'1234 1234 1234 1234', street:'1234 Ashland st.', city:'Chicago', state:'IL', notification:'checked'

User.create first_name:'Richard', last_name:'Smith', email:'r@h.com', password:'asdfasdf', password_confirmation:'asdfasdf', card_number:'1234 1234 1234 1234', street:'1234 Ashland st.', city:'Chicago', state:'IL', notification:'checked'

User.create first_name:'Arya', last_name:'Smith', email:'a@s.com', password:'asdfasdf', password_confirmation:'asdfasdf', card_number:'1234 1234 1234 1234', street:'1234 Ashland st.', city:'Chicago', state:'IL', notification:'checked'


Category.create name:'Coding'
Category.create name:'Reads'
Category.create name:'Electronics'
Category.create name:'Appliance'
Category.create name:'Miscellaneous'


Item.create name:'Mouse', description:'Use it with a keyboard, if you really want to.', discount:5, price:20, deal_date:'Wed, 1 Feb 2017 00:00:01 UTC -06:00', manufacturer:'Logitech', stock: 50, category_id:1, photo:"http://img02.deviantart.net/31cb/i/2009/058/4/8/mouse_stock_34_by_hatestock.jpg"
Item.create name:'Coding Book', description:'Learn to code, without the computer!', discount:10, price:50, deal_date:'Thur, 2 Feb 2017 00:00:01 UTC -06:00', manufacturer:'Coding Dojo', stock: 40, category_id:2, photo:"http://www.arturotedeschi.com/wordpress/wp-content/uploads/2014/10/AAD-Grasshopper-Parametric-Manual-Algorithms-Aided-Design-ArturoTedeschi_book-cover-08b.jpg"
Item.create name:'Mac', description:'Like a PC, but a lottle bit better.', discount:140, price:600, deal_date:'Fri, 3 Feb 2017 00:00:01 UTC -06:00', manufacturer:'Apple', stock: 10, category_id:3, photo:"http://www.stargreenmedia.com/wp-content/uploads/2015/05/negative-space.jpg"
Item.create name:'Vacuum', description:'It sucks. Quite literally.', discount:100, price:400, deal_date:'Sat, 4 Feb 2017 00:00:01 UTC -06:00', manufacturer:'Dyson', stock: 30, category_id:4, photo:"http://cdn.media.yp.ca/98074/pcc-3265115219234133202-Miele-Cat-and-Dog_r.jpg"
Item.create name:'Backpack', description:'Take all of your worldly good with you.', discount:12, price:60, deal_date:'Sun, 5 Feb 2017 00:00:01 UTC -06:00', manufacturer:'Topo Designs', stock: 45, category_id:5, photo:"http://cmzone.vzbqbxhynotw9ion96xv.netdna-cdn.com/wp-content/uploads/2013/05/Topo-Designs-Rover-Pack-2.jpg"
Item.create name:'Coffee', description:'Medium roast, maximum burn.', discount:3, price:15, deal_date:'Mon, 6 Feb 2017 00:00:01 UTC -06:00', manufacturer:'Stirbacks', stock: 100, category_id:5, photo:"https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTuHBfLADCpMIZNvq6rJ2JPZ_KD3jh3fugNU1RAikfmeMS3iTlC"
Item.create name:'Book Grab Bag', description:'Get five mystery reads to expand your horizons', discount:15, price:80, deal_date:'Tue, 7 Feb 2017 00:00:01 UTC -06:00', manufacturer:'Simon & Schuster', stock: 100, category_id:2, photo:"http://www.cbc.ca/news2/pointofview/iStock_books.jpg"
Item.create name:'Drone', description:'Birds flying high, you know how it feels.', discount:125, price:500, deal_date:'Wed, 8 Feb 2017 00:00:01 UTC -06:00', manufacturer:'Drones R Us', stock: 50, category_id:3, photo:"https://s.thestreet.com/files/tsc/v2008/photos/contrib/uploads/drones-1209-inside-large_600x400.jpg"
Item.create name:'Retro Hair Dryer', description:'Keep it old school with this fancy pink number.', discount:15, price:75, deal_date:'Thur, 9 Feb 2017 00:00:01 UTC -06:00', manufacturer:'Vidal Sasoon', stock: 90, category_id:4, photo:"http://media.istockphoto.com/photos/pink-hair-dryer-on-pink-and-white-background-picture-id547505274?k=6&m=547505274&s=170667a&w=0&h=s_nq3BUgOWTKE6UuNzLnejfNJhC4mbI09ikncgEUKl4="
Item.create name:'External Hard Drive', description:'Seriously, you need to back that SASS up.', discount:10, price:100, deal_date:'Fri, 10 Feb 2017 00:00:01 UTC -06:00', manufacturer:'Logitech', stock: 200, category_id:1, photo:"http://www.diskdoctors.com/ArticleImages/Virus%20infection%20in%20my%20laptop%20and%20external%20hard%20drive.jpg"
Item.create name:'Earmuffs', description:"Brrr, baby, it's cold outside! Stay warm and adorbs.", discount:5, price:20, deal_date:'Sat, 11 Feb 2017 00:00:01 UTC -06:00', manufacturer:'Stirbacks', stock: 100, category_id:5, photo:"https://s-media-cache-ak0.pinimg.com/originals/37/15/6e/37156ef7554bc5efba3693d349c2e014.jpg"
