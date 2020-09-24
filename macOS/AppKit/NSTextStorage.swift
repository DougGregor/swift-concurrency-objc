
@available(macOS 10.11, *)
struct NSTextStorageEditActions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(macOS 10.0, *)
  static var editedAttributes: NSTextStorageEditActions { get }
  @available(macOS 10.0, *)
  static var editedCharacters: NSTextStorageEditActions { get }
}
@available(macOS 10.0, *)
class NSTextStorage : NSMutableAttributedString, NSSecureCoding {
  var layoutManagers: [NSLayoutManager] { get }
  func addLayoutManager(_ aLayoutManager: NSLayoutManager)
  func removeLayoutManager(_ aLayoutManager: NSLayoutManager)
  var editedMask: NSTextStorageEditActions { get }
  var editedRange: NSRange { get }
  var changeInLength: Int { get }
  weak var delegate: @sil_weak NSTextStorageDelegate?
  func edited(_ editedMask: NSTextStorageEditActions, range editedRange: NSRange, changeInLength delta: Int)
  func processEditing()
  var fixesAttributesLazily: Bool { get }
  func invalidateAttributes(in range: NSRange)
  func ensureAttributesAreFixed(in range: NSRange)
}
protocol NSTextStorageDelegate : NSObjectProtocol {
  @available(macOS 10.11, *)
  optional func textStorage(_ textStorage: NSTextStorage, willProcessEditing editedMask: NSTextStorageEditActions, range editedRange: NSRange, changeInLength delta: Int)
  @available(macOS 10.11, *)
  @asyncHandler optional func textStorage(_ textStorage: NSTextStorage, didProcessEditing editedMask: NSTextStorageEditActions, range editedRange: NSRange, changeInLength delta: Int)
}
extension NSTextStorage {
  @available(macOS 10.0, *)
  class let willProcessEditingNotification: NSNotification.Name
  @available(macOS 10.0, *)
  class let didProcessEditingNotification: NSNotification.Name
}
extension NSObject {
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use -textStorage:willProcessEditing:range:changeInLength: instead.")
  class func textStorageWillProcessEditing(_ notification: Notification)
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use -textStorage:willProcessEditing:range:changeInLength: instead.")
  func textStorageWillProcessEditing(_ notification: Notification)
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use -textStorage:didProcessEditing:range:changeInLength: instead.")
  class func textStorageDidProcessEditing(_ notification: Notification)
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use -textStorage:didProcessEditing:range:changeInLength: instead.")
  func textStorageDidProcessEditing(_ notification: Notification)
}
