
@available(macOS 10.10, *)
let WKErrorDomain: String
@available(macOS 10.10, *)
struct WKError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unknown: WKError.Code { get }
  static var webContentProcessTerminated: WKError.Code { get }
  static var webViewInvalidated: WKError.Code { get }
  static var javaScriptExceptionOccurred: WKError.Code { get }
  @available(macOS 10.11, *)
  static var javaScriptResultTypeIsUnsupported: WKError.Code { get }
  @available(macOS 10.13, *)
  static var contentRuleListStoreCompileFailed: WKError.Code { get }
  @available(macOS 10.13, *)
  static var contentRuleListStoreLookUpFailed: WKError.Code { get }
  @available(macOS 10.13, *)
  static var contentRuleListStoreRemoveFailed: WKError.Code { get }
  @available(macOS 10.13, *)
  static var contentRuleListStoreVersionMismatch: WKError.Code { get }
  @available(macOS 10.15, *)
  static var attributedStringContentFailedToLoad: WKError.Code { get }
  @available(macOS 10.15, *)
  static var attributedStringContentLoadTimedOut: WKError.Code { get }
  @available(macOS 11.0, *)
  static var javaScriptInvalidFrameTarget: WKError.Code { get }
  @available(macOS 11.0, *)
  static var navigationAppBoundDomain: WKError.Code { get }
  @available(macOS 11.0, *)
  static var javaScriptAppBoundDomain: WKError.Code { get }
}
