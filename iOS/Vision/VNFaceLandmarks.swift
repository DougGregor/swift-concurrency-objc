
@available(iOS 11.0, *)
class VNFaceLandmarkRegion : NSObject, NSCopying, NSSecureCoding, VNRequestRevisionProviding {
  var pointCount: Int { get }
}
@available(iOS 11.0, *)
class VNFaceLandmarkRegion2D : VNFaceLandmarkRegion {
  var __normalizedPoints: UnsafePointer<CGPoint> { get }
  func __pointsInImage(imageSize: CGSize) -> UnsafePointer<CGPoint>
  @available(iOS 13.0, *)
  var __precisionEstimatesPerPoint: [NSNumber]? { get }
}

@available(macOS 10.13, iOS 11.0, tvOS 11.0, *)
extension VNFaceLandmarkRegion2D {
  @nonobjc var normalizedPoints: [CGPoint] { get }
  @nonobjc func pointsInImage(imageSize: CGSize) -> [CGPoint]
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, *)
  @nonobjc var precisionEstimatesPerPoint: [Float]? { get }
}
@available(iOS 11.0, *)
class VNFaceLandmarks : NSObject, NSCopying, NSSecureCoding, VNRequestRevisionProviding {
  var confidence: VNConfidence { get }
}
@available(iOS 11.0, *)
class VNFaceLandmarks2D : VNFaceLandmarks {
  var allPoints: VNFaceLandmarkRegion2D? { get }
  var faceContour: VNFaceLandmarkRegion2D? { get }
  var leftEye: VNFaceLandmarkRegion2D? { get }
  var rightEye: VNFaceLandmarkRegion2D? { get }
  var leftEyebrow: VNFaceLandmarkRegion2D? { get }
  var rightEyebrow: VNFaceLandmarkRegion2D? { get }
  var nose: VNFaceLandmarkRegion2D? { get }
  var noseCrest: VNFaceLandmarkRegion2D? { get }
  var medianLine: VNFaceLandmarkRegion2D? { get }
  var outerLips: VNFaceLandmarkRegion2D? { get }
  var innerLips: VNFaceLandmarkRegion2D? { get }
  var leftPupil: VNFaceLandmarkRegion2D? { get }
  var rightPupil: VNFaceLandmarkRegion2D? { get }
}
