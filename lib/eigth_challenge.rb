class ShipmentScale
  def self.lightest(shipments)
    shipments.min_by { |shipment, weight| weight }
  end
end
