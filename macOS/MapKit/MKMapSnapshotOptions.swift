
extension MKMapSnapshotter {
  @available(macOS 10.9, *)
  class Options : NSObject, NSCopying {
    @NSCopying var camera: MKMapCamera
    var mapRect: MKMapRect
    var region: MKCoordinateRegion
    var mapType: MKMapType
    @available(macOS 10.15, *)
    @NSCopying var pointOfInterestFilter: MKPointOfInterestFilter?
    @available(macOS, introduced: 10.9, deprecated: 10.15, message: "Use pointOfInterestFilter")
    var showsPointsOfInterest: Bool
    var showsBuildings: Bool
    var size: NSSize
    @available(macOS 10.14, *)
    var appearance: NSAppearance?
  }
}
