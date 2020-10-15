
@available(watchOS 2.0, *)
struct NEAppProxyFlowError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var notConnected: NEAppProxyFlowError.Code { get }
  static var peerReset: NEAppProxyFlowError.Code { get }
  static var hostUnreachable: NEAppProxyFlowError.Code { get }
  static var invalidArgument: NEAppProxyFlowError.Code { get }
  static var aborted: NEAppProxyFlowError.Code { get }
  static var refused: NEAppProxyFlowError.Code { get }
  static var timedOut: NEAppProxyFlowError.Code { get }
  static var `internal`: NEAppProxyFlowError.Code { get }
}
extension NSNotification.Name {
}
extension NENetworkRule {
}
var NEFilterFlowBytesMax: UInt64 { get }
var NEFilterProviderRemediationURLFlowURLHostname: String { get }
var NEFilterProviderRemediationURLFlowURL: String { get }
var NEFilterProviderRemediationURLOrganization: String { get }
var NEFilterProviderRemediationURLUsername: String { get }
extension NEFilterReport {
}
extension NEFilterManager {
}
extension NEFilterPacketProvider {
}
@available(watchOS 7.0, *)
class NEHotspotNetwork : NSObject {
  @available(watchOS 7.0, *)
  var ssid: String { get }
  @available(watchOS 7.0, *)
  var bssid: String { get }
  @available(watchOS 7.0, *)
  class func fetchCurrent(completionHandler: @escaping (NEHotspotNetwork?) -> Void)
}
extension NSMutableURLRequest {
}
extension NEHotspotEAPSettings {
}
@available(watchOS 7.0, *)
class NEHotspotConfiguration : NSObject, NSCopying, NSSecureCoding {
  @available(watchOS 7.0, *)
  var ssid: String { get }
  @available(watchOS 7.0, *)
  var ssidPrefix: String { get }
  @available(watchOS 7.0, *)
  var joinOnce: Bool
  @available(watchOS 7.0, *)
  @NSCopying var lifeTimeInDays: NSNumber
  @available(watchOS 7.0, *)
  var hidden: Bool
  @available(watchOS 7.0, *)
  init(ssid SSID: String)
  @available(watchOS 7.0, *)
  init(ssid SSID: String, passphrase: String, isWEP: Bool)
  @available(watchOS 7.0, *)
  init(ssidPrefix SSIDPrefix: String)
  @available(watchOS 7.0, *)
  init(ssidPrefix SSIDPrefix: String, passphrase: String, isWEP: Bool)
}
@available(watchOS 7.0, *)
let NEHotspotConfigurationErrorDomain: String
@available(watchOS 7.0, *)
enum NEHotspotConfigurationError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case invalid
  case invalidSSID
  case invalidWPAPassphrase
  case invalidWEPPassphrase
  case invalidEAPSettings
  case invalidHS20Settings
  case invalidHS20DomainName
  case userDenied
  case `internal`
  case pending
  case systemConfiguration
  case unknown
  case joinOnceNotSupported
  case alreadyAssociated
  case applicationIsNotInForeground
  case invalidSSIDPrefix
}
@available(watchOS 7.0, *)
class NEHotspotConfigurationManager : NSObject {
  class var shared: NEHotspotConfigurationManager { get }
  @available(watchOS 7.0, *)
  func apply(_ configuration: NEHotspotConfiguration, completionHandler: ((Error?) -> Void)? = nil)
  @available(watchOS 7.0, *)
  func removeConfiguration(forSSID SSID: String)
  @available(watchOS 7.0, *)
  func getConfiguredSSIDs(completionHandler: @escaping ([String]) -> Void)
}
@available(watchOS 2.0, *)
class NEIPv6Route : NSObject, NSSecureCoding, NSCopying {
}
class NWTLSParameters : NSObject {
}
