
@available(tvOS 9.0, *)
let NSURLProtectionSpaceHTTP: String
@available(tvOS 9.0, *)
let NSURLProtectionSpaceHTTPS: String
@available(tvOS 9.0, *)
let NSURLProtectionSpaceFTP: String
@available(tvOS 9.0, *)
let NSURLProtectionSpaceHTTPProxy: String
@available(tvOS 9.0, *)
let NSURLProtectionSpaceHTTPSProxy: String
@available(tvOS 9.0, *)
let NSURLProtectionSpaceFTPProxy: String
@available(tvOS 9.0, *)
let NSURLProtectionSpaceSOCKSProxy: String
@available(tvOS 9.0, *)
let NSURLAuthenticationMethodDefault: String
@available(tvOS 9.0, *)
let NSURLAuthenticationMethodHTTPBasic: String
@available(tvOS 9.0, *)
let NSURLAuthenticationMethodHTTPDigest: String
@available(tvOS 9.0, *)
let NSURLAuthenticationMethodHTMLForm: String
@available(tvOS 9.0, *)
let NSURLAuthenticationMethodNTLM: String
@available(tvOS 9.0, *)
let NSURLAuthenticationMethodNegotiate: String
@available(tvOS 9.0, *)
let NSURLAuthenticationMethodClientCertificate: String
@available(tvOS 9.0, *)
let NSURLAuthenticationMethodServerTrust: String
@available(tvOS 9.0, *)
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
  @available(tvOS 9.0, *)
  var distinguishedNames: [Data]? { get }
}
extension URLProtectionSpace {
  @available(tvOS 9.0, *)
  var serverTrust: SecTrust? { get }
}
