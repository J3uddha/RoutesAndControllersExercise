require 'addressable/uri'
require 'rest-client'

# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/users.html'
# ).to_s
#
# puts RestClient.get(url)

def create_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users.json'
  ).to_s

  puts RestClient.post(
    url,
    { user: { username: "Gizmo"} }
  )
end

# create_user

# puts RestClient.post(
#   url,
#   { user: { name: "Gizmo" } }
# )

#Update
# puts RestClient.patch( 'http://localhost:3000/users/1', { user: { email: "jake@app.io" }})

#destroy
# puts RestClient.delete('http://localhost:3000/users/3')



#contacts
#index
puts RestClient.get('http://localhost:3000/users/1/contacts')
#create
# puts RestClient.post('http://localhost:3000/contacts', { contact: { name: "Joe", email: 'joe@dull.com', user_id: 4, } })
# #show
puts RestClient.get('http://localhost:3000/contacts/3')
# #update
puts RestClient.patch('http://localhost:3000/contacts/3', { contact: { email: 'joe@notsodull.com' }})
# #destroy
puts RestClient.delete('http://localhost:3000/contacts/3')
