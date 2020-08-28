
extension MKDirections {
  @available(macOS 10.9, *)
  class Response : NSObject {
    var source: MKMapItem { get }
    var destination: MKMapItem { get }
    var routes: [MKRoute] { get }
  }
  @available(macOS 10.9, *)
  class ETAResponse : NSObject {
    var source: MKMapItem { get }
    var destination: MKMapItem { get }
    var expectedTravelTime: TimeInterval { get }
    @available(macOS 10.11, *)
    var distance: CLLocationDistance { get }
    @available(macOS 10.11, *)
    var expectedArrivalDate: Date { get }
    @available(macOS 10.11, *)
    var expectedDepartureDate: Date { get }
    @available(macOS 10.11, *)
    var transportType: MKDirectionsTransportType { get }
  }
}
@available(macOS 10.9, *)
class MKRoute : NSObject {
  var name: String { get }
  var advisoryNotices: [String] { get }
  var distance: CLLocationDistance { get }
  var expectedTravelTime: TimeInterval { get }
  var transportType: MKDirectionsTransportType { get }
  var polyline: MKPolyline { get }
  var steps: [MKRoute.Step] { get }
}
extension MKRoute {
  @available(macOS 10.9, *)
  class Step : NSObject {
    var instructions: String { get }
    var notice: String? { get }
    var polyline: MKPolyline { get }
    var distance: CLLocationDistance { get }
    var transportType: MKDirectionsTransportType { get }
  }
}
