
extension MKDirections {
  @available(macOS 10.9, *)
  class Request : NSObject {
    var source: MKMapItem?
    var destination: MKMapItem?
  }
}
extension MKDirections.Request {
  @available(macOS 10.9, *)
  var transportType: MKDirectionsTransportType
  @available(macOS 10.9, *)
  var requestsAlternateRoutes: Bool
  @available(macOS 10.9, *)
  var departureDate: Date?
  @available(macOS 10.9, *)
  var arrivalDate: Date?
}
extension MKDirections.Request {
  @available(macOS 10.9, *)
  init(contentsOf url: URL)
  @available(macOS 10.9, *)
  class func isDirectionsRequest(_ url: URL) -> Bool
}
