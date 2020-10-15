
@available(macOS 10.13, *)
class VNObservation : NSObject, NSCopying, NSSecureCoding, VNRequestRevisionProviding {
  var uuid: UUID { get }
  var confidence: VNConfidence { get }
  @available(macOS 11.0, *)
  var timeRange: CMTimeRange { get }
}
@available(macOS 10.13, *)
class VNDetectedObjectObservation : VNObservation {
  convenience init(boundingBox: CGRect)
  @available(macOS 10.14, *)
  convenience init(requestRevision: Int, boundingBox: CGRect)
  var boundingBox: CGRect { get }
}
@available(macOS 10.13, *)
class VNFaceObservation : VNDetectedObjectObservation {
  @available(macOS 10.14, *)
  convenience init(requestRevision: Int, boundingBox: CGRect, roll: NSNumber?, yaw: NSNumber?)
  var landmarks: VNFaceLandmarks2D? { get }
  @available(macOS 10.15, *)
  var __faceCaptureQuality: NSNumber? { get }
  @available(macOS 10.14, *)
  var roll: NSNumber? { get }
  @available(macOS 10.14, *)
  var yaw: NSNumber? { get }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, *)
extension VNFaceObservation {
  @nonobjc var faceCaptureQuality: Float? { get }
}
@available(macOS 10.13, *)
class VNClassificationObservation : VNObservation {
  var identifier: String { get }
}
@available(macOS 10.15, *)
extension VNClassificationObservation {
  var hasPrecisionRecallCurve: Bool { get }
  func hasMinimumRecall(_ minimumRecall: Float, forPrecision precision: Float) -> Bool
  func hasMinimumPrecision(_ minimumPrecision: Float, forRecall recall: Float) -> Bool
}
@available(macOS 10.14, *)
class VNRecognizedObjectObservation : VNDetectedObjectObservation {
  var labels: [VNClassificationObservation] { get }
}
@available(macOS 10.13, *)
class VNCoreMLFeatureValueObservation : VNObservation {
  @NSCopying var featureValue: MLFeatureValue { get }
  @available(macOS 10.15, *)
  var featureName: String { get }
}
@available(macOS 10.13, *)
class VNPixelBufferObservation : VNObservation {
  var pixelBuffer: CVPixelBuffer { get }
  @available(macOS 10.15, *)
  var featureName: String? { get }
}
@available(macOS 10.13, *)
class VNRectangleObservation : VNDetectedObjectObservation {
  @available(macOS 10.15, *)
  convenience init(requestRevision: Int, topLeft: CGPoint, bottomLeft: CGPoint, bottomRight: CGPoint, topRight: CGPoint)
  var topLeft: CGPoint { get }
  var topRight: CGPoint { get }
  var bottomLeft: CGPoint { get }
  var bottomRight: CGPoint { get }
}
@available(macOS 11.0, *)
class VNTrajectoryObservation : VNObservation {
  var detectedPoints: [VNPoint] { get }
  var projectedPoints: [VNPoint] { get }
  var equationCoefficients: simd_float3 { get }
}
@available(macOS 10.13, *)
class VNTextObservation : VNRectangleObservation {
  var characterBoxes: [VNRectangleObservation]? { get }
}
@available(macOS 10.15, *)
class VNRecognizedText : NSObject, NSCopying, NSSecureCoding {
  var string: String { get }
  var confidence: VNConfidence { get }
  func __boundingBox(for range: NSRange, error: NSErrorPointer) -> VNRectangleObservation
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, *)
extension VNRecognizedText {
  @nonobjc func boundingBox(for range: Range<String.Index>) throws -> VNRectangleObservation?
}
@available(macOS 10.15, *)
class VNRecognizedTextObservation : VNRectangleObservation {
  func topCandidates(_ maxCandidateCount: Int) -> [VNRecognizedText]
}
@available(macOS 10.13, *)
class VNBarcodeObservation : VNRectangleObservation {
  var symbology: VNBarcodeSymbology { get }
  var payloadStringValue: String? { get }
}
@available(macOS 10.13, *)
class VNHorizonObservation : VNObservation {
  var transform: CGAffineTransform { get }
  var angle: CGFloat { get }
}
@available(macOS 10.13, *)
class VNImageAlignmentObservation : VNObservation {
}
@available(macOS 10.13, *)
class VNImageTranslationAlignmentObservation : VNImageAlignmentObservation {
  var alignmentTransform: CGAffineTransform
}
@available(macOS 10.13, *)
class VNImageHomographicAlignmentObservation : VNImageAlignmentObservation {
  var warpTransform: matrix_float3x3
}
@available(macOS 10.15, *)
class VNSaliencyImageObservation : VNPixelBufferObservation {
  var salientObjects: [VNRectangleObservation]? { get }
}
@available(macOS 10.15, *)
class VNFeaturePrintObservation : VNObservation {
  var elementType: VNElementType { get }
  var elementCount: Int { get }
  var data: Data { get }
  func computeDistance(_ outDistance: UnsafeMutablePointer<Float>, to featurePrint: VNFeaturePrintObservation) throws
}
@available(macOS 11.0, *)
class VNContoursObservation : VNObservation {
  var contourCount: Int { get }
  func contour(at contourIndex: Int) throws -> VNContour
  var topLevelContourCount: Int { get }
  var topLevelContours: [VNContour] { get }
  func contour(at indexPath: IndexPath) throws -> VNContour
  var normalizedPath: CGPath { get }
}
extension VNRecognizedPointGroupKey {
  @available(macOS 11.0, *)
  static let all: VNRecognizedPointGroupKey
}
@available(macOS 11.0, *)
class VNRecognizedPointsObservation : VNObservation {
  var availableKeys: [VNRecognizedPointKey] { get }
  var availableGroupKeys: [VNRecognizedPointGroupKey] { get }
  func recognizedPoint(forKey pointKey: VNRecognizedPointKey) throws -> VNRecognizedPoint
  func recognizedPoints(forGroupKey groupKey: VNRecognizedPointGroupKey) throws -> [VNRecognizedPointKey : VNRecognizedPoint]
  func keypointsMultiArray() throws -> MLMultiArray
}
