
@available(iOS 11.0, *)
var VNVisionVersionNumber: Double
@available(macOS 10.13, iOS 11.0, tvOS 11.0, *)
extension VNFaceLandmarkRegion2D {
  @nonobjc var normalizedPoints: [CGPoint] { get }
  @nonobjc func pointsInImage(imageSize: CGSize) -> [CGPoint]
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, *)
  @nonobjc var precisionEstimatesPerPoint: [Float]? { get }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, *)
extension VNFaceObservation {
  @nonobjc var faceCaptureQuality: Float? { get }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, *)
extension VNRecognizedText {
  @nonobjc func boundingBox(for range: Range<String.Index>) throws -> VNRectangleObservation?
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, *)
extension VNContour {
  @nonobjc var normalizedPoints: [simd_float2] { get }
}

