
extension MKDirections {
  @available(watchOS 2.0, *)
  class Response : NSObject {
    var source: MKMapItem { get }
    var destination: MKMapItem { get }
    var routes: [MKRoute] { get }
  }
  @available(watchOS 2.0, *)
  class ETAResponse : NSObject {
    var source: MKMapItem { get }
    var destination: MKMapItem { get }
    var expectedTravelTime: TimeInterval { get }
    @available(watchOS 2.0, *)
    var distance: CLLocationDistance { get }
    @available(watchOS 2.0, *)
    var expectedArrivalDate: Date { get }
    @available(watchOS 2.0, *)
    var expectedDepartureDate: Date { get }
    @available(watchOS 2.0, *)
    var transportType: MKDirectionsTransportType { get }
  }
}
@available(watchOS 2.0, *)
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
  @available(watchOS 2.0, *)
  class Step : NSObject {
    var instructions: String { get }
    var notice: String? { get }
    var polyline: MKPolyline { get }
    var distance: CLLocationDistance { get }
    var transportType: MKDirectionsTransportType { get }
  }
}
