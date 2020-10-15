
extension MKLocalSearch {
  @available(iOS 6.1, *)
  class Response : NSObject {
    var mapItems: [MKMapItem] { get }
    var boundingRegion: MKCoordinateRegion { get }
  }
}
