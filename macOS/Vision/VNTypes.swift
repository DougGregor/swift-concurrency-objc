
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
  @available(macOS 10.13, *)
  static let Aztec: VNBarcodeSymbology
  @available(macOS 10.13, *)
  static let Code39: VNBarcodeSymbology
  @available(macOS 10.13, *)
  static let Code39Checksum: VNBarcodeSymbology
  @available(macOS 10.13, *)
  static let Code39FullASCII: VNBarcodeSymbology
  @available(macOS 10.13, *)
  static let Code39FullASCIIChecksum: VNBarcodeSymbology
  @available(macOS 10.13, *)
  static let Code93: VNBarcodeSymbology
  @available(macOS 10.13, *)
  static let Code93i: VNBarcodeSymbology
  @available(macOS 10.13, *)
  static let Code128: VNBarcodeSymbology
  @available(macOS 10.13, *)
  static let DataMatrix: VNBarcodeSymbology
  @available(macOS 10.13, *)
  static let EAN8: VNBarcodeSymbology
  @available(macOS 10.13, *)
  static let EAN13: VNBarcodeSymbology
  @available(macOS 10.13, *)
  static let I2of5: VNBarcodeSymbology
  @available(macOS 10.13, *)
  static let I2of5Checksum: VNBarcodeSymbology
  @available(macOS 10.13, *)
  static let ITF14: VNBarcodeSymbology
  @available(macOS 10.13, *)
  static let PDF417: VNBarcodeSymbology
  @available(macOS 10.13, *)
  static let QR: VNBarcodeSymbology
  @available(macOS 10.13, *)
  static let UPCE: VNBarcodeSymbology
}
@available(macOS 10.15, *)
enum VNElementType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case unknown
  case float
  case double
}
@available(macOS 11.0, *)
struct VNVideoProcessingOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension VNVideoProcessingOption {
  @available(macOS, introduced: 11.0, deprecated: 11.0)
  static let frameCadence: VNVideoProcessingOption
  @available(macOS, introduced: 11.0, deprecated: 11.0)
  static let timeInterval: VNVideoProcessingOption
}
