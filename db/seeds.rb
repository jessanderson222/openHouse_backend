Renter.destroy_all
Agent.destroy_all 
Property.destroy_all 
Match.destroy_all

Renter.create(username:"jess", email:"jess@email.com", img_url:"https://images.unsplash.com/photo-1470227244774-0481686cbb37?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80", bedrooms:2, bathrooms:1, distance_to_subway:0.2, borough:"Brooklyn", neighborhood:"DUMBO", pet_friendly:true, elevator:false, laundry:true, doorman:false, move_in_date:"3/1/2019", rent_min:3000, rent_max:3800)

Agent.create(name:"Jeff Goldblum", email:"jeff@goldblum.com", company:"Goldblum Realty", img_url:"https://upload.wikimedia.org/wikipedia/commons/6/64/Jeff_Goldblum_Deauville_2017.jpg")
Agent.create(name:"Ian Malcolm", email:"ian@jurassic.com", company:"Park Realty", img_url:"https://upload.wikimedia.org/wikipedia/commons/d/df/Jeff_Goldblum.jpg")
Agent.create(name:"Benny Burnet", email:"benny@apt313.com", company:"Apartment 313", img_url:"https://c1.staticflickr.com/8/7420/12461643795_88f3de0f21_b.jpg")

Property.create(agent_id: 1, bedrooms:2, bathrooms:1, distance_to_subway:0.3, borough:"Brooklyn", neighborhood:"DUMBO", pet_friendly:true, elevator:false, laundry:true, doorman:false, move_in_date:"3/1/2019", rent:3800, img_1:"https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=973&q=80", img_2:"https://images.unsplash.com/photo-1499916078039-922301b0eb9b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80", img_3:"https://images.unsplash.com/photo-1497404468354-3f56f97e04ca?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80")
Property.create(agent_id:2, bedrooms:1, bathrooms:1, distance_to_subway:0.1, borough:"Manhattan", neighborhood:"Murray Hill", pet_friendly:true, elevator:true, laundry:true, doorman:false, move_in_date:"3/1/2019", rent:3300, img_1:"https://images.unsplash.com/photo-1493809842364-78817add7ffb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80", img_2:"https://images.unsplash.com/photo-1536858974309-969976df0d4d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80", img_3:"https://images.unsplash.com/photo-1517414628894-83d47b22f233?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1268&q=80")
Property.create(agent_id:1, bedrooms:2, bathrooms:1, distance_to_subway:0.3, borough:"Brooklyn", neighborhood:"Williamsburg", pet_friendly:false, elevator:false, laundry:false, doorman:false, move_in_date:"2/15/2019", rent:2500, img_1:"https://images.unsplash.com/photo-1530334565651-210b286480b7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80", img_2:"https://images.unsplash.com/photo-1521732292260-b73d63a37f5b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80", img_3:"https://images.unsplash.com/photo-1515938541268-cb8a388444b4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1268&q=80")
Property.create(agent_id:1, bedrooms:0, bathrooms:1, distance_to_subway:0.15, borough:"Brooklyn", neighborhood:"Bushwick", pet_friendly:true, elevator:false, laundry:false, doorman:false, move_in_date:"2/20/2019", rent:1900, img_1:"https://images.unsplash.com/photo-1501183638710-841dd1904471?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80", img_2:"https://images.unsplash.com/photo-1495766682737-d96292f4eb4a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80", img_3:"https://images.unsplash.com/photo-1518201660989-894b770d6e3c?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80")
Property.create(agent_id:2, bedrooms:0, bathrooms:1, distance_to_subway:0.15, borough:"Manhattan", neighborhood:"Chelsea", pet_friendly:false, elevator:false, laundry:true, doorman:false, move_in_date:"3/1/2019", rent:2500, img_1:"https://images.unsplash.com/photo-1488805990569-3c9e1d76d51c?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80", img_2:"https://images.unsplash.com/photo-1521515595231-336e8cade29b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80", img_3:"https://images.unsplash.com/photo-1497404468354-3f56f97e04ca?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80")
Property.create(agent_id:3, bedrooms:3, bathrooms:1, distance_to_subway:0.30, borough:"Manhattan", neighborhood:"West Harlem", pet_friendly:true, elevator:false, laundry:true, doorman:false, move_in_date:"3/1/2019", rent:3400, img_1:"https://images.unsplash.com/photo-1530334565651-210b286480b7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80", img_2:"https://images.unsplash.com/photo-1501876725168-00c445821c9e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80", img_3:"https://images.unsplash.com/photo-1523413651479-597eb2da0ad6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1268&q=80")
Property.create(agent_id:1, bedrooms:0, bathrooms:1, distance_to_subway:0.2, borough:"Manhattan", neighborhood:"Upper West Side", pet_friendly:false, elevator:true, laundry:true, doorman:false, move_in_date:"2/15/2019", rent:1600, img_1:"https://images.unsplash.com/photo-1486304873000-235643847519?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1489&q=80", img_2:"https://images.pexels.com/photos/930705/pexels-photo-930705.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", img_3:"https://images.unsplash.com/photo-1512621480870-77463b1b90c7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1051&q=80")
Property.create(agent_id:1, bedrooms:1, bathrooms:1, distance_to_subway:0.15, borough:"Queens", neighborhood:"Long Island City", pet_friendly:false, elevator:true, laundry:true, doorman:true, move_in_date:"3/1/2019", rent:3100, img_1:"https://images.pexels.com/photos/276724/pexels-photo-276724.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940/", img_2:"https://images.unsplash.com/photo-1512918728675-ed5a9ecdebfd?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80", img_3:"https://images.pexels.com/photos/271689/pexels-photo-271689.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
Property.create(agent_id:3, bedrooms:2, bathrooms:2, distance_to_subway:0.20, borough:"Manhattan", neighborhood:"East Village", pet_friendly:true, elevator:false, laundry:true, doorman:false, move_in_date:"3/15/2019", rent:4000, img_1:"https://images.pexels.com/photos/584399/living-room-couch-interior-room-584399.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", img_2:"https://images.pexels.com/photos/1457847/pexels-photo-1457847.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", img_3:"https://images.unsplash.com/photo-1496664444929-8c75efb9546f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80")
Property.create(agent_id:3, bedrooms:2, bathrooms:1, distance_to_subway:0.15, borough:"The Bronx", neighborhood:"Morris Park", pet_friendly:false, elevator:true, laundry:true, doorman:false, move_in_date:"3/1/2019", rent:1750, img_1:"https://images.unsplash.com/photo-1529408686214-b48b8532f72c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80", img_2:"https://images.unsplash.com/photo-1482867899247-e295efdd8c1a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80", img_3:"https://images.pexels.com/photos/2705/bed-bedroom-room-furniture.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
Property.create(agent_id:2, bedrooms:4, bathrooms:3, distance_to_subway:0.3, borough:"Brooklyn", neighborhood:"Williamsburg", pet_friendly:true, elevator:false, laundry:true, doorman:false, move_in_date:"3/1/2019", rent:4490, img_1:"https://images.unsplash.com/photo-1464890100898-a385f744067f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80", img_2:"https://images.unsplash.com/photo-1438849069381-c0d50f167a0d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80", img_3:"https://images.unsplash.com/photo-1520619831939-20749195c50f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1302&q=80" )
Property.create(agent_id:2, bedrooms:1, bathrooms:1, distance_to_subway:0.54, borough:"Queens", neighborhood:"Astoria", pet_friendly:false, elevator:false, laundry:false, doorman:false, move_in_date:"2/14/2019", rent:1850, img_1:"https://images.unsplash.com/photo-1502672023488-70e25813eb80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1318&q=80", img_2:"https://images.pexels.com/photos/90317/pexels-photo-90317.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", img_3:"https://images.pexels.com/photos/1358901/pexels-photo-1358901.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
Property.create(agent_id:3, bedrooms:1, bathrooms:1, distance_to_subway:0.25, borough:"Manhattan", neighborhood:"Hell's Kitchen", pet_friendly:true, elevator:true, laundry:true, doorman:true, move_in_date:"2/14/2019", rent:6400, img_1:"https://images.pexels.com/photos/237371/pexels-photo-237371.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", img_2:"https://images.pexels.com/photos/1663263/pexels-photo-1663263.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", img_3:"https://images.pexels.com/photos/1504020/pexels-photo-1504020.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
Property.create(agent_id:1, bedrooms:2, bathrooms:1, distance_to_subway:0.15, borough:"Manhattan", neighborhood:"Central Harlem", pet_friendly:true, elevator:false, laundry:true, doorman:false, move_in_date:"2/1/2019", rent:2300, img_1:"https://images.unsplash.com/photo-1504479519050-de194bc81ba6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1268&q=80", img_2:"https://images.unsplash.com/photo-1493150134366-cacb0bdc03fe?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80", img_3:"https://images.pexels.com/photos/358592/pexels-photo-358592.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
Property.create(agent_id:1, bedrooms:1, bathrooms:1, distance_to_subway:0.47, borough:"Manhattan", neighborhood:"Lincoln Square", pet_friendly:false, elevator:true, laundry:true, doorman:true, move_in_date:"2/1/2019", rent:3500, img_1:"https://unsplash.com/photos/gREquCUXQLI", img_2:"https://unsplash.com/photos/I72dFJRFT3k", img_3:"https://unsplash.com/photos/R-w5Q-4Mqm0")
Property.create(agent_id:2, bedrooms:3, bathrooms:3, distance_to_subway:0.14, borough:"Manhattan", neighborhood:"Lenox Hill", pet_friendly:true, elevator:true, laundry:true, doorman:true, move_in_date:"2/1/2019", rent:25000, img_1:"https://images.unsplash.com/photo-1507089947368-19c1da9775ae?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1055&q=80", img_2:"https://unsplash.com/photos/mx4mSkK9zeo", img_3:"https://images.pexels.com/photos/262048/pexels-photo-262048.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
Property.create(agent_id:2, bedrooms:2, bathrooms:1, distance_to_subway:0.3, borough:"Brooklyn", neighborhood:"Prospect Heights", pet_friendly:false, elevator:false, laundry:false, doorman:false, move_in_date:"2/1/2019", rent:2750, img_1:"https://unsplash.com/photos/DhFHtkECn7Q", img_2:"https://unsplash.com/photos/btK6EUoh8Tc", img_3:"https://images.unsplash.com/photo-1540518614846-7eded433c457?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1339&q=80")
Property.create(agent_id:3, bedrooms:1, bathrooms:1, distance_to_subway:0.3, borough:"Brooklyn", neighborhood:"Greenpoint", pet_friendly:true, elevator:true, laundry:true, doorman:true, move_in_date:"3/1/2019", rent:3000, img_1:"https://images.unsplash.com/photo-1499955085172-a104c9463ece?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80", img_2:"https://images.unsplash.com/photo-1522791465802-47616431a4cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1334&q=80", img_3:"https://images.unsplash.com/photo-1521783593447-5702b9bfd267?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1042&q=80")
Property.create(agent_id:2, bedrooms:2, bathrooms:1, distance_to_subway:0.23, borough:"Brooklyn", neighborhood:"Flatbush", pet_friendly:false, elevator:false, laundry:false, doorman:false, move_in_date:"2/1/2019", rent:1475, img_1:"https://images.unsplash.com/photo-1498061390976-2b09e3889580?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80", img_2:"https://images.unsplash.com/photo-1542229336-fcba447980f9?ixlib=rb-1.2.1&auto=format&fit=crop&w=1268&q=80", img_3:"https://images.unsplash.com/photo-1547110287-71448271b1de?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80")
Property.create(agent_id:1, bedrooms:3, bathrooms:1, distance_to_subway:0.01, borough:"Queens", neighborhood:"Astoria", pet_friendly:false, elevator:false, laundry:false, doorman:false, move_in_date:"2/1/2019", rent:2695, img_1:"https://images.unsplash.com/photo-1521147044359-e6c12eb7a189?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80", img_2:"https://images.pexels.com/photos/892618/pexels-photo-892618.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", img_3:"https://images.pexels.com/photos/709767/pexels-photo-709767.png?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
Property.create(agent_id:1, bedrooms:2, bathrooms:1, distance_to_subway:0.2, borough:"Manhattan", neighborhood:"South Harlem", pet_friendly:false, elevator:false, laundry:true, doorman:false, move_in_date:"2/14/2019", rent:2500, img_1:"https://images.unsplash.com/photo-1529408632839-a54952c491e5?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80", img_2:"https://images.unsplash.com/photo-1530334565651-210b286480b7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80", img_3:"https://images.unsplash.com/photo-1517414628894-83d47b22f233?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1268&q=80")


Match.create(property_id: 1, renter_id:1)
