
extension MLFeatureValue {
  struct ImageOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension MLFeatureValue.ImageOption {
  @available(macOS 10.15, *)
  static let cropRect: MLFeatureValue.ImageOption
  @available(macOS 10.15, *)
  static let cropAndScale: MLFeatureValue.ImageOption
}
@available(macOS 10.15, *)
extension MLFeatureValue {
  convenience init(imageAt url: URL, pixelsWide: Int, pixelsHigh: Int, pixelFormatType: OSType, options: [MLFeatureValue.ImageOption : Any]? = nil) throws
  convenience init(imageAt url: URL, constraint: MLImageConstraint, options: [MLFeatureValue.ImageOption : Any]? = nil) throws
  convenience init(cgImage: CGImage, pixelsWide: Int, pixelsHigh: Int, pixelFormatType: OSType, options: [MLFeatureValue.ImageOption : Any]? = nil) throws
  convenience init(cgImage: CGImage, constraint: MLImageConstraint, options: [MLFeatureValue.ImageOption : Any]? = nil) throws
  convenience init(imageAt url: URL, orientation: CGImagePropertyOrientation, pixelsWide: Int, pixelsHigh: Int, pixelFormatType: OSType, options: [MLFeatureValue.ImageOption : Any]? = nil) throws
  convenience init(imageAt url: URL, orientation: CGImagePropertyOrientation, constraint: MLImageConstraint, options: [MLFeatureValue.ImageOption : Any]? = nil) throws
  convenience init(cgImage: CGImage, orientation: CGImagePropertyOrientation, pixelsWide: Int, pixelsHigh: Int, pixelFormatType: OSType, options: [MLFeatureValue.ImageOption : Any]? = nil) throws
  convenience init(cgImage: CGImage, orientation: CGImagePropertyOrientation, constraint: MLImageConstraint, options: [MLFeatureValue.ImageOption : Any]? = nil) throws
}
