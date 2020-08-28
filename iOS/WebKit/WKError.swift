
@available(iOS 8.0, *)
let WKErrorDomain: String
@available(iOS 8.0, *)
struct WKError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unknown: WKError.Code { get }
  static var webContentProcessTerminated: WKError.Code { get }
  static var webViewInvalidated: WKError.Code { get }
  static var javaScriptExceptionOccurred: WKError.Code { get }
  @available(iOS 9.0, *)
  static var javaScriptResultTypeIsUnsupported: WKError.Code { get }
  @available(iOS 11.0, *)
  static var contentRuleListStoreCompileFailed: WKError.Code { get }
  @available(iOS 11.0, *)
  static var contentRuleListStoreLookUpFailed: WKError.Code { get }
  @available(iOS 11.0, *)
  static var contentRuleListStoreRemoveFailed: WKError.Code { get }
  @available(iOS 11.0, *)
  static var contentRuleListStoreVersionMismatch: WKError.Code { get }
  @available(iOS 13.0, *)
  static var attributedStringContentFailedToLoad: WKError.Code { get }
  @available(iOS 13.0, *)
  static var attributedStringContentLoadTimedOut: WKError.Code { get }
  @available(iOS 14.0, *)
  static var javaScriptInvalidFrameTarget: WKError.Code { get }
  @available(iOS 14.0, *)
  static var navigationAppBoundDomain: WKError.Code { get }
  @available(iOS 14.0, *)
  static var javaScriptAppBoundDomain: WKError.Code { get }
}
