
extension Stream {
  struct PropertyKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  enum Status : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case notOpen
    case opening
    case open
    case reading
    case writing
    case atEnd
    case closed
    case error
  }
  struct Event : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var openCompleted: Stream.Event { get }
    static var hasBytesAvailable: Stream.Event { get }
    static var hasSpaceAvailable: Stream.Event { get }
    static var errorOccurred: Stream.Event { get }
    static var endEncountered: Stream.Event { get }
  }
}
class Stream : NSObject {
  func open()
  func close()
  unowned(unsafe) var delegate: @sil_unmanaged StreamDelegate?
  func property(forKey key: Stream.PropertyKey) -> Any?
  func setProperty(_ property: Any?, forKey key: Stream.PropertyKey) -> Bool
  func schedule(in aRunLoop: RunLoop, forMode mode: RunLoop.Mode)
  func remove(from aRunLoop: RunLoop, forMode mode: RunLoop.Mode)
  var streamStatus: Stream.Status { get }
  var streamError: Error? { get }
}
class InputStream : Stream {
  func read(_ buffer: UnsafeMutablePointer<UInt8>, maxLength len: Int) -> Int
  func getBuffer(_ buffer: UnsafeMutablePointer<UnsafeMutablePointer<UInt8>?>, length len: UnsafeMutablePointer<Int>) -> Bool
  var hasBytesAvailable: Bool { get }
  init(data: Data)
  @available(macOS 10.6, *)
  init?(url: URL)
}
class OutputStream : Stream {
  func write(_ buffer: UnsafePointer<UInt8>, maxLength len: Int) -> Int
  var hasSpaceAvailable: Bool { get }
  init(toMemory: ())
  init(toBuffer buffer: UnsafeMutablePointer<UInt8>, capacity: Int)
  @available(macOS 10.6, *)
  init?(url: URL, append shouldAppend: Bool)
}
extension Stream {
  @available(macOS 10.10, *)
  class func getStreamsToHost(withName hostname: String, port: Int, inputStream: AutoreleasingUnsafeMutablePointer<InputStream?>?, outputStream: AutoreleasingUnsafeMutablePointer<OutputStream?>?)
  @available(macOS, introduced: 10.3, deprecated: 10.10, message: "Please use getStreamsToHostWithName:port:inputStream:outputStream: instead")
  class func getStreamsTo(_ host: Host, port: Int, inputStream: AutoreleasingUnsafeMutablePointer<InputStream?>?, outputStream: AutoreleasingUnsafeMutablePointer<OutputStream?>?)
}
extension Stream {
  @available(macOS 10.10, *)
  class func getBoundStreams(withBufferSize bufferSize: Int, inputStream: AutoreleasingUnsafeMutablePointer<InputStream?>?, outputStream: AutoreleasingUnsafeMutablePointer<OutputStream?>?)
}
extension InputStream {
  convenience init?(fileAtPath path: String)
}
extension OutputStream {
  convenience init?(toFileAtPath path: String, append shouldAppend: Bool)
  class func toMemory() -> Self
}
protocol StreamDelegate : NSObjectProtocol {
  optional func stream(_ aStream: Stream, handle eventCode: Stream.Event)
}
extension Stream.PropertyKey {
  @available(macOS 10.3, *)
  static let socketSecurityLevelKey: Stream.PropertyKey
  @available(macOS 10.3, *)
  static let socksProxyConfigurationKey: Stream.PropertyKey
  @available(macOS 10.3, *)
  static let dataWrittenToMemoryStreamKey: Stream.PropertyKey
  @available(macOS 10.3, *)
  static let fileCurrentOffsetKey: Stream.PropertyKey
  @available(macOS 10.7, *)
  static let networkServiceType: Stream.PropertyKey
}
struct StreamSocketSecurityLevel : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension StreamSocketSecurityLevel {
  @available(macOS 10.3, *)
  static let none: StreamSocketSecurityLevel
  @available(macOS 10.3, *)
  static let ssLv2: StreamSocketSecurityLevel
  @available(macOS 10.3, *)
  static let ssLv3: StreamSocketSecurityLevel
  @available(macOS 10.3, *)
  static let tlSv1: StreamSocketSecurityLevel
  @available(macOS 10.3, *)
  static let negotiatedSSL: StreamSocketSecurityLevel
}
struct StreamSOCKSProxyConfiguration : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension StreamSOCKSProxyConfiguration {
  @available(macOS 10.3, *)
  static let hostKey: StreamSOCKSProxyConfiguration
  @available(macOS 10.3, *)
  static let portKey: StreamSOCKSProxyConfiguration
  @available(macOS 10.3, *)
  static let versionKey: StreamSOCKSProxyConfiguration
  @available(macOS 10.3, *)
  static let userKey: StreamSOCKSProxyConfiguration
  @available(macOS 10.3, *)
  static let passwordKey: StreamSOCKSProxyConfiguration
}
struct StreamSOCKSProxyVersion : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension StreamSOCKSProxyVersion {
  @available(macOS 10.3, *)
  static let version4: StreamSOCKSProxyVersion
  @available(macOS 10.3, *)
  static let version5: StreamSOCKSProxyVersion
}
@available(macOS 10.3, *)
let NSStreamSocketSSLErrorDomain: String
@available(macOS 10.3, *)
let NSStreamSOCKSErrorDomain: String
struct StreamNetworkServiceTypeValue : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension StreamNetworkServiceTypeValue {
  @available(macOS 10.7, *)
  static let voIP: StreamNetworkServiceTypeValue
  @available(macOS 10.7, *)
  static let video: StreamNetworkServiceTypeValue
  @available(macOS 10.7, *)
  static let background: StreamNetworkServiceTypeValue
  @available(macOS 10.7, *)
  static let voice: StreamNetworkServiceTypeValue
  @available(macOS 10.12, *)
  static let callSignaling: StreamNetworkServiceTypeValue
}
