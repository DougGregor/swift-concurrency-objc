
@available(watchOS 4.0, *)
class MLImageConstraint : NSObject, NSSecureCoding {
  var pixelsHigh: Int { get }
  var pixelsWide: Int { get }
  var pixelFormatType: OSType { get }
  @available(watchOS 5.0, *)
  var sizeConstraint: MLImageSizeConstraint { get }
}
