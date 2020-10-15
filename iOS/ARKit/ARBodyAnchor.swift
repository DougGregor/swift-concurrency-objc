
@available(iOS 13.0, *)
class ARBodyAnchor : ARAnchor, ARTrackable {
  var skeleton: ARSkeleton3D { get }
  var estimatedScaleFactor: CGFloat { get }
}
