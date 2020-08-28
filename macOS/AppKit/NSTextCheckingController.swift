
@available(macOS 10.15, *)
class NSTextCheckingController : NSObject {
  init(client: NSTextCheckingClient)
  var client: NSTextCheckingClient { get }
  func invalidate()
  func didChangeText(in range: NSRange)
  func insertedText(in range: NSRange)
  func didChangeSelectedRange()
  func considerTextChecking(for range: NSRange)
  func checkText(in range: NSRange, types checkingTypes: NSTextCheckingTypes, options: [NSSpellChecker.OptionKey : Any] = [:])
  func checkTextInSelection(_ sender: Any?)
  func checkTextInDocument(_ sender: Any?)
  func orderFrontSubstitutionsPanel(_ sender: Any?)
  func checkSpelling(_ sender: Any?)
  func showGuessPanel(_ sender: Any?)
  func changeSpelling(_ sender: Any?)
  func ignoreSpelling(_ sender: Any?)
  func updateCandidates()
  func validAnnotations() -> [NSAttributedString.Key]
  func menu(at location: Int, clickedOnSelection: Bool, effectiveRange: NSRangePointer) -> NSMenu?
  var spellCheckerDocumentTag: Int
}
