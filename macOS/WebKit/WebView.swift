
@available(macOS, introduced: 10.3, deprecated: 10.14)
let WebElementDOMNodeKey: String
@available(macOS, introduced: 10.3, deprecated: 10.14)
let WebElementFrameKey: String
@available(macOS, introduced: 10.3, deprecated: 10.14)
let WebElementImageAltStringKey: String
@available(macOS, introduced: 10.3, deprecated: 10.14)
let WebElementImageKey: String
@available(macOS, introduced: 10.3, deprecated: 10.14)
let WebElementImageRectKey: String
@available(macOS, introduced: 10.3, deprecated: 10.14)
let WebElementImageURLKey: String
@available(macOS, introduced: 10.3, deprecated: 10.14)
let WebElementIsSelectedKey: String
@available(macOS, introduced: 10.3, deprecated: 10.14)
let WebElementLinkURLKey: String
@available(macOS, introduced: 10.3, deprecated: 10.14)
let WebElementLinkTargetFrameKey: String
@available(macOS, introduced: 10.3, deprecated: 10.14)
let WebElementLinkTitleKey: String
@available(macOS, introduced: 10.3, deprecated: 10.14)
let WebElementLinkLabelKey: String
extension NSNotification.Name {
  @available(macOS, introduced: 10.3, deprecated: 10.14)
  static let WebViewProgressStarted: NSNotification.Name
  @available(macOS, introduced: 10.3, deprecated: 10.14)
  static let WebViewProgressEstimateChanged: NSNotification.Name
  @available(macOS, introduced: 10.3, deprecated: 10.14)
  static let WebViewProgressFinished: NSNotification.Name
  static let WebViewDidBeginEditing: NSNotification.Name
  static let WebViewDidChange: NSNotification.Name
  static let WebViewDidEndEditing: NSNotification.Name
  static let WebViewDidChangeTypingStyle: NSNotification.Name
  static let WebViewDidChangeSelection: NSNotification.Name
}
@available(macOS, introduced: 10.3, deprecated: 10.14, message: "No longer supported; please adopt WKWebView.")
class WebView : NSView {
  class func canShowMIMEType(_ MIMEType: String!) -> Bool
  class func canShowMIMEType(asHTML MIMEType: String!) -> Bool
  class func mimeTypesShownAsHTML() -> [Any]!
  class func setMIMETypesShownAsHTML(_ MIMETypes: [Any]!)
  class func url(from pasteboard: NSPasteboard!) -> URL!
  class func urlTitle(from pasteboard: NSPasteboard!) -> String!
  class func registerURLScheme(asLocal scheme: String!)
  init!(frame: NSRect, frameName: String!, groupName: String!)
  func close()
  var shouldCloseWithWindow: Bool
  unowned(unsafe) var uiDelegate: @sil_unmanaged WebUIDelegate!
  unowned(unsafe) var resourceLoadDelegate: @sil_unmanaged WebResourceLoadDelegate!
  unowned(unsafe) var downloadDelegate: @sil_unmanaged WebDownloadDelegate!
  unowned(unsafe) var frameLoadDelegate: @sil_unmanaged WebFrameLoadDelegate!
  unowned(unsafe) var policyDelegate: @sil_unmanaged WebPolicyDelegate!
  var mainFrame: WebFrame! { get }
  var selectedFrame: WebFrame! { get }
  var backForwardList: WebBackForwardList! { get }
  func setMaintainsBackForwardList(_ flag: Bool)
  func goBack() -> Bool
  func goForward() -> Bool
  func go(toBackForwardItem item: WebHistoryItem!) -> Bool
  var textSizeMultiplier: Float
  var applicationNameForUserAgent: String!
  var customUserAgent: String!
  func userAgent(for URL: URL!) -> String!
  var supportsTextEncoding: Bool { get }
  var customTextEncodingName: String!
  var mediaStyle: String!
  func stringByEvaluatingJavaScript(from script: String!) -> String!
  var windowScriptObject: WebScriptObject! { get }
  var preferences: WebPreferences!
  var preferencesIdentifier: String!
  var hostWindow: NSWindow!
  func search(for string: String!, direction forward: Bool, caseSensitive caseFlag: Bool, wrap wrapFlag: Bool) -> Bool
  class func registerClass(_ viewClass: AnyClass!, representationClass: AnyClass!, forMIMEType MIMEType: String!)
  var groupName: String!
  var estimatedProgress: Double { get }
  var isLoading: Bool { get }
  func element(at point: NSPoint) -> [AnyHashable : Any]!
  var pasteboardTypesForSelection: [Any]! { get }
  func writeSelection(withPasteboardTypes types: [Any]!, to pasteboard: NSPasteboard!)
  func pasteboardTypes(forElement element: [AnyHashable : Any]!) -> [Any]!
  func writeElement(_ element: [AnyHashable : Any]!, withPasteboardTypes types: [Any]!, to pasteboard: NSPasteboard!)
  func moveDragCaret(to point: NSPoint)
  func removeDragCaret()
  var drawsBackground: Bool
  var shouldUpdateWhileOffscreen: Bool
  var mainFrameURL: String!
  var mainFrameDocument: DOMDocument! { get }
  var mainFrameTitle: String! { get }
  var mainFrameIcon: NSImage! { get }
}
extension WebView : NSUserInterfaceValidations {
  @IBAction func takeStringURLFrom(_ sender: Any?)
  @IBAction func stopLoading(_ sender: Any?)
  @IBAction func reload(_ sender: Any?)
  @IBAction func reloadFromOrigin(_ sender: Any?)
  var canGoBack: Bool { get }
  @IBAction func goBack(_ sender: Any?)
  var canGoForward: Bool { get }
  @IBAction func goForward(_ sender: Any?)
  var canMakeTextLarger: Bool { get }
  @IBAction func makeTextLarger(_ sender: Any?)
  var canMakeTextSmaller: Bool { get }
  @IBAction func makeTextSmaller(_ sender: Any?)
  var canMakeTextStandardSize: Bool { get }
  @IBAction func makeTextStandardSize(_ sender: Any?)
  @IBAction func toggleContinuousSpellChecking(_ sender: Any?)
  @IBAction func toggleSmartInsertDelete(_ sender: Any?)
}
extension WebView {
  func computedStyle(for element: DOMElement!, pseudoElement: String!) -> DOMCSSStyleDeclaration!
}
extension WebView {
  func editableDOMRange(for point: NSPoint) -> DOMRange!
  func setSelectedDOMRange(_ range: DOMRange!, affinity selectionAffinity: NSSelectionAffinity)
  var selectedDOMRange: DOMRange! { get }
  var selectionAffinity: NSSelectionAffinity { get }
  var maintainsInactiveSelection: Bool { get }
  var isEditable: Bool
  var typingStyle: DOMCSSStyleDeclaration!
  var smartInsertDeleteEnabled: Bool
  var isContinuousSpellCheckingEnabled: Bool
  var spellCheckerDocumentTag: Int { get }
  unowned(unsafe) var editingDelegate: @sil_unmanaged WebEditingDelegate!
  func styleDeclaration(withText text: String!) -> DOMCSSStyleDeclaration!
}
extension WebView {
  func replaceSelection(with node: DOMNode!)
  func replaceSelection(withText text: String!)
  func replaceSelection(withMarkupString markupString: String!)
  func replaceSelection(with archive: WebArchive!)
  func deleteSelection()
  func applyStyle(_ style: DOMCSSStyleDeclaration!)
}
extension WebView {
  func copy(_ sender: Any?)
  func cut(_ sender: Any?)
  func paste(_ sender: Any?)
  func copyFont(_ sender: Any?)
  func pasteFont(_ sender: Any?)
  func delete(_ sender: Any?)
  func pasteAsPlainText(_ sender: Any?)
  func pasteAsRichText(_ sender: Any?)
  func changeFont(_ sender: Any?)
  func changeAttributes(_ sender: Any?)
  func changeDocumentBackgroundColor(_ sender: Any?)
  func changeColor(_ sender: Any?)
  func alignCenter(_ sender: Any?)
  func alignJustified(_ sender: Any?)
  func alignLeft(_ sender: Any?)
  func alignRight(_ sender: Any?)
  func checkSpelling(_ sender: Any?)
  func showGuessPanel(_ sender: Any?)
  func performFindPanelAction(_ sender: Any?)
  func startSpeaking(_ sender: Any?)
  func stopSpeaking(_ sender: Any?)
  func moveToBeginningOfSentence(_ sender: Any?)
  func moveToBeginningOfSentenceAndModifySelection(_ sender: Any?)
  func moveToEndOfSentence(_ sender: Any?)
  func moveToEndOfSentenceAndModifySelection(_ sender: Any?)
  func selectSentence(_ sender: Any?)
  func overWrite(_ sender: Any?)
}
