
extension UITableViewCell {
  enum CellStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case `default`
    case value1
    case value2
    case subtitle
  }
  enum SeparatorStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case none
    case singleLine
    @available(iOS, introduced: 2.0, deprecated: 11.0, message: "Use UITableViewCellSeparatorStyleSingleLine for a single line separator.")
    case singleLineEtched
  }
  enum SelectionStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case none
    case blue
    case gray
    @available(iOS 7.0, *)
    case `default`
  }
  @available(iOS 9.0, *)
  enum FocusStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case `default`
    case custom
  }
  enum EditingStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case none
    case delete
    case insert
  }
  enum AccessoryType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case none
    case disclosureIndicator
    case detailDisclosureButton
    case checkmark
    @available(iOS 7.0, *)
    case detailButton
  }
  struct StateMask : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var showingEditControl: UITableViewCell.StateMask { get }
    static var showingDeleteConfirmation: UITableViewCell.StateMask { get }
  }
  @available(iOS 11.0, *)
  enum DragState : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case none
    case lifting
    case dragging
  }
}
@available(iOS 2.0, *)
class UITableViewCell : UIView, NSCoding, UIGestureRecognizerDelegate {
  @available(iOS 3.0, *)
  init(style: UITableViewCell.CellStyle, reuseIdentifier: String?)
  @available(iOS 14.0, *)
  var __configurationState: __UICellConfigurationState { get }
  @available(iOS 14.0, *)
  func setNeedsUpdateConfiguration()
  @available(iOS 14.0, *)
  func __updateConfiguration(using state: __UICellConfigurationState)
  @available(iOS 14.0, *)
  func __defaultContentConfiguration() -> __UIListContentConfiguration
  @available(iOS 14.0, *)
  @NSCopying var __contentConfiguration: __UIContentConfiguration?
  @available(iOS 14.0, *)
  var automaticallyUpdatesContentConfiguration: Bool
  var contentView: UIView { get }
  @available(iOS, introduced: 3.0, deprecated: 100000, message: "Use UIListContentConfiguration instead, this property will be deprecated in a future release.")
  var imageView: UIImageView? { get }
  @available(iOS, introduced: 3.0, deprecated: 100000, message: "Use UIListContentConfiguration instead, this property will be deprecated in a future release.")
  var textLabel: UILabel? { get }
  @available(iOS, introduced: 3.0, deprecated: 100000, message: "Use UIListContentConfiguration instead, this property will be deprecated in a future release.")
  var detailTextLabel: UILabel? { get }
  @available(iOS 14.0, *)
  @NSCopying var __backgroundConfiguration: __UIBackgroundConfiguration?
  @available(iOS 14.0, *)
  var automaticallyUpdatesBackgroundConfiguration: Bool
  var backgroundView: UIView?
  var selectedBackgroundView: UIView?
  @available(iOS 5.0, *)
  var multipleSelectionBackgroundView: UIView?
  var reuseIdentifier: String? { get }
  func prepareForReuse()
  var selectionStyle: UITableViewCell.SelectionStyle
  var isSelected: Bool
  var isHighlighted: Bool
  func setSelected(_ selected: Bool, animated: Bool)
  func setHighlighted(_ highlighted: Bool, animated: Bool)
  var editingStyle: UITableViewCell.EditingStyle { get }
  var showsReorderControl: Bool
  var shouldIndentWhileEditing: Bool
  var accessoryType: UITableViewCell.AccessoryType
  var accessoryView: UIView?
  var editingAccessoryType: UITableViewCell.AccessoryType
  var editingAccessoryView: UIView?
  var indentationLevel: Int
  var indentationWidth: CGFloat
  @available(iOS 7.0, *)
  var separatorInset: UIEdgeInsets
  var isEditing: Bool
  func setEditing(_ editing: Bool, animated: Bool)
  var showingDeleteConfirmation: Bool { get }
  @available(iOS 9.0, *)
  var focusStyle: UITableViewCell.FocusStyle
  @available(iOS 3.0, *)
  func willTransition(to state: UITableViewCell.StateMask)
  @available(iOS 3.0, *)
  func didTransition(to state: UITableViewCell.StateMask)
  @available(iOS 11.0, *)
  func dragStateDidChange(_ dragState: UITableViewCell.DragState)
  @available(iOS 11.0, *)
  var userInteractionEnabledWhileDragging: Bool
}

@available(iOS 14.0, tvOS 14.0, *)
extension UITableViewCell {
  @available(iOS 14.0, tvOS 14.0, *)
  var contentConfiguration: UIContentConfiguration?
  @available(iOS 14.0, tvOS 14.0, *)
  func defaultContentConfiguration() -> UIListContentConfiguration
}

@available(iOS 14.0, tvOS 14.0, *)
extension UITableViewCell {
  @available(iOS 14.0, tvOS 14.0, *)
  var backgroundConfiguration: UIBackgroundConfiguration?
}

@available(iOS 14.0, tvOS 14.0, *)
extension UITableViewCell {
  @available(iOS 14.0, tvOS 14.0, *)
  @objc(_bridgedConfigurationState) dynamic var configurationState: UICellConfigurationState { get }
  @available(iOS 14.0, tvOS 14.0, *)
  @objc(_bridgedUpdateConfigurationUsingState:) dynamic func updateConfiguration(using state: UICellConfigurationState)
}
extension UITableViewCell {
}
