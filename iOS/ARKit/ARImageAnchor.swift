
@available(iOS 11.3, *)
class ARImageAnchor : ARAnchor, ARTrackable {
  var referenceImage: ARReferenceImage { get }
  @available(iOS 13.0, *)
  var estimatedScaleFactor: CGFloat { get }
}
