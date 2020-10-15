
@available(iOS 14.0, *)
enum __UICellAccessoryDisplayedState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case always
  case whenEditing
  case whenNotEditing
}
@available(iOS 14.0, *)
let __UICellAccessoryStandardDimension: CGFloat
@available(iOS 14.0, *)
class __UICellAccessory : NSObject, NSCopying, NSSecureCoding {
  var displayedState: __UICellAccessoryDisplayedState
  var isHidden: Bool
  var reservedLayoutWidth: CGFloat
  var tintColor: UIColor?
}
@available(iOS 14.0, *)
class __UICellAccessoryDisclosureIndicator : __UICellAccessory {
}
@available(iOS 14.0, *)
class __UICellAccessoryCheckmark : __UICellAccessory {
}
@available(iOS 14.0, *)
class __UICellAccessoryDelete : __UICellAccessory {
  var backgroundColor: UIColor?
  var actionHandler: (() -> Void)?
}
@available(iOS 14.0, *)
class __UICellAccessoryInsert : __UICellAccessory {
  var backgroundColor: UIColor?
  var actionHandler: (() -> Void)?
}
@available(iOS 14.0, *)
class __UICellAccessoryReorder : __UICellAccessory {
  var showsVerticalSeparator: Bool
}
@available(iOS 14.0, *)
class __UICellAccessoryMultiselect : __UICellAccessory {
  var backgroundColor: UIColor?
}
@available(iOS 14.0, *)
enum __UICellAccessoryOutlineDisclosureStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case automatic
  case header
  case cell
}
@available(iOS 14.0, *)
class __UICellAccessoryOutlineDisclosure : __UICellAccessory {
  var style: __UICellAccessoryOutlineDisclosureStyle
  var actionHandler: (() -> Void)?
}
@available(iOS 14.0, *)
class __UICellAccessoryLabel : __UICellAccessory {
  init(text: String)
  var text: String { get }
  var font: UIFont
  var adjustsFontForContentSizeCategory: Bool
}
@available(iOS 14.0, *)
enum __UICellAccessoryPlacement : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case leading
  case trailing
}
@available(iOS 14.0, *)
typealias __UICellAccessoryPosition = ([__UICellAccessory]) -> Int
@available(iOS 14.0, *)
func __UICellAccessoryPositionBeforeAccessoryOfClass(_ accessoryClass: AnyClass) -> __UICellAccessoryPosition
@available(iOS 14.0, *)
func __UICellAccessoryPositionAfterAccessoryOfClass(_ accessoryClass: AnyClass) -> __UICellAccessoryPosition
@available(iOS 14.0, *)
class __UICellAccessoryCustomView : __UICellAccessory {
  init(customView: UIView, placement: __UICellAccessoryPlacement)
  var customView: UIView { get }
  var placement: __UICellAccessoryPlacement { get }
  var maintainsFixedSize: Bool
  var position: __UICellAccessoryPosition!
}
