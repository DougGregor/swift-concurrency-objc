
@available(tvOS 13.0, *)
class UIBarAppearance : NSObject, NSCopying, NSSecureCoding {
  init(idiom: UIUserInterfaceIdiom)
  var idiom: UIUserInterfaceIdiom { get }
  init(barAppearance: UIBarAppearance)
  func configureWithDefaultBackground()
  func configureWithOpaqueBackground()
  func configureWithTransparentBackground()
  @NSCopying var backgroundEffect: UIBlurEffect?
  @NSCopying var backgroundColor: UIColor?
  var backgroundImage: UIImage?
  var backgroundImageContentMode: UIView.ContentMode
  @NSCopying var shadowColor: UIColor?
  var shadowImage: UIImage?
}
