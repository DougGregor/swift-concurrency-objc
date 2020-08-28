
@available(watchOS 2.0, *)
class CLKImageProvider : NSObject, NSCopying {
  convenience init(onePieceImage: UIImage)
  convenience init(onePieceImage: UIImage, twoPieceImageBackground: UIImage?, twoPieceImageForeground: UIImage?)
  var onePieceImage: UIImage
  var tintColor: UIColor?
  var twoPieceImageBackground: UIImage?
  var twoPieceImageForeground: UIImage?
  var accessibilityLabel: String?
}
