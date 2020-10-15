
@available(watchOS 2.0, *)
class WKImage : NSObject, NSCopying, NSSecureCoding {
  convenience init(image: UIImage)
  convenience init(imageData: Data)
  convenience init(imageName: String)
  var image: UIImage? { get }
  var imageData: Data? { get }
  var imageName: String? { get }
}
