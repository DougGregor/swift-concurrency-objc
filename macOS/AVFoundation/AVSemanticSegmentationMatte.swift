
extension AVSemanticSegmentationMatte {
  struct MatteType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension AVSemanticSegmentationMatte.MatteType {
  @available(macOS 10.15, *)
  static let skin: AVSemanticSegmentationMatte.MatteType
  @available(macOS 10.15, *)
  static let hair: AVSemanticSegmentationMatte.MatteType
  @available(macOS 10.15, *)
  static let teeth: AVSemanticSegmentationMatte.MatteType
}
@available(macOS 10.15, *)
class AVSemanticSegmentationMatte : NSObject {
  convenience init(fromImageSourceAuxiliaryDataType imageSourceAuxiliaryDataType: CFString, dictionaryRepresentation imageSourceAuxiliaryDataInfoDictionary: [AnyHashable : Any]) throws
  var matteType: AVSemanticSegmentationMatte.MatteType { get }
  func applyingExifOrientation(_ exifOrientation: CGImagePropertyOrientation) -> Self
  func replacingSemanticSegmentationMatte(with pixelBuffer: CVPixelBuffer) throws -> Self
  func dictionaryRepresentation(forAuxiliaryDataType outAuxDataType: AutoreleasingUnsafeMutablePointer<NSString?>?) -> [AnyHashable : Any]?
  var pixelFormatType: OSType { get }
  var mattingImage: CVPixelBuffer { get }
}
