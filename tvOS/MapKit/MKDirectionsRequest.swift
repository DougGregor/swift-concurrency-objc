
extension MKDirections {
  @available(tvOS 9.2, *)
  class Request : NSObject {
    var source: MKMapItem?
    var destination: MKMapItem?
  }
}
extension MKDirections.Request {
  @available(tvOS 7.0, *)
  var transportType: MKDirectionsTransportType
  @available(tvOS 7.0, *)
  var requestsAlternateRoutes: Bool
  @available(tvOS 7.0, *)
  var departureDate: Date?
  @available(tvOS 7.0, *)
  var arrivalDate: Date?
}
extension MKDirections.Request {
  @available(tvOS 6.0, *)
  init(contentsOf url: URL)
  @available(tvOS 6.0, *)
  class func isDirectionsRequest(_ url: URL) -> Bool
}
