
extension UIImage {
  @available(tvOS 13.0, *)
  class Configuration : NSObject, NSCopying, NSSecureCoding {
    var traitCollection: UITraitCollection? { get }
    func withTraitCollection(_ traitCollection: UITraitCollection?) -> Self
    func applying(_ otherConfiguration: UIImage.Configuration?) -> Self
  }
}
