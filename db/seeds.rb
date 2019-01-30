Renter.destroy_all
Agent.destroy_all 
Property.destroy_all 
Match.destroy_all

Renter.create(username:"jess", email:"jess@email.com", img_url:"https://images.unsplash.com/photo-1470227244774-0481686cbb37?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80", bedrooms:1, bathrooms:1, distance_to_subway:0.2, borough:"Brooklyn", neighborhood:"DUMBO", pet_friendly:true, elevator:false, laundry:true, doorman:false, move_in_date:"3/1/2019", rent_min:700, rent_max:1400)

Agent.create(name:"Jeff Goldblum", email:"jeff@goldblum.com", company:"Goldblum Realty", img_url:"https://upload.wikimedia.org/wikipedia/commons/6/64/Jeff_Goldblum_Deauville_2017.jpg")

Property.create(agent_id: 1, bedrooms:1, bathrooms:1, distance_to_subway:0.3, borough:"Brooklyn", neighborhood:"DUMBO", pet_friendly:true, elevator:false, laundry:true, doorman:false, move_in_date:"3/1/2019", rent:1300, img_1:"https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=973&q=80", img_2:"https://images.unsplash.com/photo-1499916078039-922301b0eb9b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80", img_3:"https://images.unsplash.com/photo-1497404468354-3f56f97e04ca?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80")

Match.create(property_id: 1, renter_id:1)
