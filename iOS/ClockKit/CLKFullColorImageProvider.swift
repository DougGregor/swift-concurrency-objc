
class CLKFullColorImageProvider : NSObject, NSCopying {
  convenience init(fullColorImage image: UIImage)
  convenience init(fullColorImage image: UIImage, tintedImageProvider: CLKImageProvider?)
  var image: UIImage
  var tintedImageProvider: CLKImageProvider?
}
