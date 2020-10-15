
extension Formatter {
  @available(macOS 10.10, *)
  enum Context : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unknown
    case dynamic
    case standalone
    case listItem
    case beginningOfSentence
    case middleOfSentence
  }
  @available(macOS 10.10, *)
  enum UnitStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case short
    case medium
    case long
  }
}
class Formatter : NSObject, NSCopying, NSCoding {
  func string(for obj: Any?) -> String?
  func attributedString(for obj: Any, withDefaultAttributes attrs: [NSAttributedString.Key : Any]? = nil) -> NSAttributedString?
  func editingString(for obj: Any) -> String?
  func getObjectValue(_ obj: AutoreleasingUnsafeMutablePointer<AnyObject?>?, for string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>?) -> Bool
  func isPartialStringValid(_ partialString: String, newEditingString newString: AutoreleasingUnsafeMutablePointer<NSString?>?, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>?) -> Bool
  func isPartialStringValid(_ partialStringPtr: AutoreleasingUnsafeMutablePointer<NSString>, proposedSelectedRange proposedSelRangePtr: NSRangePointer?, originalString origString: String, originalSelectedRange origSelRange: NSRange, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>?) -> Bool
}
