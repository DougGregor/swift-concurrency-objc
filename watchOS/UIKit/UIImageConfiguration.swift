
extension UIImage {
  @available(watchOS 6.0, *)
  class Configuration : NSObject, NSCopying, NSSecureCoding {
    func applying(_ otherConfiguration: UIImage.Configuration?) -> Self
  }
}
