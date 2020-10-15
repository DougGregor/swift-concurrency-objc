
extension UIBarButtonItem {
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case plain
    @available(iOS, introduced: 2.0, deprecated: 8.0, message: "Use UIBarButtonItemStylePlain when minimum deployment target is iOS7 or later")
    case bordered
    case done
  }
  enum SystemItem : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case done
    case cancel
    case edit
    case save
    case add
    case flexibleSpace
    case fixedSpace
    case compose
    case reply
    case action
    case organize
    case bookmarks
    case search
    case refresh
    case stop
    case camera
    case trash
    case play
    case pause
    case rewind
    case fastForward
    @available(iOS 3.0, *)
    case undo
    @available(iOS 3.0, *)
    case redo
    @available(iOS, introduced: 4.0, deprecated: 11.0)
    case pageCurl
    @available(iOS 13.0, *)
    case close
  }
}
@available(iOS 2.0, *)
class UIBarButtonItem : UIBarItem, NSCoding {
  convenience init(image: UIImage?, style: UIBarButtonItem.Style, target: Any?, action: Selector?)
  @available(iOS 5.0, *)
  convenience init(image: UIImage?, landscapeImagePhone: UIImage?, style: UIBarButtonItem.Style, target: Any?, action: Selector?)
  convenience init(title: String?, style: UIBarButtonItem.Style, target: Any?, action: Selector?)
  convenience init(barButtonSystemItem systemItem: UIBarButtonItem.SystemItem, target: Any?, action: Selector?)
  convenience init(customView: UIView)
  @available(iOS 14.0, *)
  convenience init(__barButtonSystemItem systemItem: UIBarButtonItem.SystemItem, primaryAction: UIAction?)
  @available(iOS 14.0, *)
  convenience init(__primaryAction primaryAction: UIAction?)
  @available(iOS 14.0, *)
  class func fixedSpace(_ width: CGFloat) -> Self
  @available(iOS 14.0, *)
  class func flexibleSpace() -> Self
  var style: UIBarButtonItem.Style
  var width: CGFloat
  var possibleTitles: Set<String>?
  var customView: UIView?
  var action: Selector?
  weak var target: @sil_weak AnyObject?
  @available(iOS 14.0, *)
  @NSCopying var primaryAction: UIAction?
  @available(iOS 14.0, *)
  @NSCopying var menu: UIMenu?
  @available(iOS 5.0, *)
  func setBackgroundImage(_ backgroundImage: UIImage?, for state: UIControl.State, barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backgroundImage(for state: UIControl.State, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 6.0, *)
  func setBackgroundImage(_ backgroundImage: UIImage?, for state: UIControl.State, style: UIBarButtonItem.Style, barMetrics: UIBarMetrics)
  @available(iOS 6.0, *)
  func backgroundImage(for state: UIControl.State, style: UIBarButtonItem.Style, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 5.0, *)
  var tintColor: UIColor?
  @available(iOS 5.0, *)
  func setBackgroundVerticalPositionAdjustment(_ adjustment: CGFloat, for barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backgroundVerticalPositionAdjustment(for barMetrics: UIBarMetrics) -> CGFloat
  @available(iOS 5.0, *)
  func setTitlePositionAdjustment(_ adjustment: UIOffset, for barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func titlePositionAdjustment(for barMetrics: UIBarMetrics) -> UIOffset
  @available(iOS 5.0, *)
  func setBackButtonBackgroundImage(_ backgroundImage: UIImage?, for state: UIControl.State, barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backButtonBackgroundImage(for state: UIControl.State, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 5.0, *)
  func setBackButtonTitlePositionAdjustment(_ adjustment: UIOffset, for barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backButtonTitlePositionAdjustment(for barMetrics: UIBarMetrics) -> UIOffset
  @available(iOS 5.0, *)
  func setBackButtonBackgroundVerticalPositionAdjustment(_ adjustment: CGFloat, for barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backButtonBackgroundVerticalPositionAdjustment(for barMetrics: UIBarMetrics) -> CGFloat
}

extension UIBarButtonItem {
  @available(iOS 14.0, *)
  convenience init(systemItem: UIBarButtonItem.SystemItem, primaryAction: UIAction? = nil, menu: UIMenu? = nil)
  @available(iOS 14.0, *)
  convenience init(title: String? = nil, image: UIImage? = nil, primaryAction: UIAction? = nil, menu: UIMenu? = nil)
}
extension UIBarButtonItem : UISpringLoadedInteractionSupporting {
}
