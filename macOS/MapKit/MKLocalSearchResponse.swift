
extension MKLocalSearch {
  @available(macOS 10.9, *)
  class Response : NSObject {
    var mapItems: [MKMapItem] { get }
    var boundingRegion: MKCoordinateRegion { get }
  }
}
