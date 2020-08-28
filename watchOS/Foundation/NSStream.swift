
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
  @available(watchOS 2.0, *)
  init?(url: URL)
}
class OutputStream : Stream {
  func write(_ buffer: UnsafePointer<UInt8>, maxLength len: Int) -> Int
  var hasSpaceAvailable: Bool { get }
  init(toMemory: ())
  init(toBuffer buffer: UnsafeMutablePointer<UInt8>, capacity: Int)
  @available(watchOS 2.0, *)
  init?(url: URL, append shouldAppend: Bool)
}
extension Stream {
  @available(watchOS 2.0, *)
  class func getStreamsToHost(withName hostname: String, port: Int, inputStream: AutoreleasingUnsafeMutablePointer<InputStream?>?, outputStream: AutoreleasingUnsafeMutablePointer<OutputStream?>?)
}
extension Stream {
  @available(watchOS 2.0, *)
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
  @available(watchOS 2.0, *)
  static let socketSecurityLevelKey: Stream.PropertyKey
  @available(watchOS 2.0, *)
  static let socksProxyConfigurationKey: Stream.PropertyKey
  @available(watchOS 2.0, *)
  static let dataWrittenToMemoryStreamKey: Stream.PropertyKey
  @available(watchOS 2.0, *)
  static let fileCurrentOffsetKey: Stream.PropertyKey
  @available(watchOS 2.0, *)
  static let networkServiceType: Stream.PropertyKey
}
struct StreamSocketSecurityLevel : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension StreamSocketSecurityLevel {
  @available(watchOS 2.0, *)
  static let none: StreamSocketSecurityLevel
  @available(watchOS 2.0, *)
  static let ssLv2: StreamSocketSecurityLevel
  @available(watchOS 2.0, *)
  static let ssLv3: StreamSocketSecurityLevel
  @available(watchOS 2.0, *)
  static let tlSv1: StreamSocketSecurityLevel
  @available(watchOS 2.0, *)
  static let negotiatedSSL: StreamSocketSecurityLevel
}
struct StreamSOCKSProxyConfiguration : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension StreamSOCKSProxyConfiguration {
  @available(watchOS 2.0, *)
  static let hostKey: StreamSOCKSProxyConfiguration
  @available(watchOS 2.0, *)
  static let portKey: StreamSOCKSProxyConfiguration
  @available(watchOS 2.0, *)
  static let versionKey: StreamSOCKSProxyConfiguration
  @available(watchOS 2.0, *)
  static let userKey: StreamSOCKSProxyConfiguration
  @available(watchOS 2.0, *)
  static let passwordKey: StreamSOCKSProxyConfiguration
}
struct StreamSOCKSProxyVersion : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension StreamSOCKSProxyVersion {
  @available(watchOS 2.0, *)
  static let version4: StreamSOCKSProxyVersion
  @available(watchOS 2.0, *)
  static let version5: StreamSOCKSProxyVersion
}
@available(watchOS 2.0, *)
let NSStreamSocketSSLErrorDomain: String
@available(watchOS 2.0, *)
let NSStreamSOCKSErrorDomain: String
struct StreamNetworkServiceTypeValue : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension StreamNetworkServiceTypeValue {
  @available(watchOS 2.0, *)
  static let voIP: StreamNetworkServiceTypeValue
  @available(watchOS 2.0, *)
  static let video: StreamNetworkServiceTypeValue
  @available(watchOS 2.0, *)
  static let background: StreamNetworkServiceTypeValue
  @available(watchOS 2.0, *)
  static let voice: StreamNetworkServiceTypeValue
  @available(watchOS 3.0, *)
  static let callSignaling: StreamNetworkServiceTypeValue
}
