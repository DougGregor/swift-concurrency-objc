
extension NSTextStorage {
  @available(tvOS 7.0, *)
  struct EditActions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var editedAttributes: NSTextStorage.EditActions { get }
    static var editedCharacters: NSTextStorage.EditActions { get }
  }
  @available(tvOS 7.0, *)
  class let willProcessEditingNotification: NSNotification.Name
  @available(tvOS 7.0, *)
  class let didProcessEditingNotification: NSNotification.Name
}
@available(tvOS 7.0, *)
class NSTextStorage : NSMutableAttributedString, NSSecureCoding {
  var layoutManagers: [NSLayoutManager] { get }
  func addLayoutManager(_ aLayoutManager: NSLayoutManager)
  func removeLayoutManager(_ aLayoutManager: NSLayoutManager)
  var editedMask: NSTextStorage.EditActions { get }
  var editedRange: NSRange { get }
  var changeInLength: Int { get }
  weak var delegate: @sil_weak NSTextStorageDelegate?
  func edited(_ editedMask: NSTextStorage.EditActions, range editedRange: NSRange, changeInLength delta: Int)
  func processEditing()
  var fixesAttributesLazily: Bool { get }
  func invalidateAttributes(in range: NSRange)
  func ensureAttributesAreFixed(in range: NSRange)
}
protocol NSTextStorageDelegate : NSObjectProtocol {
  @available(tvOS 7.0, *)
  optional func textStorage(_ textStorage: NSTextStorage, willProcessEditing editedMask: NSTextStorage.EditActions, range editedRange: NSRange, changeInLength delta: Int)
  @available(tvOS 7.0, *)
  @asyncHandler optional func textStorage(_ textStorage: NSTextStorage, didProcessEditing editedMask: NSTextStorage.EditActions, range editedRange: NSRange, changeInLength delta: Int)
}
