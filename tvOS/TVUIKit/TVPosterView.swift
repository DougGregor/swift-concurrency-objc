
@available(tvOS 12.0, *)
class TVPosterView : TVLockupView {
  init(image: UIImage?)
  var image: UIImage?
  var imageView: UIImageView { get }
  var title: String?
  var subtitle: String?
}
