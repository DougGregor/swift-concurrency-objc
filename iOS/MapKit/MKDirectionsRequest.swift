
extension MKDirections {
  @available(iOS 6.0, *)
  class Request : NSObject {
    var source: MKMapItem?
    var destination: MKMapItem?
  }
}
extension MKDirections.Request {
  @available(iOS 7.0, *)
  var transportType: MKDirectionsTransportType
  @available(iOS 7.0, *)
  var requestsAlternateRoutes: Bool
  @available(iOS 7.0, *)
  var departureDate: Date?
  @available(iOS 7.0, *)
  var arrivalDate: Date?
}
extension MKDirections.Request {
  @available(iOS 6.0, *)
  init(contentsOf url: URL)
  @available(iOS 6.0, *)
  class func isDirectionsRequest(_ url: URL) -> Bool
}
