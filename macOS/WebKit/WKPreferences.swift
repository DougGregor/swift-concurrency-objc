
@available(macOS 10.10, *)
class WKPreferences : NSObject, NSSecureCoding {
  var minimumFontSize: CGFloat
  var javaScriptCanOpenWindowsAutomatically: Bool
  @available(macOS 10.15, *)
  var isFraudulentWebsiteWarningEnabled: Bool
  @available(macOS 10.12.3, *)
  var tabFocusesLinks: Bool
}
extension WKPreferences {
  @available(macOS, introduced: 10.10, deprecated: 10.15, message: "Java is no longer supported")
  var javaEnabled: Bool
  @available(macOS, introduced: 10.10, deprecated: 10.15, message: "Plug-ins are no longer supported")
  var plugInsEnabled: Bool
  @available(macOS, introduced: 10.10, deprecated: 11.0, message: "Use WKWebPagePreferences.allowsContentJavaScript to disable content JavaScript on a per-navigation basis")
  var javaScriptEnabled: Bool
}
