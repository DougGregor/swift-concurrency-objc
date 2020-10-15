
extension AVDepthData {
  @available(tvOS 11.0, *)
  enum Quality : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case low
    case high
  }
  @available(tvOS 11.0, *)
  enum Accuracy : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case relative
    case absolute
  }
}
@available(tvOS 11.0, *)
class AVDepthData : NSObject {
  convenience init(fromDictionaryRepresentation imageSourceAuxDataInfoDictionary: [AnyHashable : Any]) throws
  func converting(toDepthDataType depthDataType: OSType) -> Self
  func applyingExifOrientation(_ exifOrientation: CGImagePropertyOrientation) -> Self
  func replacingDepthDataMap(with pixelBuffer: CVPixelBuffer) throws -> Self
  var availableDepthDataTypes: [NSNumber] { get }
  func dictionaryRepresentation(forAuxiliaryDataType outAuxDataType: AutoreleasingUnsafeMutablePointer<NSString?>?) -> [AnyHashable : Any]?
  var depthDataType: OSType { get }
  var depthDataMap: CVPixelBuffer { get }
  var depthDataQuality: AVDepthData.Quality { get }
  var isDepthDataFiltered: Bool { get }
  var depthDataAccuracy: AVDepthData.Accuracy { get }
  var cameraCalibrationData: AVCameraCalibrationData? { get }
}
