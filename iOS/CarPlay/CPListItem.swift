
@available(iOS 12.0, *)
class CPListItem : NSObject, CPSelectableListItem {
  @available(iOS 14.0, *)
  init(text: String?, detailText: String?, image: UIImage?, accessoryImage: UIImage?, accessoryType: CPListItemAccessoryType)
  init(text: String?, detailText: String?, image: UIImage?)
  init(text: String?, detailText: String?)
  @available(iOS 14.0, *)
  var accessoryType: CPListItemAccessoryType
  @available(iOS 14.0, *)
  var isExplicitContent: Bool
  @available(iOS 14.0, *)
  var playbackProgress: CGFloat
  @available(iOS 14.0, *)
  var isPlaying: Bool
  @available(iOS 14.0, *)
  var playingIndicatorLocation: CPListItemPlayingIndicatorLocation
  @available(iOS 14.0, *)
  class var maximumImageSize: CGSize { get }
  @available(iOS 14.0, *)
  func setDetailText(_ detailText: String)
  @available(iOS 14.0, *)
  func setImage(_ image: UIImage)
  @available(iOS 14.0, *)
  func setAccessoryImage(_ accessoryImage: UIImage)
  @available(iOS 14.0, *)
  func setText(_ text: String)
  var detailText: String? { get }
  var image: UIImage? { get }
  var accessoryImage: UIImage? { get }
  @available(iOS, introduced: 12.0, deprecated: 14.0, renamed: "CPListItemAccessoryType")
  var showsDisclosureIndicator: Bool { get }
  @available(iOS, introduced: 14.0, deprecated: 14.0)
  var showsExplicitLabel: Bool
}
@available(iOS 14.0, *)
enum CPListItemAccessoryType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case disclosureIndicator
  case cloud
}
@available(iOS 14.0, *)
enum CPListItemPlayingIndicatorLocation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case leading
  case trailing
}
extension CPListItem {
  @available(iOS, introduced: 12.0, deprecated: 14.0)
  init(text: String?, detailText: String?, image: UIImage?, showsDisclosureIndicator: Bool)
}
