
@available(iOS 11.0, *)
class VNObservation : NSObject, NSCopying, NSSecureCoding, VNRequestRevisionProviding {
  var uuid: UUID { get }
  var confidence: VNConfidence { get }
  @available(iOS 14.0, *)
  var timeRange: CMTimeRange { get }
}
@available(iOS 11.0, *)
class VNDetectedObjectObservation : VNObservation {
  convenience init(boundingBox: CGRect)
  @available(iOS 12.0, *)
  convenience init(requestRevision: Int, boundingBox: CGRect)
  var boundingBox: CGRect { get }
}
@available(iOS 11.0, *)
class VNFaceObservation : VNDetectedObjectObservation {
  @available(iOS 12.0, *)
  convenience init(requestRevision: Int, boundingBox: CGRect, roll: NSNumber?, yaw: NSNumber?)
  var landmarks: VNFaceLandmarks2D? { get }
  @available(iOS 13.0, *)
  var __faceCaptureQuality: NSNumber? { get }
  @available(iOS 12.0, *)
  var roll: NSNumber? { get }
  @available(iOS 12.0, *)
  var yaw: NSNumber? { get }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, *)
extension VNFaceObservation {
  @nonobjc var faceCaptureQuality: Float? { get }
}
@available(iOS 11.0, *)
class VNClassificationObservation : VNObservation {
  var identifier: String { get }
}
@available(iOS 13.0, *)
extension VNClassificationObservation {
  var hasPrecisionRecallCurve: Bool { get }
  func hasMinimumRecall(_ minimumRecall: Float, forPrecision precision: Float) -> Bool
  func hasMinimumPrecision(_ minimumPrecision: Float, forRecall recall: Float) -> Bool
}
@available(iOS 12.0, *)
class VNRecognizedObjectObservation : VNDetectedObjectObservation {
  var labels: [VNClassificationObservation] { get }
}
@available(iOS 11.0, *)
class VNCoreMLFeatureValueObservation : VNObservation {
  @NSCopying var featureValue: MLFeatureValue { get }
  @available(iOS 13.0, *)
  var featureName: String { get }
}
@available(iOS 11.0, *)
class VNPixelBufferObservation : VNObservation {
  var pixelBuffer: CVPixelBuffer { get }
  @available(iOS 13.0, *)
  var featureName: String? { get }
}
@available(iOS 11.0, *)
class VNRectangleObservation : VNDetectedObjectObservation {
  @available(iOS 13.0, *)
  convenience init(requestRevision: Int, topLeft: CGPoint, bottomLeft: CGPoint, bottomRight: CGPoint, topRight: CGPoint)
  var topLeft: CGPoint { get }
  var topRight: CGPoint { get }
  var bottomLeft: CGPoint { get }
  var bottomRight: CGPoint { get }
}
@available(iOS 14.0, *)
class VNTrajectoryObservation : VNObservation {
  var detectedPoints: [VNPoint] { get }
  var projectedPoints: [VNPoint] { get }
  var equationCoefficients: simd_float3 { get }
}
@available(iOS 11.0, *)
class VNTextObservation : VNRectangleObservation {
  var characterBoxes: [VNRectangleObservation]? { get }
}
@available(iOS 13.0, *)
class VNRecognizedText : NSObject, NSCopying, NSSecureCoding {
  var string: String { get }
  var confidence: VNConfidence { get }
  func __boundingBox(for range: NSRange, error: NSErrorPointer) -> VNRectangleObservation
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, *)
extension VNRecognizedText {
  @nonobjc func boundingBox(for range: Range<String.Index>) throws -> VNRectangleObservation?
}
@available(iOS 13.0, *)
class VNRecognizedTextObservation : VNRectangleObservation {
  func topCandidates(_ maxCandidateCount: Int) -> [VNRecognizedText]
}
@available(iOS 11.0, *)
class VNBarcodeObservation : VNRectangleObservation {
  var symbology: VNBarcodeSymbology { get }
  var payloadStringValue: String? { get }
}
@available(iOS 11.0, *)
class VNHorizonObservation : VNObservation {
  var transform: CGAffineTransform { get }
  var angle: CGFloat { get }
}
@available(iOS 11.0, *)
class VNImageAlignmentObservation : VNObservation {
}
@available(iOS 11.0, *)
class VNImageTranslationAlignmentObservation : VNImageAlignmentObservation {
  var alignmentTransform: CGAffineTransform
}
@available(iOS 11.0, *)
class VNImageHomographicAlignmentObservation : VNImageAlignmentObservation {
  var warpTransform: matrix_float3x3
}
@available(iOS 13.0, *)
class VNSaliencyImageObservation : VNPixelBufferObservation {
  var salientObjects: [VNRectangleObservation]? { get }
}
@available(iOS 13.0, *)
class VNFeaturePrintObservation : VNObservation {
  var elementType: VNElementType { get }
  var elementCount: Int { get }
  var data: Data { get }
  func computeDistance(_ outDistance: UnsafeMutablePointer<Float>, to featurePrint: VNFeaturePrintObservation) throws
}
@available(iOS 14.0, *)
class VNContoursObservation : VNObservation {
  var contourCount: Int { get }
  func contour(at contourIndex: Int) throws -> VNContour
  var topLevelContourCount: Int { get }
  var topLevelContours: [VNContour] { get }
  func contour(at indexPath: IndexPath) throws -> VNContour
  var normalizedPath: CGPath { get }
}
extension VNRecognizedPointGroupKey {
  @available(iOS 14.0, *)
  static let all: VNRecognizedPointGroupKey
}
@available(iOS 14.0, *)
class VNRecognizedPointsObservation : VNObservation {
  var availableKeys: [VNRecognizedPointKey] { get }
  var availableGroupKeys: [VNRecognizedPointGroupKey] { get }
  func recognizedPoint(forKey pointKey: VNRecognizedPointKey) throws -> VNRecognizedPoint
  func recognizedPoints(forGroupKey groupKey: VNRecognizedPointGroupKey) throws -> [VNRecognizedPointKey : VNRecognizedPoint]
  func keypointsMultiArray() throws -> MLMultiArray
}
