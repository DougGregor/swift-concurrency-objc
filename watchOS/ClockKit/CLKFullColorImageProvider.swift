
@available(watchOS 5.0, *)
class CLKFullColorImageProvider : NSObject, NSCopying {
  convenience init(fullColorImage image: UIImage)
  @available(watchOS 6.0, *)
  convenience init(fullColorImage image: UIImage, tintedImageProvider: CLKImageProvider?)
  var image: UIImage
  @available(watchOS 6.0, *)
  var tintedImageProvider: CLKImageProvider?
  var accessibilityLabel: String?
}
