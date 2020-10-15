
extension UISegmentedControl {
  class var noSegment: Int { get }
  enum Segment : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case any
    case left
    case center
    case right
    case alone
  }
}
@available(tvOS 2.0, *)
class UISegmentedControl : UIControl, NSCoding {
  init(items: [Any]?)
  @available(tvOS 14.0, *)
  convenience init(frame: CGRect, actions: [UIAction])
  @available(tvOS 14.0, *)
  func insertSegment(action: UIAction, at segment: Int, animated: Bool)
  @available(tvOS 14.0, *)
  func setAction(_ action: UIAction, forSegmentAt segment: Int)
  @available(tvOS 14.0, *)
  func actionForSegment(at segment: Int) -> UIAction?
  @available(tvOS 14.0, *)
  func segmentIndex(identifiedBy actionIdentifier: UIAction.Identifier) -> Int
  var isMomentary: Bool
  var numberOfSegments: Int { get }
  @available(tvOS 5.0, *)
  var apportionsSegmentWidthsByContent: Bool
  func insertSegment(withTitle title: String?, at segment: Int, animated: Bool)
  func insertSegment(with image: UIImage?, at segment: Int, animated: Bool)
  func removeSegment(at segment: Int, animated: Bool)
  func removeAllSegments()
  func setTitle(_ title: String?, forSegmentAt segment: Int)
  func titleForSegment(at segment: Int) -> String?
  func setImage(_ image: UIImage?, forSegmentAt segment: Int)
  func imageForSegment(at segment: Int) -> UIImage?
  func setWidth(_ width: CGFloat, forSegmentAt segment: Int)
  func widthForSegment(at segment: Int) -> CGFloat
  func setContentOffset(_ offset: CGSize, forSegmentAt segment: Int)
  func contentOffsetForSegment(at segment: Int) -> CGSize
  func setEnabled(_ enabled: Bool, forSegmentAt segment: Int)
  func isEnabledForSegment(at segment: Int) -> Bool
  var selectedSegmentIndex: Int
  @available(tvOS 13.0, *)
  var selectedSegmentTintColor: UIColor?
  @available(tvOS 5.0, *)
  func setBackgroundImage(_ backgroundImage: UIImage?, for state: UIControl.State, barMetrics: UIBarMetrics)
  @available(tvOS 5.0, *)
  func backgroundImage(for state: UIControl.State, barMetrics: UIBarMetrics) -> UIImage?
  @available(tvOS 5.0, *)
  func setDividerImage(_ dividerImage: UIImage?, forLeftSegmentState leftState: UIControl.State, rightSegmentState rightState: UIControl.State, barMetrics: UIBarMetrics)
  @available(tvOS 5.0, *)
  func dividerImage(forLeftSegmentState leftState: UIControl.State, rightSegmentState rightState: UIControl.State, barMetrics: UIBarMetrics) -> UIImage?
  @available(tvOS 5.0, *)
  func setTitleTextAttributes(_ attributes: [NSAttributedString.Key : Any]?, for state: UIControl.State)
  @available(tvOS 5.0, *)
  func titleTextAttributes(for state: UIControl.State) -> [NSAttributedString.Key : Any]?
  @available(tvOS 5.0, *)
  func setContentPositionAdjustment(_ adjustment: UIOffset, forSegmentType leftCenterRightOrAlone: UISegmentedControl.Segment, barMetrics: UIBarMetrics)
  @available(tvOS 5.0, *)
  func contentPositionAdjustment(forSegmentType leftCenterRightOrAlone: UISegmentedControl.Segment, barMetrics: UIBarMetrics) -> UIOffset
}
