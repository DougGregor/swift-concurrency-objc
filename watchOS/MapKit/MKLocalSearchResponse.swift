
extension MKLocalSearch {
  @available(watchOS 2.0, *)
  class Response : NSObject {
    var mapItems: [MKMapItem] { get }
    var boundingRegion: MKCoordinateRegion { get }
  }
}
