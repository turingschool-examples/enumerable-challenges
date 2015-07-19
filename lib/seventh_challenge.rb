class ShipmentScale
  def self.heaviest(shipments)
    shipments.max_by { |shipment, weight| weight }
  end
end
