
@available(iOS 8.0, *)
class WKPreferences : NSObject, NSSecureCoding {
  var minimumFontSize: CGFloat
  var javaScriptCanOpenWindowsAutomatically: Bool
  @available(iOS 13.0, *)
  var isFraudulentWebsiteWarningEnabled: Bool
}
extension WKPreferences {
  @available(iOS, introduced: 8.0, deprecated: 14.0, message: "Use WKWebPagePreferences.allowsContentJavaScript to disable content JavaScript on a per-navigation basis")
  var javaScriptEnabled: Bool
}
