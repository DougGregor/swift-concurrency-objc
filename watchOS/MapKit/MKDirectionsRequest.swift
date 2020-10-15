
extension MKDirections {
}
extension MKDirections.Request {
  @available(watchOS 2.0, *)
  var transportType: MKDirectionsTransportType
  @available(watchOS 2.0, *)
  var requestsAlternateRoutes: Bool
  @available(watchOS 2.0, *)
  var departureDate: Date?
  @available(watchOS 2.0, *)
  var arrivalDate: Date?
}
extension MKDirections.Request {
  @available(watchOS 2.0, *)
  init(contentsOf url: URL)
  @available(watchOS 2.0, *)
  class func isDirectionsRequest(_ url: URL) -> Bool
}
