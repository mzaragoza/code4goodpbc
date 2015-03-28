o = Organization.create(name: 'Test1')
Provider.create(email: 'admin@test.com', password: 'password', organization_id: o.id)
o = Organization.create(name: 'Test2')
Receiver.create(email: 'admin@test.com', password: 'password', organization_id: o.id)
