
extension MKLocalSearch {
  @available(tvOS 9.2, *)
  class Response : NSObject {
    var mapItems: [MKMapItem] { get }
    var boundingRegion: MKCoordinateRegion { get }
  }
}
