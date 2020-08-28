
extension MKMapSnapshotter {
  @available(macOS 10.9, *)
  class Snapshot : NSObject {
    var image: NSImage { get }
    @available(macOS 10.14, *)
    var appearance: NSAppearance { get }
    func point(for coordinate: CLLocationCoordinate2D) -> NSPoint
  }
}
