
@available(tvOS 12.0, *)
class TVDigitEntryViewController : UIViewController {
  var entryCompletionHandler: (String) -> Void
  var titleText: String?
  var promptText: String?
  var isSecureDigitEntry: Bool
  var numberOfDigits: Int
  func clearEntry(animated: Bool)
}
