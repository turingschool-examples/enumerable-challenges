class ShipmentScale

  def self.heavy_and_light(shipments)
    shipments.minmax_by { |shipment, weight| weight }

  end

end
