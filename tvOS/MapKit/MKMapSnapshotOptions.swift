
extension MKMapSnapshotter {
  @available(tvOS 9.2, *)
  class Options : NSObject, NSCopying {
    @NSCopying var camera: MKMapCamera
    var mapRect: MKMapRect
    var region: MKCoordinateRegion
    var mapType: MKMapType
    @available(tvOS 13.0, *)
    @NSCopying var pointOfInterestFilter: MKPointOfInterestFilter?
    @available(tvOS, introduced: 9.2, deprecated: 13.0, message: "Use pointOfInterestFilter")
    var showsPointsOfInterest: Bool
    var showsBuildings: Bool
    var size: CGSize
    @available(tvOS, introduced: 9.2, deprecated: 100000, message: "Use traitCollection.displayScale")
    var scale: CGFloat
    @available(tvOS 13.0, *)
    @NSCopying var traitCollection: UITraitCollection
  }
}
