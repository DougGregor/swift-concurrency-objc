
@available(macOS 10.7, *)
class CIDetector : NSObject {
  @available(macOS 10.7, *)
  /*not inherited*/ init?(ofType type: String, context: CIContext?, options: [String : Any]? = nil)
  @available(macOS 10.7, *)
  func features(in image: CIImage) -> [CIFeature]
  @available(macOS 10.8, *)
  func features(in image: CIImage, options: [String : Any]? = nil) -> [CIFeature]
}
@available(macOS 10.7, *)
let CIDetectorTypeFace: String
@available(macOS 10.10, *)
let CIDetectorTypeRectangle: String
@available(macOS 10.10, *)
let CIDetectorTypeQRCode: String
@available(macOS 10.11, *)
let CIDetectorTypeText: String
@available(macOS 10.7, *)
let CIDetectorAccuracy: String
@available(macOS 10.7, *)
let CIDetectorAccuracyLow: String
@available(macOS 10.7, *)
let CIDetectorAccuracyHigh: String
@available(macOS 10.8, *)
let CIDetectorTracking: String
@available(macOS 10.8, *)
let CIDetectorMinFeatureSize: String
@available(macOS 10.12, *)
let CIDetectorMaxFeatureCount: String
@available(macOS 10.11, *)
let CIDetectorNumberOfAngles: String
@available(macOS 10.8, *)
let CIDetectorImageOrientation: String
@available(macOS 10.9, *)
let CIDetectorEyeBlink: String
@available(macOS 10.9, *)
let CIDetectorSmile: String
@available(macOS 10.10, *)
let CIDetectorFocalLength: String
@available(macOS 10.10, *)
let CIDetectorAspectRatio: String
@available(macOS 10.11, *)
let CIDetectorReturnSubFeatures: String
