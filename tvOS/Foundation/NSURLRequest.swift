
extension NSURLRequest {
  enum CachePolicy : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case useProtocolCachePolicy
    case reloadIgnoringLocalCacheData
    case reloadIgnoringLocalAndRemoteCacheData
    static var reloadIgnoringCacheData: NSURLRequest.CachePolicy { get }
    case returnCacheDataElseLoad
    case returnCacheDataDontLoad
    case reloadRevalidatingCacheData
  }
  enum NetworkServiceType : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case `default`
    @available(tvOS, introduced: 9.0, deprecated: 13.0, message: "Use PushKit for VoIP control purposes")
    case voip
    case video
    case background
    case voice
    case responsiveData
    @available(tvOS 9.0, *)
    case avStreaming
    @available(tvOS 9.0, *)
    case responsiveAV
    @available(tvOS 10.0, *)
    case callSignaling
  }
}
@available(tvOS 9.0, *)
class NSURLRequest : NSObject, NSSecureCoding, NSCopying, NSMutableCopying {
  convenience init(url URL: URL)
  init(url URL: URL, cachePolicy: NSURLRequest.CachePolicy, timeoutInterval: TimeInterval)
  var url: URL? { get }
  var cachePolicy: NSURLRequest.CachePolicy { get }
  var timeoutInterval: TimeInterval { get }
  var mainDocumentURL: URL? { get }
  @available(tvOS 9.0, *)
  var networkServiceType: NSURLRequest.NetworkServiceType { get }
  @available(tvOS 9.0, *)
  var allowsCellularAccess: Bool { get }
  @available(tvOS 13.0, *)
  var allowsExpensiveNetworkAccess: Bool { get }
  @available(tvOS 13.0, *)
  var allowsConstrainedNetworkAccess: Bool { get }
}

extension NSURLRequest : _HasCustomAnyHashableRepresentation {
}
@available(tvOS 9.0, *)
class NSMutableURLRequest : NSURLRequest {
}
extension NSURLRequest {
  var httpMethod: String? { get }
  var allHTTPHeaderFields: [String : String]? { get }
  func value(forHTTPHeaderField field: String) -> String?
  var httpBody: Data? { get }
  var httpBodyStream: InputStream? { get }
  var httpShouldHandleCookies: Bool { get }
  @available(tvOS 9.0, *)
  var httpShouldUsePipelining: Bool { get }
}
extension NSMutableURLRequest {
  func setValue(_ value: String?, forHTTPHeaderField field: String)
  func addValue(_ value: String, forHTTPHeaderField field: String)
}
