
@available(macOS 10.12.2, *)
class NSCandidateListTouchBarItem<CandidateType> : NSTouchBarItem where CandidateType : AnyObject {
  weak var client: @sil_weak (NSView & NSTextInputClient)?
  weak var delegate: @sil_weak NSCandidateListTouchBarItemDelegate?
  var isCollapsed: Bool
  var allowsCollapsing: Bool
  var isCandidateListVisible: Bool { get }
  func update(withInsertionPointVisibility isVisible: Bool)
  var allowsTextInputContextCandidates: Bool
  var attributedStringForCandidate: ((CandidateType, Int) -> NSAttributedString)?
  var candidates: [CandidateType] { get }
  func setCandidates(_ candidates: [CandidateType], forSelectedRange selectedRange: NSRange, in originalString: String?)
}
protocol NSCandidateListTouchBarItemDelegate : NSObjectProtocol {
  @available(macOS 10.12.2, *)
  optional func candidateListTouchBarItem(_ anItem: NSCandidateListTouchBarItem<AnyObject>, beginSelectingCandidateAt index: Int)
  @available(macOS 10.12.2, *)
  optional func candidateListTouchBarItem(_ anItem: NSCandidateListTouchBarItem<AnyObject>, changeSelectionFromCandidateAt previousIndex: Int, to index: Int)
  @available(macOS 10.12.2, *)
  optional func candidateListTouchBarItem(_ anItem: NSCandidateListTouchBarItem<AnyObject>, endSelectingCandidateAt index: Int)
  @available(macOS 10.12.2, *)
  optional func candidateListTouchBarItem(_ anItem: NSCandidateListTouchBarItem<AnyObject>, changedCandidateListVisibility isVisible: Bool)
}
extension NSView {
  @available(macOS 10.12.2, *)
  var candidateListTouchBarItem: NSCandidateListTouchBarItem<AnyObject>? { get }
}
extension NSTouchBarItem.Identifier {
  @available(macOS 10.12.2, *)
  static let candidateList: NSTouchBarItem.Identifier
}
