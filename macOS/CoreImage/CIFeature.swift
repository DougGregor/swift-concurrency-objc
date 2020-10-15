
@available(macOS 10.7, *)
class CIFeature : NSObject {
  var type: String { get }
  var bounds: CGRect { get }
}
let CIFeatureTypeFace: String
let CIFeatureTypeRectangle: String
let CIFeatureTypeQRCode: String
let CIFeatureTypeText: String
@available(macOS 10.7, *)
class CIFaceFeature : CIFeature {
  var hasLeftEyePosition: Bool { get }
  var leftEyePosition: CGPoint { get }
  var hasRightEyePosition: Bool { get }
  var rightEyePosition: CGPoint { get }
  var hasMouthPosition: Bool { get }
  var mouthPosition: CGPoint { get }
  var hasTrackingID: Bool { get }
  var trackingID: Int32 { get }
  var hasTrackingFrameCount: Bool { get }
  var trackingFrameCount: Int32 { get }
  var hasFaceAngle: Bool { get }
  var faceAngle: Float { get }
  var hasSmile: Bool { get }
  var leftEyeClosed: Bool { get }
  var rightEyeClosed: Bool { get }
}
@available(macOS 10.10, *)
class CIRectangleFeature : CIFeature {
  var topLeft: CGPoint { get }
  var topRight: CGPoint { get }
  var bottomLeft: CGPoint { get }
  var bottomRight: CGPoint { get }
}
@available(macOS 10.10, *)
class CIQRCodeFeature : CIFeature, NSSecureCoding, NSCopying {
  var topLeft: CGPoint { get }
  var topRight: CGPoint { get }
  var bottomLeft: CGPoint { get }
  var bottomRight: CGPoint { get }
  var messageString: String? { get }
  @available(macOS 10.13, *)
  var symbolDescriptor: CIQRCodeDescriptor? { get }
}
@available(macOS 10.11, *)
class CITextFeature : CIFeature {
  var topLeft: CGPoint { get }
  var topRight: CGPoint { get }
  var bottomLeft: CGPoint { get }
  var bottomRight: CGPoint { get }
  var subFeatures: [Any]? { get }
}
