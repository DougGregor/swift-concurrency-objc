
@available(watchOS 5.0, *)
class MLImageSizeConstraint : NSObject, NSSecureCoding {
  var type: MLImageSizeConstraintType { get }
  var pixelsWideRange: NSRange { get }
  var pixelsHighRange: NSRange { get }
  var enumeratedImageSizes: [MLImageSize] { get }
}
