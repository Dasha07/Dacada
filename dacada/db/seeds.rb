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


Item.create name:'Mouse', description:'Use with keyboard', discount:0.80, price:20, deal_date:'Mon, 30 Jan 2017 20:13:32 UTC +00:00', manufacturer:'Logitech', stock: 50, category_id:1
Item.create name:'Coding Book', description:'Learn to code', discount:0.90, price:50, deal_date:'Mon, 30 Jan 2017 20:13:32 UTC +00:00', manufacturer:'Coding Dojo', stock: 40, category_id:2
Item.create name:'Mac', description:'Like a PC, but not as good', discount:0.75, price:600, deal_date:'Mon, 30 Jan 2017 20:13:32 UTC +00:00', manufacturer:'Apple', stock: 10, category_id:3
Item.create name:'Vacuum', description:'It sucks', discount:0.80, price:400, deal_date:'Mon, 30 Jan 2017 20:13:32 UTC +00:00', manufacturer:'Dyson', stock: 30, category_id:4
Item.create name:'Coffee', description:'Medium Roast', discount:0.50, price:500, deal_date:'Mon, 30 Jan 2017 20:13:32 UTC +00:00', manufacturer:'Stirbacks', stock: 100, category_id:5
