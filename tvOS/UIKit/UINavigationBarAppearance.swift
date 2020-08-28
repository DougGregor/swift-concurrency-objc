
@available(tvOS 13.0, *)
class UINavigationBarAppearance : UIBarAppearance {
  var titleTextAttributes: [NSAttributedString.Key : Any]
  var titlePositionAdjustment: UIOffset
  var largeTitleTextAttributes: [NSAttributedString.Key : Any]
  @NSCopying var buttonAppearance: UIBarButtonItemAppearance
  @NSCopying var doneButtonAppearance: UIBarButtonItemAppearance
  @NSCopying var backButtonAppearance: UIBarButtonItemAppearance
  var backIndicatorImage: UIImage { get }
  var backIndicatorTransitionMaskImage: UIImage { get }
  func setBackIndicatorImage(_ backIndicatorImage: UIImage?, transitionMaskImage backIndicatorTransitionMaskImage: UIImage?)
}
