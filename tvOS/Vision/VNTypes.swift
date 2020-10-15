
typealias VNConfidence = Float
typealias VNAspectRatio = Float
typealias VNDegrees = Float
enum VNImageCropAndScaleOption : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case centerCrop
  case scaleFit
  case scaleFill
}
struct VNBarcodeSymbology : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension VNBarcodeSymbology {
  @available(tvOS 11.0, *)
  static let Aztec: VNBarcodeSymbology
  @available(tvOS 11.0, *)
  static let Code39: VNBarcodeSymbology
  @available(tvOS 11.0, *)
  static let Code39Checksum: VNBarcodeSymbology
  @available(tvOS 11.0, *)
  static let Code39FullASCII: VNBarcodeSymbology
  @available(tvOS 11.0, *)
  static let Code39FullASCIIChecksum: VNBarcodeSymbology
  @available(tvOS 11.0, *)
  static let Code93: VNBarcodeSymbology
  @available(tvOS 11.0, *)
  static let Code93i: VNBarcodeSymbology
  @available(tvOS 11.0, *)
  static let Code128: VNBarcodeSymbology
  @available(tvOS 11.0, *)
  static let DataMatrix: VNBarcodeSymbology
  @available(tvOS 11.0, *)
  static let EAN8: VNBarcodeSymbology
  @available(tvOS 11.0, *)
  static let EAN13: VNBarcodeSymbology
  @available(tvOS 11.0, *)
  static let I2of5: VNBarcodeSymbology
  @available(tvOS 11.0, *)
  static let I2of5Checksum: VNBarcodeSymbology
  @available(tvOS 11.0, *)
  static let ITF14: VNBarcodeSymbology
  @available(tvOS 11.0, *)
  static let PDF417: VNBarcodeSymbology
  @available(tvOS 11.0, *)
  static let QR: VNBarcodeSymbology
  @available(tvOS 11.0, *)
  static let UPCE: VNBarcodeSymbology
}
@available(tvOS 13.0, *)
enum VNElementType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case unknown
  case float
  case double
}
@available(tvOS 14.0, *)
struct VNVideoProcessingOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension VNVideoProcessingOption {
  @available(tvOS, introduced: 14.0, deprecated: 14.0)
  static let frameCadence: VNVideoProcessingOption
  @available(tvOS, introduced: 14.0, deprecated: 14.0)
  static let timeInterval: VNVideoProcessingOption
}
