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
o = Organization.create(
  name: 'Dominos Pizza',
  address: '1336 S Military Trail',
  city: 'West Palm Beach',
  state: 'Florida',
  zip: '33415'
)
Provider.create(email: 'admin@test1.com', password: 'password', organization_id: o.id)
o = Organization.create(
  name: 'Subway',
  address: '6294 Forest Hill Blvd',
  city: 'Greenacres',
  state: 'Florida',
  zip: '33415'
)
Provider.create(email: 'admin@test2.com', password: 'password', organization_id: o.id)
o = Organization.create(
  name: 'Garcias Seafood Grille & Fish Market',
  address: '398 NW North River Dr',
  city: 'Miami',
  state: 'Florida',
  zip: '33128'
)
Provider.create(email: 'admin@test3.com', password: 'password', organization_id: o.id)
o = Organization.create(
  name: 'Publix Super Market at Miami Shores',
  address: '9050 Biscayne Blvd',
  city: 'Miami Shores',
  state: 'Florida',
  zip: '33138'
)
Provider.create(email: 'admin@test4.com', password: 'password', organization_id: o.id)
