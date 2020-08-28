
@available(tvOS 13.0, *)
class UIBarButtonItemStateAppearance : NSObject {
  var titleTextAttributes: [NSAttributedString.Key : Any]
  var titlePositionAdjustment: UIOffset
  var backgroundImage: UIImage?
  var backgroundImagePositionAdjustment: UIOffset
}
@available(tvOS 13.0, *)
class UIBarButtonItemAppearance : NSObject, NSCopying, NSSecureCoding {
  init(style: UIBarButtonItem.Style)
  func configureWithDefault(for style: UIBarButtonItem.Style)
  var normal: UIBarButtonItemStateAppearance { get }
  var highlighted: UIBarButtonItemStateAppearance { get }
  var disabled: UIBarButtonItemStateAppearance { get }
  var focused: UIBarButtonItemStateAppearance { get }
}
