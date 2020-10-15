
@available(macOS 10.5, *)
let NSURLProtectionSpaceHTTP: String
@available(macOS 10.5, *)
let NSURLProtectionSpaceHTTPS: String
@available(macOS 10.5, *)
let NSURLProtectionSpaceFTP: String
@available(macOS 10.2, *)
let NSURLProtectionSpaceHTTPProxy: String
@available(macOS 10.2, *)
let NSURLProtectionSpaceHTTPSProxy: String
@available(macOS 10.2, *)
let NSURLProtectionSpaceFTPProxy: String
@available(macOS 10.2, *)
let NSURLProtectionSpaceSOCKSProxy: String
@available(macOS 10.2, *)
let NSURLAuthenticationMethodDefault: String
@available(macOS 10.2, *)
let NSURLAuthenticationMethodHTTPBasic: String
@available(macOS 10.2, *)
let NSURLAuthenticationMethodHTTPDigest: String
@available(macOS 10.2, *)
let NSURLAuthenticationMethodHTMLForm: String
@available(macOS 10.5, *)
let NSURLAuthenticationMethodNTLM: String
@available(macOS 10.5, *)
let NSURLAuthenticationMethodNegotiate: String
@available(macOS 10.6, *)
let NSURLAuthenticationMethodClientCertificate: String
@available(macOS 10.6, *)
let NSURLAuthenticationMethodServerTrust: String
@available(macOS 10.2, *)
class URLProtectionSpace : NSObject, NSSecureCoding, NSCopying {
  init(host: String, port: Int, protocol: String?, realm: String?, authenticationMethod: String?)
  init(proxyHost host: String, port: Int, type: String?, realm: String?, authenticationMethod: String?)
  var realm: String? { get }
  var receivesCredentialSecurely: Bool { get }
  var host: String { get }
  var port: Int { get }
  var proxyType: String? { get }
  var `protocol`: String? { get }
  var authenticationMethod: String { get }
}
extension URLProtectionSpace {
  @available(macOS 10.6, *)
  var distinguishedNames: [Data]? { get }
}
extension URLProtectionSpace {
  @available(macOS 10.6, *)
  var serverTrust: SecTrust? { get }
}
