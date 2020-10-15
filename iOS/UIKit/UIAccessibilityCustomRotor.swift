
extension UIAccessibilityCustomRotor {
  enum Direction : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    @available(iOS 10.0, *)
    case previous
    @available(iOS 10.0, *)
    case next
  }
  @available(iOS 11.0, *)
  enum SystemRotorType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case none
    case link
    case visitedLink
    case heading
    case headingLevel1
    case headingLevel2
    case headingLevel3
    case headingLevel4
    case headingLevel5
    case headingLevel6
    case boldText
    case italicText
    case underlineText
    case misspelledWord
    case image
    case textField
    case table
    case list
    case landmark
  }
  typealias Search = (UIAccessibilityCustomRotorSearchPredicate) -> UIAccessibilityCustomRotorItemResult?
}
extension NSObject {
  @available(iOS 10.0, *)
  var accessibilityCustomRotors: [UIAccessibilityCustomRotor]?
  class func accessibilityCustomRotors() -> [UIAccessibilityCustomRotor]?
  class func setAccessibilityCustomRotors(_ accessibilityCustomRotors: [UIAccessibilityCustomRotor]?)
}
@available(iOS 10.0, *)
class UIAccessibilityCustomRotorSearchPredicate : NSObject {
  var currentItem: UIAccessibilityCustomRotorItemResult
  var searchDirection: UIAccessibilityCustomRotor.Direction
}
@available(iOS 10.0, *)
class UIAccessibilityCustomRotor : NSObject {
  init(name: String, itemSearch itemSearchBlock: @escaping UIAccessibilityCustomRotor.Search)
  @available(iOS 11.0, *)
  init(attributedName: NSAttributedString, itemSearch itemSearchBlock: @escaping UIAccessibilityCustomRotor.Search)
  @available(iOS 11.0, *)
  init(systemType type: UIAccessibilityCustomRotor.SystemRotorType, itemSearch itemSearchBlock: @escaping UIAccessibilityCustomRotor.Search)
  var name: String
  @available(iOS 11.0, *)
  @NSCopying var attributedName: NSAttributedString
  var itemSearchBlock: UIAccessibilityCustomRotor.Search
  @available(iOS 11.0, *)
  var systemRotorType: UIAccessibilityCustomRotor.SystemRotorType { get }
}
@available(iOS 10.0, *)
class UIAccessibilityCustomRotorItemResult : NSObject {
  init(targetElement: NSObjectProtocol, targetRange: UITextRange?)
  weak var targetElement: @sil_weak NSObjectProtocol?
  var targetRange: UITextRange?
}
