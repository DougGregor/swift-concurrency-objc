
@available(macOS 10.15, *)
protocol ASWebAuthenticationSessionWebBrowserSessionHandling {
  func begin(_ request: ASWebAuthenticationSessionRequest!)
  func cancel(_ request: ASWebAuthenticationSessionRequest!)
}
