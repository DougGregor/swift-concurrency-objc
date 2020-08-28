
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
    @available(macOS, introduced: 10.7, deprecated: 10.15, message: "Use PushKit for VoIP control purposes")
    case voip
    case video
    case background
    case voice
    case responsiveData
    @available(macOS 10.9, *)
    case avStreaming
    @available(macOS 10.9, *)
    case responsiveAV
    @available(macOS 10.12, *)
    case callSignaling
  }
}
@available(macOS 10.2, *)
class NSURLRequest : NSObject, NSSecureCoding, NSCopying, NSMutableCopying {
  convenience init(url URL: URL)
  init(url URL: URL, cachePolicy: NSURLRequest.CachePolicy, timeoutInterval: TimeInterval)
  var url: URL? { get }
  var cachePolicy: NSURLRequest.CachePolicy { get }
  var timeoutInterval: TimeInterval { get }
  var mainDocumentURL: URL? { get }
  @available(macOS 10.7, *)
  var networkServiceType: NSURLRequest.NetworkServiceType { get }
  @available(macOS 10.8, *)
  var allowsCellularAccess: Bool { get }
  @available(macOS 10.15, *)
  var allowsExpensiveNetworkAccess: Bool { get }
  @available(macOS 10.15, *)
  var allowsConstrainedNetworkAccess: Bool { get }
}

extension NSURLRequest : _HasCustomAnyHashableRepresentation {
}
@available(macOS 10.2, *)
class NSMutableURLRequest : NSURLRequest {
}
extension NSURLRequest {
  var httpMethod: String? { get }
  var allHTTPHeaderFields: [String : String]? { get }
  func value(forHTTPHeaderField field: String) -> String?
  var httpBody: Data? { get }
  var httpBodyStream: InputStream? { get }
  var httpShouldHandleCookies: Bool { get }
  @available(macOS 10.7, *)
  var httpShouldUsePipelining: Bool { get }
}
extension NSMutableURLRequest {
  func setValue(_ value: String?, forHTTPHeaderField field: String)
  func addValue(_ value: String, forHTTPHeaderField field: String)
}
