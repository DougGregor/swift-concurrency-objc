
@available(tvOS 8.0, *)
class UIImageAsset : NSObject, NSSecureCoding {
  func image(with configuration: UIImage.Configuration) -> UIImage
  func register(_ image: UIImage, with configuration: UIImage.Configuration)
  func unregisterImage(with configuration: UIImage.Configuration)
  func image(with traitCollection: UITraitCollection) -> UIImage
  func register(_ image: UIImage, with traitCollection: UITraitCollection)
  func unregister(imageWith traitCollection: UITraitCollection)
}
