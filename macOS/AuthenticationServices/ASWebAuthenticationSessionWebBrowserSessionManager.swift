
@available(macOS 10.15, *)
class ASWebAuthenticationSessionWebBrowserSessionManager : NSObject {
  class var shared: ASWebAuthenticationSessionWebBrowserSessionManager { get }
  var sessionHandler: ASWebAuthenticationSessionWebBrowserSessionHandling
  var wasLaunchedByAuthenticationServices: Bool { get }
}
