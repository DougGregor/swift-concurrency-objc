
extension MKMapSnapshotter {
  @available(iOS 7.0, *)
  class Options : NSObject, NSCopying {
    @NSCopying var camera: MKMapCamera
    var mapRect: MKMapRect
    var region: MKCoordinateRegion
    var mapType: MKMapType
    @available(iOS 13.0, *)
    @NSCopying var pointOfInterestFilter: MKPointOfInterestFilter?
    @available(iOS, introduced: 7.0, deprecated: 13.0, message: "Use pointOfInterestFilter")
    var showsPointsOfInterest: Bool
    var showsBuildings: Bool
    var size: CGSize
    @available(iOS, introduced: 7.0, deprecated: 100000, message: "Use traitCollection.displayScale")
    var scale: CGFloat
    @available(iOS 13.0, *)
    @NSCopying var traitCollection: UITraitCollection
  }
}
