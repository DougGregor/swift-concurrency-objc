
protocol WKUIDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  optional func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView?
  @available(iOS 9.0, *)
  optional func webViewDidClose(_ webView: WKWebView)
  @available(iOS 8.0, *)
  optional func webView(_ webView: WKWebView, runJavaScriptAlertPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo, completionHandler: @escaping () -> Void)
  @available(iOS 8.0, *)
  optional func webView(_ webView: WKWebView, runJavaScriptConfirmPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo, completionHandler: @escaping (Bool) -> Void)
  @available(iOS 8.0, *)
  optional func webView(_ webView: WKWebView, runJavaScriptTextInputPanelWithPrompt prompt: String, defaultText: String?, initiatedByFrame frame: WKFrameInfo, completionHandler: @escaping (String?) -> Void)
  @available(iOS, introduced: 10.0, deprecated: 13.0)
  optional func webView(_ webView: WKWebView, shouldPreviewElement elementInfo: WKPreviewElementInfo) -> Bool
  @available(iOS, introduced: 10.0, deprecated: 13.0)
  optional func webView(_ webView: WKWebView, previewingViewControllerForElement elementInfo: WKPreviewElementInfo, defaultActions previewActions: [WKPreviewActionItem]) -> UIViewController?
  @available(iOS, introduced: 10.0, deprecated: 13.0)
  optional func webView(_ webView: WKWebView, commitPreviewingViewController previewingViewController: UIViewController)
  @available(iOS 13.0, *)
  optional func webView(_ webView: WKWebView, contextMenuConfigurationForElement elementInfo: WKContextMenuElementInfo, completionHandler: @escaping (UIContextMenuConfiguration?) -> Void)
  @available(iOS 13.0, *)
  optional func webView(_ webView: WKWebView, contextMenuWillPresentForElement elementInfo: WKContextMenuElementInfo)
  @available(iOS 13.0, *)
  optional func webView(_ webView: WKWebView, contextMenuForElement elementInfo: WKContextMenuElementInfo, willCommitWithAnimator animator: UIContextMenuInteractionCommitAnimating)
  @available(iOS 13.0, *)
  optional func webView(_ webView: WKWebView, contextMenuDidEndForElement elementInfo: WKContextMenuElementInfo)
}
