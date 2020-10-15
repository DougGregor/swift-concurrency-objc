
@available(macOS 10.13, *)
class NSAccessibilityCustomRotor : NSObject {
  init(label: String, itemSearchDelegate: NSAccessibilityCustomRotorItemSearchDelegate)
  init(rotorType: NSAccessibilityCustomRotor.RotorType, itemSearchDelegate: NSAccessibilityCustomRotorItemSearchDelegate)
  var type: NSAccessibilityCustomRotor.RotorType
  var label: String
  weak var itemSearchDelegate: @sil_weak NSAccessibilityCustomRotorItemSearchDelegate?
  weak var itemLoadingDelegate: @sil_weak NSAccessibilityElementLoading?
}
extension NSAccessibilityCustomRotor {
  @available(macOS 10.13, *)
  class ItemResult : NSObject {
    init(targetElement: NSAccessibilityElementProtocol)
    init(itemLoadingToken: NSAccessibilityLoadingToken, customLabel: String)
    weak var targetElement: @sil_weak NSAccessibilityElementProtocol? { get }
    var itemLoadingToken: NSAccessibilityLoadingToken? { get }
    var targetRange: NSRange
    var customLabel: String?
  }
  @available(macOS 10.13, *)
  class SearchParameters : NSObject {
    var currentItem: NSAccessibilityCustomRotor.ItemResult?
    var searchDirection: NSAccessibilityCustomRotor.SearchDirection
    var filterString: String
  }
  @available(macOS 10.13, *)
  enum SearchDirection : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case previous
    case next
  }
  @available(macOS 10.13, *)
  enum RotorType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case custom
    case any
    case annotation
    case boldText
    case heading
    case headingLevel1
    case headingLevel2
    case headingLevel3
    case headingLevel4
    case headingLevel5
    case headingLevel6
    case image
    case italicText
    case landmark
    case link
    case list
    case misspelledWord
    case table
    case textField
    case underlinedText
    case visitedLink
  }
}
@available(macOS 10.13, *)
protocol NSAccessibilityCustomRotorItemSearchDelegate : NSObjectProtocol {
  func rotor(_ rotor: NSAccessibilityCustomRotor, resultFor searchParameters: NSAccessibilityCustomRotor.SearchParameters) -> NSAccessibilityCustomRotor.ItemResult?
}
