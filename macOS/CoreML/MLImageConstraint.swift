
@available(macOS 10.13, *)
class MLImageConstraint : NSObject, NSSecureCoding {
  var pixelsHigh: Int { get }
  var pixelsWide: Int { get }
  var pixelFormatType: OSType { get }
  @available(macOS 10.14, *)
  var sizeConstraint: MLImageSizeConstraint { get }
}
