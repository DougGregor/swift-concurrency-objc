
extension NSTextFinder {
  @available(macOS 10.7, *)
  enum Action : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case showFindInterface
    case nextMatch
    case previousMatch
    case replaceAll
    case replace
    case replaceAndFind
    case setSearchString
    case replaceAllInSelection
    case selectAll
    case selectAllInSelection
    case hideFindInterface
    case showReplaceInterface
    case hideReplaceInterface
  }
  @available(macOS 10.7, *)
  enum MatchingType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case contains
    case startsWith
    case fullWord
    case endsWith
  }
}
extension NSPasteboard.PasteboardType {
  struct TextFinderOptionKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension NSPasteboard.PasteboardType.TextFinderOptionKey {
  @available(macOS 10.7, *)
  static let textFinderCaseInsensitiveKey: NSPasteboard.PasteboardType.TextFinderOptionKey
  @available(macOS 10.7, *)
  static let textFinderMatchingTypeKey: NSPasteboard.PasteboardType.TextFinderOptionKey
}
@available(macOS 10.7, *)
class NSTextFinder : NSObject, NSCoding {
  @IBOutlet unowned(unsafe) var client: @sil_unmanaged NSTextFinderClient?
  func performAction(_ op: NSTextFinder.Action)
  func validateAction(_ op: NSTextFinder.Action) -> Bool
  @IBOutlet unowned(unsafe) var findBarContainer: @sil_unmanaged NSTextFinderBarContainer?
  func cancelFindIndicator()
  var findIndicatorNeedsUpdate: Bool
  var isIncrementalSearchingEnabled: Bool
  var incrementalSearchingShouldDimContentView: Bool
  var incrementalMatchRanges: [NSValue] { get }
  class func drawIncrementalMatchHighlight(in rect: NSRect)
  func noteClientStringWillChange()
}
protocol NSTextFinderClient : NSObjectProtocol {
  optional var isSelectable: Bool { get }
  optional var allowsMultipleSelection: Bool { get }
  optional var isEditable: Bool { get }
  optional var string: String { get }
  optional func string(at characterIndex: Int, effectiveRange outRange: NSRangePointer, endsWithSearchBoundary outFlag: UnsafeMutablePointer<ObjCBool>) -> String
  optional func stringLength() -> Int
  optional var firstSelectedRange: NSRange { get }
  optional var selectedRanges: [NSValue] { get set }
  optional func scrollRangeToVisible(_ range: NSRange)
  optional func shouldReplaceCharacters(inRanges ranges: [NSValue], with strings: [String]) -> Bool
  optional func replaceCharacters(in range: NSRange, with string: String)
  optional func didReplaceCharacters()
  optional func contentView(at index: Int, effectiveCharacterRange outRange: NSRangePointer) -> NSView
  optional func rects(forCharacterRange range: NSRange) -> [NSValue]?
  optional var visibleCharacterRanges: [NSValue] { get }
  optional func drawCharacters(in range: NSRange, forContentView view: NSView)
}
protocol NSTextFinderBarContainer : NSObjectProtocol {
  var findBarView: NSView? { get set }
  var isFindBarVisible: Bool { get set }
  func findBarViewDidChangeHeight()
  optional func contentView() -> NSView?
}
