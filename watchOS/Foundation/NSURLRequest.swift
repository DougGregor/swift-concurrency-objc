
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
    @available(watchOS, introduced: 2.0, deprecated: 6.0, message: "Use PushKit for VoIP control purposes")
    case voip
    case video
    case background
    case voice
    case responsiveData
    @available(watchOS 2.0, *)
    case avStreaming
    @available(watchOS 2.0, *)
    case responsiveAV
    @available(watchOS 3.0, *)
    case callSignaling
  }
}
@available(watchOS 2.0, *)
class NSURLRequest : NSObject, NSSecureCoding, NSCopying, NSMutableCopying {
  convenience init(url URL: URL)
  init(url URL: URL, cachePolicy: NSURLRequest.CachePolicy, timeoutInterval: TimeInterval)
  var url: URL? { get }
  var cachePolicy: NSURLRequest.CachePolicy { get }
  var timeoutInterval: TimeInterval { get }
  var mainDocumentURL: URL? { get }
  @available(watchOS 2.0, *)
  var networkServiceType: NSURLRequest.NetworkServiceType { get }
  @available(watchOS 2.0, *)
  var allowsCellularAccess: Bool { get }
  @available(watchOS 6.0, *)
  var allowsExpensiveNetworkAccess: Bool { get }
  @available(watchOS 6.0, *)
  var allowsConstrainedNetworkAccess: Bool { get }
}

extension NSURLRequest : _HasCustomAnyHashableRepresentation {
}
@available(watchOS 2.0, *)
class NSMutableURLRequest : NSURLRequest {
}
extension NSURLRequest {
  var httpMethod: String? { get }
  var allHTTPHeaderFields: [String : String]? { get }
  func value(forHTTPHeaderField field: String) -> String?
  var httpBody: Data? { get }
  var httpBodyStream: InputStream? { get }
  var httpShouldHandleCookies: Bool { get }
  @available(watchOS 2.0, *)
  var httpShouldUsePipelining: Bool { get }
}
extension NSMutableURLRequest {
  func setValue(_ value: String?, forHTTPHeaderField field: String)
  func addValue(_ value: String, forHTTPHeaderField field: String)
}
