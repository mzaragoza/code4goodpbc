o = Organization.create(
  name: 'Moes Place',
  address: '4134 Carambola Circle South Suite 202',
  city: 'Coconut Creek',
  state: 'Florida',
  zip: '33066'
)
Provider.create(email: 'admin@test.com', password: 'password', organization_id: o.id)
o = Organization.create(
  name: 'Aldos Place',
  address: '8555 NW 177th Street',
  city: 'Hialeah',
  state: 'Florida',
  zip: '33015'
)
Receiver.create(email: 'admin@test.com', password: 'password', organization_id: o.id)
