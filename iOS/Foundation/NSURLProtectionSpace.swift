
@available(iOS 2.0, *)
let NSURLProtectionSpaceHTTP: String
@available(iOS 2.0, *)
let NSURLProtectionSpaceHTTPS: String
@available(iOS 2.0, *)
let NSURLProtectionSpaceFTP: String
@available(iOS 2.0, *)
let NSURLProtectionSpaceHTTPProxy: String
@available(iOS 2.0, *)
let NSURLProtectionSpaceHTTPSProxy: String
@available(iOS 2.0, *)
let NSURLProtectionSpaceFTPProxy: String
@available(iOS 2.0, *)
let NSURLProtectionSpaceSOCKSProxy: String
@available(iOS 2.0, *)
let NSURLAuthenticationMethodDefault: String
@available(iOS 2.0, *)
let NSURLAuthenticationMethodHTTPBasic: String
@available(iOS 2.0, *)
let NSURLAuthenticationMethodHTTPDigest: String
@available(iOS 2.0, *)
let NSURLAuthenticationMethodHTMLForm: String
@available(iOS 2.0, *)
let NSURLAuthenticationMethodNTLM: String
@available(iOS 2.0, *)
let NSURLAuthenticationMethodNegotiate: String
@available(iOS 3.0, *)
let NSURLAuthenticationMethodClientCertificate: String
@available(iOS 3.0, *)
let NSURLAuthenticationMethodServerTrust: String
@available(iOS 2.0, *)
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
  @available(iOS 3.0, *)
  var distinguishedNames: [Data]? { get }
}
extension URLProtectionSpace {
  @available(iOS 3.0, *)
  var serverTrust: SecTrust? { get }
}
