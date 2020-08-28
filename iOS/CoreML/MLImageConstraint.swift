
@available(iOS 11.0, *)
class MLImageConstraint : NSObject, NSSecureCoding {
  var pixelsHigh: Int { get }
  var pixelsWide: Int { get }
  var pixelFormatType: OSType { get }
  @available(iOS 12.0, *)
  var sizeConstraint: MLImageSizeConstraint { get }
}
