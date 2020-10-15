
@available(tvOS 12.0, *)
class AVPortraitEffectsMatte : NSObject {
  convenience init(fromDictionaryRepresentation imageSourceAuxDataInfoDictionary: [AnyHashable : Any]) throws
  func applyingExifOrientation(_ exifOrientation: CGImagePropertyOrientation) -> Self
  func replacingPortraitEffectsMatte(with pixelBuffer: CVPixelBuffer) throws -> Self
  func dictionaryRepresentation(forAuxiliaryDataType outAuxDataType: AutoreleasingUnsafeMutablePointer<NSString?>?) -> [AnyHashable : Any]?
  var pixelFormatType: OSType { get }
  var mattingImage: CVPixelBuffer { get }
}
