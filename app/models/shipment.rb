class Shipment < ApplicationRecord
  Commodity =
[
  "Household Goods",
  "Metal - sheets, coils, rolls",
  'Motor Vehicles',
  'Drive/Tow away',
  'Logs, Poles, Beams, Lumber',
  'Building Materials',
  'Machinery',
  'Fresh Produce',
  'Liquids/Gases',
  'Intermodal',
  'Oilfield Equipment',
  'Livestock',
  'Grain, Feed, Hay',
  'Coal/Coke',
  'Meat',
  'Garbage/Refuse',
  'US Mail',
  'Chemicals',
  'Commodities Dry Bulk',
  'Refrigerated Food',
  'Beverages',
  'Paper Products',
  'Utilities',
  'Agricultural/Farm Supplies',
  'Construction',
  'Water Well'
]

ShipmentStatus = %w(
  Active
  Pending
  Complete
  Cancelled
)
end
