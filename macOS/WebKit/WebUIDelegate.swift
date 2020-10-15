
var WebMenuItemTagOpenLinkInNewWindow: Int { get }
var WebMenuItemTagDownloadLinkToDisk: Int { get }
var WebMenuItemTagCopyLinkToClipboard: Int { get }
var WebMenuItemTagOpenImageInNewWindow: Int { get }
var WebMenuItemTagDownloadImageToDisk: Int { get }
var WebMenuItemTagCopyImageToClipboard: Int { get }
var WebMenuItemTagOpenFrameInNewWindow: Int { get }
var WebMenuItemTagCopy: Int { get }
var WebMenuItemTagGoBack: Int { get }
var WebMenuItemTagGoForward: Int { get }
var WebMenuItemTagStop: Int { get }
var WebMenuItemTagReload: Int { get }
var WebMenuItemTagCut: Int { get }
var WebMenuItemTagPaste: Int { get }
var WebMenuItemTagSpellingGuess: Int { get }
var WebMenuItemTagNoGuessesFound: Int { get }
var WebMenuItemTagIgnoreSpelling: Int { get }
var WebMenuItemTagLearnSpelling: Int { get }
var WebMenuItemTagOther: Int { get }
var WebMenuItemTagSearchInSpotlight: Int { get }
var WebMenuItemTagSearchWeb: Int { get }
var WebMenuItemTagLookUpInDictionary: Int { get }
var WebMenuItemTagOpenWithDefaultApplication: Int { get }
var WebMenuItemPDFActualSize: Int { get }
var WebMenuItemPDFZoomIn: Int { get }
var WebMenuItemPDFZoomOut: Int { get }
var WebMenuItemPDFAutoSize: Int { get }
var WebMenuItemPDFSinglePage: Int { get }
var WebMenuItemPDFFacingPages: Int { get }
var WebMenuItemPDFContinuous: Int { get }
var WebMenuItemPDFNextPage: Int { get }
var WebMenuItemPDFPreviousPage: Int { get }
@available(macOS, introduced: 10.3, deprecated: 10.14)
struct WebDragDestinationAction : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var DHTML: WebDragDestinationAction { get }
  static var edit: WebDragDestinationAction { get }
  static var load: WebDragDestinationAction { get }
  static var any: WebDragDestinationAction { get }
}
@available(macOS, introduced: 10.3, deprecated: 10.14)
struct WebDragSourceAction : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var DHTML: WebDragSourceAction { get }
  static var image: WebDragSourceAction { get }
  static var link: WebDragSourceAction { get }
  static var selection: WebDragSourceAction { get }
  static var any: WebDragSourceAction { get }
}
@available(macOS, introduced: 10.3, deprecated: 10.14)
protocol WebOpenPanelResultListener : NSObjectProtocol {
  func chooseFilename(_ fileName: String!)
  @available(macOS 10.6, *)
  func chooseFilenames(_ fileNames: [Any]!)
  func cancel()
}
@available(macOS, introduced: 10.3, deprecated: 10.14)
protocol WebUIDelegate : NSObjectProtocol {
  optional func webView(_ sender: WebView!, createWebViewWith request: URLRequest!) -> WebView!
  optional func webViewShow(_ sender: WebView!)
  optional func webView(_ sender: WebView!, createWebViewModalDialogWith request: URLRequest!) -> WebView!
  optional func webViewRunModal(_ sender: WebView!)
  optional func webViewClose(_ sender: WebView!)
  optional func webViewFocus(_ sender: WebView!)
  optional func webViewUnfocus(_ sender: WebView!)
  optional func webViewFirstResponder(_ sender: WebView!) -> NSResponder!
  optional func webView(_ sender: WebView!, makeFirstResponder responder: NSResponder!)
  optional func webView(_ sender: WebView!, setStatusText text: String!)
  optional func webViewStatusText(_ sender: WebView!) -> String!
  optional func webViewAreToolbarsVisible(_ sender: WebView!) -> Bool
  optional func webView(_ sender: WebView!, setToolbarsVisible visible: Bool)
  optional func webViewIsStatusBarVisible(_ sender: WebView!) -> Bool
  optional func webView(_ sender: WebView!, setStatusBarVisible visible: Bool)
  optional func webViewIsResizable(_ sender: WebView!) -> Bool
  optional func webView(_ sender: WebView!, setResizable resizable: Bool)
  optional func webView(_ sender: WebView!, setFrame frame: NSRect)
  optional func webViewFrame(_ sender: WebView!) -> NSRect
  optional func webView(_ sender: WebView!, runJavaScriptAlertPanelWithMessage message: String!, initiatedBy frame: WebFrame!)
  optional func webView(_ sender: WebView!, runJavaScriptConfirmPanelWithMessage message: String!, initiatedBy frame: WebFrame!) -> Bool
  optional func webView(_ sender: WebView!, runJavaScriptTextInputPanelWithPrompt prompt: String!, defaultText: String!, initiatedBy frame: WebFrame!) -> String!
  optional func webView(_ sender: WebView!, runBeforeUnloadConfirmPanelWithMessage message: String!, initiatedBy frame: WebFrame!) -> Bool
  optional func webView(_ sender: WebView!, runOpenPanelForFileButtonWith resultListener: WebOpenPanelResultListener!)
  @available(macOS 10.6, *)
  optional func webView(_ sender: WebView!, runOpenPanelForFileButtonWith resultListener: WebOpenPanelResultListener!, allowMultipleFiles: Bool)
  optional func webView(_ sender: WebView!, mouseDidMoveOverElement elementInformation: [AnyHashable : Any]!, modifierFlags: Int)
  optional func webView(_ sender: WebView!, contextMenuItemsForElement element: [AnyHashable : Any]!, defaultMenuItems: [Any]!) -> [Any]!
  optional func webView(_ webView: WebView!, validate item: NSValidatedUserInterfaceItem!, defaultValidation: Bool) -> Bool
  optional func webView(_ webView: WebView!, shouldPerformAction action: Selector!, fromSender sender: Any!) -> Bool
  optional func webView(_ webView: WebView!, dragDestinationActionMaskFor draggingInfo: NSDraggingInfo!) -> Int
  optional func webView(_ webView: WebView!, willPerform action: WebDragDestinationAction, for draggingInfo: NSDraggingInfo!)
  optional func webView(_ webView: WebView!, dragSourceActionMaskFor point: NSPoint) -> Int
  optional func webView(_ webView: WebView!, willPerform action: WebDragSourceAction, from point: NSPoint, with pasteboard: NSPasteboard!)
  optional func webView(_ sender: WebView!, print frameView: WebFrameView!)
  optional func webViewHeaderHeight(_ sender: WebView!) -> Float
  optional func webViewFooterHeight(_ sender: WebView!) -> Float
  optional func webView(_ sender: WebView!, drawHeaderIn rect: NSRect)
  optional func webView(_ sender: WebView!, drawFooterIn rect: NSRect)
}
