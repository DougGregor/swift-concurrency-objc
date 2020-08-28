
@available(macOS 10.11, *)
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
  @available(macOS 10.11, *)
  static var datagramTooLarge: NEAppProxyFlowError.Code { get }
  @available(macOS 10.11, *)
  static var readAlreadyPending: NEAppProxyFlowError.Code { get }
}
@available(macOS 10.11, *)
let NEAppProxyErrorDomain: String
@available(macOS 10.11, *)
class NEAppProxyFlow : NSObject {
  @available(macOS 10.11, *)
  func open(withLocalEndpoint localEndpoint: NWHostEndpoint?, completionHandler: @escaping (Error?) -> Void)
  @available(macOS 10.11, *)
  func closeReadWithError(_ error: Error?)
  @available(macOS 10.11, *)
  func closeWriteWithError(_ error: Error?)
  @available(macOS 10.15.4, *)
  func setMetadata(_ parameters: nw_parameters_t)
  @available(macOS 10.11, *)
  var metaData: NEFlowMetaData { get }
  @available(macOS 10.15.4, *)
  @NSCopying var networkInterface: nw_interface_t?
}
@available(macOS 10.11, *)
enum NEProviderStopReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case userInitiated
  case providerFailed
  case noNetworkAvailable
  case unrecoverableNetworkChange
  case providerDisabled
  case authenticationCanceled
  case configurationFailed
  case idleTimeout
  case configurationDisabled
  case configurationRemoved
  case superceded
  case userLogout
  case userSwitch
  case connectionFailed
  @available(macOS 10.15, *)
  case sleep
  @available(macOS 10.15, *)
  case appUpdate
}
@available(macOS 10.11, *)
class NEProvider : NSObject {
  @available(macOS 10.11, *)
  func sleep(completionHandler: @escaping () -> Void)
  @available(macOS 10.11, *)
  func wake()
  @available(macOS 10.11, *)
  func createTCPConnection(to remoteEndpoint: NWEndpoint, enableTLS: Bool, tlsParameters TLSParameters: NWTLSParameters?, delegate: Any?) -> NWTCPConnection
  @available(macOS 10.11, *)
  func createUDPSession(to remoteEndpoint: NWEndpoint, from localEndpoint: NWHostEndpoint?) -> NWUDPSession
  @available(macOS, introduced: 10.12, deprecated: 10.14)
  func displayMessage(_ message: String, completionHandler: @escaping (Bool) -> Void)
  @available(macOS 10.15, *)
  class func startSystemExtensionMode()
  @available(macOS 10.11, *)
  var defaultPath: NWPath? { get }
}
@available(macOS 10.11, *)
struct NETunnelProviderError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var networkSettingsInvalid: NETunnelProviderError.Code { get }
  static var networkSettingsCanceled: NETunnelProviderError.Code { get }
  static var networkSettingsFailed: NETunnelProviderError.Code { get }
}
@available(macOS 10.11, *)
enum NETunnelProviderRoutingMethod : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case destinationIP
  case sourceApplication
  @available(macOS 10.15, *)
  case networkRule
}
@available(macOS 10.11, *)
let NETunnelProviderErrorDomain: String
@available(macOS 10.11, *)
class NETunnelProvider : NEProvider {
  @available(macOS 10.11, *)
  func handleAppMessage(_ messageData: Data, completionHandler: ((Data?) -> Void)? = nil)
  @available(macOS 10.11, *)
  func setTunnelNetworkSettings(_ tunnelNetworkSettings: NETunnelNetworkSettings?, completionHandler: ((Error?) -> Void)? = nil)
  @available(macOS 10.11, *)
  var protocolConfiguration: NEVPNProtocol { get }
  @available(macOS 10.11, *)
  var appRules: [NEAppRule]? { get }
  @available(macOS 10.11, *)
  var routingMethod: NETunnelProviderRoutingMethod { get }
  @available(macOS 10.11, *)
  var reasserting: Bool
}
@available(macOS 10.11, *)
class NEAppProxyProvider : NETunnelProvider {
  @available(macOS 10.11, *)
  func startProxy(options: [String : Any]? = nil, completionHandler: @escaping (Error?) -> Void)
  @available(macOS 10.11, *)
  func stopProxy(with reason: NEProviderStopReason, completionHandler: @escaping () -> Void)
  @available(macOS 10.11, *)
  func cancelProxyWithError(_ error: Error?)
  @available(macOS 10.11, *)
  func handleNewFlow(_ flow: NEAppProxyFlow) -> Bool
  @available(macOS 10.15, *)
  func handleNewUDPFlow(_ flow: NEAppProxyUDPFlow, initialRemoteEndpoint remoteEndpoint: NWEndpoint) -> Bool
}
@available(macOS 10.11, *)
struct NEVPNError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var configurationInvalid: NEVPNError.Code { get }
  static var configurationDisabled: NEVPNError.Code { get }
  static var connectionFailed: NEVPNError.Code { get }
  static var configurationStale: NEVPNError.Code { get }
  static var configurationReadWriteFailed: NEVPNError.Code { get }
  static var configurationUnknown: NEVPNError.Code { get }
}
@available(macOS 10.11, *)
let NEVPNErrorDomain: String
extension NSNotification.Name {
  @available(macOS 10.11, *)
  static let NEVPNConfigurationChange: NSNotification.Name
  @available(macOS 10.15, *)
  static let NEDNSProxyConfigurationDidChange: NSNotification.Name
  @available(macOS 11.0, *)
  static let NEDNSSettingsConfigurationDidChange: NSNotification.Name
  @available(macOS 10.11, *)
  static let NEFilterConfigurationDidChange: NSNotification.Name
  @available(macOS 10.11, *)
  static let NEVPNStatusDidChange: NSNotification.Name
}
@available(macOS 10.11, *)
class NEVPNManager : NSObject {
  @available(macOS 10.11, *)
  class func shared() -> NEVPNManager
  @available(macOS 10.11, *)
  func loadFromPreferences(completionHandler: @escaping (Error?) -> Void)
  @available(macOS 10.11, *)
  func removeFromPreferences(completionHandler: ((Error?) -> Void)? = nil)
  @available(macOS 10.11, *)
  func saveToPreferences(completionHandler: ((Error?) -> Void)? = nil)
  @available(macOS 10.11, *)
  func setAuthorization(_ authorization: AuthorizationRef)
  @available(macOS 10.11, *)
  var onDemandRules: [NEOnDemandRule]?
  @available(macOS 10.11, *)
  var isOnDemandEnabled: Bool
  @available(macOS 10.11, *)
  var localizedDescription: String?
  @available(macOS, introduced: 10.11, deprecated: 10.11)
  var `protocol`: NEVPNProtocol?
  @available(macOS 10.11, *)
  var protocolConfiguration: NEVPNProtocol?
  @available(macOS 10.11, *)
  var connection: NEVPNConnection { get }
  @available(macOS 10.11, *)
  var isEnabled: Bool
}
@available(macOS 10.11, *)
class NETunnelProviderManager : NEVPNManager {
  @available(macOS 10.11, *)
  class func loadAllFromPreferences(completionHandler: @escaping ([NETunnelProviderManager]?, Error?) -> Void)
  @available(macOS 10.15.4, *)
  class func forPerAppVPN() -> Self
  @available(macOS 10.11, *)
  func copyAppRules() -> [NEAppRule]?
  @available(macOS 10.11, *)
  var routingMethod: NETunnelProviderRoutingMethod { get }
  @available(macOS 10.15.4, *)
  var safariDomains: [String]
  @available(macOS 10.15.4, *)
  var mailDomains: [String]
  @available(macOS 10.15.4, *)
  var calendarDomains: [String]
  @available(macOS 10.15.4, *)
  var contactsDomains: [String]
  @available(macOS 10.15.4, *)
  var appRules: [NEAppRule]
  @available(macOS 11.0, *)
  var excludedDomains: [String]
  @available(macOS 11.0, *)
  var associatedDomains: [String]
}
@available(macOS 10.11, *)
class NEAppProxyProviderManager : NETunnelProviderManager {
}
@available(macOS 10.11, *)
class NEAppProxyTCPFlow : NEAppProxyFlow {
  @available(macOS 10.11, *)
  func readData(completionHandler: @escaping (Data?, Error?) -> Void)
  @available(macOS 10.11, *)
  func write(_ data: Data, withCompletionHandler completionHandler: @escaping (Error?) -> Void)
  @available(macOS 10.11, *)
  var remoteEndpoint: NWEndpoint { get }
}
@available(macOS 10.11, *)
class NEAppProxyUDPFlow : NEAppProxyFlow {
  @available(macOS 10.11, *)
  func readDatagrams(completionHandler: @escaping ([Data]?, [NWEndpoint]?, Error?) -> Void)
  @available(macOS 10.11, *)
  func writeDatagrams(_ datagrams: [Data], sentBy remoteEndpoints: [NWEndpoint], completionHandler: @escaping (Error?) -> Void)
  @available(macOS 10.11, *)
  var localEndpoint: NWEndpoint? { get }
}
@available(macOS 10.11, *)
class NEAppRule : NSObject, NSSecureCoding, NSCopying {
  @available(macOS 10.11, *)
  init(signingIdentifier: String, designatedRequirement: String)
  @available(macOS 10.11, *)
  var matchSigningIdentifier: String { get }
  @available(macOS 10.11, *)
  var matchDesignatedRequirement: String { get }
  @available(macOS 10.11, *)
  var matchPath: String?
  @available(macOS 10.11, *)
  var matchDomains: [Any]?
  @available(macOS 10.15.4, *)
  var matchTools: [NEAppRule]?
}
@available(macOS 10.15, *)
enum NEDNSProxyManagerError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case configurationInvalid
  case configurationDisabled
  case configurationStale
  case configurationCannotBeRemoved
}
@available(macOS 10.15, *)
let NEDNSProxyErrorDomain: String
@available(macOS 10.15, *)
class NEDNSProxyManager : NSObject {
  @available(macOS 10.15, *)
  class func shared() -> NEDNSProxyManager
  @available(macOS 10.15, *)
  func loadFromPreferences(completionHandler: @escaping (Error?) -> Void)
  @available(macOS 10.15, *)
  func removeFromPreferences(completionHandler: @escaping (Error?) -> Void)
  @available(macOS 10.15, *)
  func saveToPreferences(completionHandler: @escaping (Error?) -> Void)
  @available(macOS 10.15, *)
  var localizedDescription: String?
  @available(macOS 10.15, *)
  var providerProtocol: NEDNSProxyProviderProtocol?
  @available(macOS 10.15, *)
  var isEnabled: Bool
}
@available(macOS 10.15, *)
class NEDNSProxyProvider : NEProvider {
  @available(macOS 10.15, *)
  func startProxy(options: [String : Any]? = nil, completionHandler: @escaping (Error?) -> Void)
  @available(macOS 10.15, *)
  func stopProxy(with reason: NEProviderStopReason, completionHandler: @escaping () -> Void)
  @available(macOS 10.15, *)
  func cancelProxyWithError(_ error: Error?)
  @available(macOS 10.15, *)
  func handleNewFlow(_ flow: NEAppProxyFlow) -> Bool
  @available(macOS 10.15, *)
  func handleNewUDPFlow(_ flow: NEAppProxyUDPFlow, initialRemoteEndpoint remoteEndpoint: NWEndpoint) -> Bool
  @available(macOS 10.15, *)
  var systemDNSSettings: [NEDNSSettings]? { get }
}
@available(macOS 10.11, *)
class NEProxyServer : NSObject, NSSecureCoding, NSCopying {
  @available(macOS 10.11, *)
  init(address: String, port: Int)
  @available(macOS 10.11, *)
  var address: String { get }
  @available(macOS 10.11, *)
  var port: Int { get }
  @available(macOS 10.11, *)
  var authenticationRequired: Bool
  @available(macOS 10.11, *)
  var username: String?
  @available(macOS 10.11, *)
  var password: String?
}
@available(macOS 10.11, *)
class NEProxySettings : NSObject, NSSecureCoding, NSCopying {
  @available(macOS 10.11, *)
  var autoProxyConfigurationEnabled: Bool
  @available(macOS 10.11, *)
  var proxyAutoConfigurationURL: URL?
  @available(macOS 10.11, *)
  var proxyAutoConfigurationJavaScript: String?
  @available(macOS 10.11, *)
  var httpEnabled: Bool
  @available(macOS 10.11, *)
  @NSCopying var httpServer: NEProxyServer?
  @available(macOS 10.11, *)
  var httpsEnabled: Bool
  @available(macOS 10.11, *)
  @NSCopying var httpsServer: NEProxyServer?
  @available(macOS 10.11, *)
  var excludeSimpleHostnames: Bool
  @available(macOS 10.11, *)
  var exceptionList: [String]?
  @available(macOS 10.11, *)
  var matchDomains: [String]?
}
@available(macOS 10.11, *)
class NEVPNProtocol : NSObject, NSCopying, NSSecureCoding {
  @available(macOS 10.11, *)
  var serverAddress: String?
  @available(macOS 10.11, *)
  var username: String?
  @available(macOS 10.11, *)
  var passwordReference: Data?
  @available(macOS 10.11, *)
  var identityReference: Data?
  @available(macOS 10.11, *)
  var identityData: Data?
  @available(macOS 10.11, *)
  var identityDataPassword: String?
  @available(macOS 10.11, *)
  var disconnectOnSleep: Bool
  @available(macOS 10.11, *)
  @NSCopying var proxySettings: NEProxySettings?
  @available(macOS 10.15, *)
  var includeAllNetworks: Bool
  @available(macOS 10.15, *)
  var excludeLocalNetworks: Bool
}
@available(macOS 10.13, *)
class NEDNSProxyProviderProtocol : NEVPNProtocol {
  @available(macOS 10.13, *)
  var providerConfiguration: [String : Any]?
  @available(macOS 10.13, *)
  var providerBundleIdentifier: String?
}
@available(macOS 11.0, *)
enum NEDNSProtocol : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case cleartext
  case TLS
  case HTTPS
}
@available(macOS 10.11, *)
class NEDNSSettings : NSObject, NSSecureCoding, NSCopying {
  @available(macOS 11.0, *)
  var dnsProtocol: NEDNSProtocol { get }
  @available(macOS 10.11, *)
  init(servers: [String])
  @available(macOS 10.11, *)
  var servers: [String] { get }
  @available(macOS 10.11, *)
  var searchDomains: [String]?
  @available(macOS 10.11, *)
  var domainName: String?
  @available(macOS 10.11, *)
  var matchDomains: [String]?
  @available(macOS 10.11, *)
  var matchDomainsNoSearch: Bool
}
@available(macOS 11.0, *)
class NEDNSOverTLSSettings : NEDNSSettings {
  @available(macOS 11.0, *)
  var serverName: String?
}
@available(macOS 11.0, *)
class NEDNSOverHTTPSSettings : NEDNSSettings {
  @available(macOS 11.0, *)
  var serverURL: URL?
}
@available(macOS 11.0, *)
enum NEDNSSettingsManagerError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case configurationInvalid
  case configurationDisabled
  case configurationStale
  case configurationCannotBeRemoved
}
@available(macOS 11.0, *)
let NEDNSSettingsErrorDomain: String
@available(macOS 11.0, *)
class NEDNSSettingsManager : NSObject {
  @available(macOS 11.0, *)
  class func shared() -> NEDNSSettingsManager
  @available(macOS 11.0, *)
  func loadFromPreferences(completionHandler: @escaping (Error?) -> Void)
  @available(macOS 11.0, *)
  func removeFromPreferences(completionHandler: @escaping (Error?) -> Void)
  @available(macOS 11.0, *)
  func saveToPreferences(completionHandler: @escaping (Error?) -> Void)
  @available(macOS 11.0, *)
  var localizedDescription: String?
  @available(macOS 11.0, *)
  var dnsSettings: NEDNSSettings?
  @available(macOS 11.0, *)
  var onDemandRules: [NEOnDemandRule]?
  @available(macOS 11.0, *)
  var isEnabled: Bool { get }
}
extension NENetworkRule {
  @available(macOS 10.15, *)
  enum `Protocol` : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case any
    case TCP
    case UDP
  }
}
@available(macOS 10.15, *)
enum NETrafficDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case any
  case inbound
  case outbound
}
@available(macOS 10.15, *)
class NENetworkRule : NSObject, NSSecureCoding, NSCopying {
  @available(macOS 10.15, *)
  init(destinationNetwork networkEndpoint: NWHostEndpoint, prefix destinationPrefix: Int, protocol: NENetworkRule.`Protocol`)
  @available(macOS 10.15, *)
  init(destinationHost hostEndpoint: NWHostEndpoint, protocol: NENetworkRule.`Protocol`)
  @available(macOS 10.15, *)
  init(remoteNetwork: NWHostEndpoint?, remotePrefix: Int, localNetwork: NWHostEndpoint?, localPrefix: Int, protocol: NENetworkRule.`Protocol`, direction: NETrafficDirection)
  @available(macOS 10.15, *)
  var matchRemoteEndpoint: NWHostEndpoint? { get }
  @available(macOS 10.15, *)
  var matchRemotePrefix: Int { get }
  @available(macOS 10.15, *)
  var matchLocalNetwork: NWHostEndpoint? { get }
  @available(macOS 10.15, *)
  var matchLocalPrefix: Int { get }
  @available(macOS 10.15, *)
  var matchProtocol: NENetworkRule.`Protocol` { get }
  @available(macOS 10.15, *)
  var matchDirection: NETrafficDirection { get }
}
var NEFilterFlowBytesMax: UInt64 { get }
@available(macOS 10.15, *)
class NEFilterFlow : NSObject, NSSecureCoding, NSCopying {
  @available(macOS 10.15, *)
  var url: URL? { get }
  @available(macOS 10.15, *)
  var direction: NETrafficDirection { get }
  @available(macOS 10.15, *)
  var sourceAppAuditToken: Data? { get }
  @available(macOS 10.15, *)
  var identifier: UUID { get }
}
@available(macOS 10.15, *)
class NEFilterSocketFlow : NEFilterFlow, NSSecureCoding, NSCopying {
  @available(macOS 10.15, *)
  var remoteEndpoint: NWEndpoint? { get }
  @available(macOS 11.0, *)
  var remoteHostname: String? { get }
  @available(macOS 10.15, *)
  var localEndpoint: NWEndpoint? { get }
  @available(macOS 10.15, *)
  var socketFamily: Int32 { get }
  @available(macOS 10.15, *)
  var socketType: Int32 { get }
  @available(macOS 10.15, *)
  var socketProtocol: Int32 { get }
}
var NEFilterProviderRemediationURLFlowURLHostname: String { get }
var NEFilterProviderRemediationURLFlowURL: String { get }
var NEFilterProviderRemediationURLOrganization: String { get }
var NEFilterProviderRemediationURLUsername: String { get }
@available(macOS 10.15, *)
class NEFilterProvider : NEProvider {
  @available(macOS 10.15, *)
  func startFilter(completionHandler: @escaping (Error?) -> Void)
  @available(macOS 10.15, *)
  func stopFilter(with reason: NEProviderStopReason, completionHandler: @escaping () -> Void)
  @available(macOS 10.15, *)
  var filterConfiguration: NEFilterProviderConfiguration { get }
  @available(macOS 10.15, *)
  func handle(_ report: NEFilterReport)
}
extension NEFilterReport {
  @available(macOS 10.15.4, *)
  enum Frequency : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case none
    case low
    case medium
    case high
  }
  @available(macOS 10.15, *)
  enum Event : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case newFlow
    case dataDecision
    case flowClosed
    @available(macOS 10.15.4, *)
    case statistics
  }
}
@available(macOS 10.15, *)
class NEFilterVerdict : NSObject, NSSecureCoding, NSCopying {
  @available(macOS 10.15, *)
  var shouldReport: Bool
}
@available(macOS 10.15, *)
class NEFilterNewFlowVerdict : NEFilterVerdict, NSSecureCoding, NSCopying {
  @available(macOS 10.15.4, *)
  var statisticsReportFrequency: NEFilterReport.Frequency
  @available(macOS 10.15, *)
  class func allow() -> NEFilterNewFlowVerdict
  @available(macOS 10.15, *)
  class func drop() -> NEFilterNewFlowVerdict
  @available(macOS 10.15, *)
  class func filterDataVerdict(withFilterInbound filterInbound: Bool, peekInboundBytes: Int, filterOutbound: Bool, peekOutboundBytes: Int) -> NEFilterNewFlowVerdict
  @available(macOS 10.15, *)
  class func pause() -> NEFilterNewFlowVerdict
}
@available(macOS 10.15, *)
enum NEFilterAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(macOS 10.15, *)
  case invalid
  @available(macOS 10.15, *)
  case allow
  @available(macOS 10.15, *)
  case drop
  case remediate
  @available(macOS 10.15, *)
  case filterData
}
@available(macOS 10.15, *)
class NEFilterReport : NSObject, NSSecureCoding, NSCopying {
  @available(macOS 10.15, *)
  var flow: NEFilterFlow? { get }
  @available(macOS 10.15, *)
  var action: NEFilterAction { get }
  @available(macOS 10.15, *)
  var event: NEFilterReport.Event { get }
  @available(macOS 10.15, *)
  var bytesInboundCount: Int { get }
  @available(macOS 10.15, *)
  var bytesOutboundCount: Int { get }
}
@available(macOS 10.15.5, *)
enum NEFilterDataAttribute : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case hasIPHeader
}
@available(macOS 10.15, *)
class NEFilterDataProvider : NEFilterProvider {
  @available(macOS 10.15, *)
  func handleNewFlow(_ flow: NEFilterFlow) -> NEFilterNewFlowVerdict
  @available(macOS 10.15, *)
  func handleInboundData(from flow: NEFilterFlow, readBytesStartOffset offset: Int, readBytes: Data) -> NEFilterDataVerdict
  @available(macOS 10.15, *)
  func handleOutboundData(from flow: NEFilterFlow, readBytesStartOffset offset: Int, readBytes: Data) -> NEFilterDataVerdict
  @available(macOS 10.15, *)
  func handleInboundDataComplete(for flow: NEFilterFlow) -> NEFilterDataVerdict
  @available(macOS 10.15, *)
  func handleOutboundDataComplete(for flow: NEFilterFlow) -> NEFilterDataVerdict
  @available(macOS 10.15, *)
  func apply(_ settings: NEFilterSettings?, completionHandler: @escaping (Error?) -> Void)
  @available(macOS 10.15, *)
  func resumeFlow(_ flow: NEFilterFlow, with verdict: NEFilterVerdict)
  @available(macOS 10.15.4, *)
  func update(_ flow: NEFilterSocketFlow, using verdict: NEFilterDataVerdict, for direction: NETrafficDirection)
}
@available(macOS 10.15, *)
class NEFilterDataVerdict : NEFilterVerdict, NSSecureCoding, NSCopying {
  @available(macOS 10.15.4, *)
  var statisticsReportFrequency: NEFilterReport.Frequency
  @available(macOS 10.15, *)
  class func allow() -> NEFilterDataVerdict
  @available(macOS 10.11, *)
  class func drop() -> NEFilterDataVerdict
  @available(macOS 10.15, *)
  /*not inherited*/ init(passBytes: Int, peekBytes: Int)
  @available(macOS 10.15, *)
  class func pause() -> NEFilterDataVerdict
}
@available(macOS 10.11, *)
enum NEFilterManagerError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case configurationInvalid
  case configurationDisabled
  case configurationStale
  case configurationCannotBeRemoved
  @available(macOS 10.15, *)
  case configurationPermissionDenied
  @available(macOS 10.15, *)
  case configurationInternalError
}
@available(macOS 10.11, *)
let NEFilterErrorDomain: String
extension NEFilterManager {
  @available(macOS 10.15, *)
  enum Grade : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case firewall
    case inspector
  }
}
@available(macOS 10.11, *)
class NEFilterManager : NSObject {
  @available(macOS 10.11, *)
  class func shared() -> NEFilterManager
  @available(macOS 10.11, *)
  func loadFromPreferences(completionHandler: @escaping (Error?) -> Void)
  @available(macOS 10.11, *)
  func removeFromPreferences(completionHandler: @escaping (Error?) -> Void)
  @available(macOS 10.11, *)
  func saveToPreferences(completionHandler: @escaping (Error?) -> Void)
  @available(macOS 10.11, *)
  var localizedDescription: String?
  @available(macOS 10.11, *)
  var providerConfiguration: NEFilterProviderConfiguration?
  @available(macOS 10.11, *)
  var isEnabled: Bool
  @available(macOS 10.15, *)
  var grade: NEFilterManager.Grade
}
@available(macOS 10.15, *)
class NEFilterPacketContext : NSObject {
}
extension NEFilterPacketProvider {
  @available(macOS 10.15, *)
  enum Verdict : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case allow
    case drop
    case delay
  }
}
@available(macOS 10.15, *)
typealias NEFilterPacketHandler = (NEFilterPacketContext, nw_interface_t, NETrafficDirection, UnsafeRawPointer, Int) -> NEFilterPacketProvider.Verdict
@available(macOS 10.15, *)
class NEFilterPacketProvider : NEFilterProvider {
  @available(macOS 10.15, *)
  var packetHandler: NEFilterPacketHandler?
  @available(macOS 10.15, *)
  func delayCurrentPacket(_ context: NEFilterPacketContext) -> NEPacket
  @available(macOS 10.15, *)
  func allow(_ packet: NEPacket)
}
@available(macOS 10.11, *)
class NEFilterProviderConfiguration : NSObject, NSSecureCoding, NSCopying {
  @available(macOS, introduced: 10.11, deprecated: 10.15, message: "filterBrowsers is not supported on macOS")
  var filterBrowsers: Bool
  @available(macOS 10.15, *)
  var filterSockets: Bool
  @available(macOS 10.15, *)
  var filterPackets: Bool
  @available(macOS 10.11, *)
  var vendorConfiguration: [String : Any]?
  @available(macOS 10.11, *)
  var serverAddress: String?
  @available(macOS 10.11, *)
  var username: String?
  @available(macOS 10.11, *)
  var organization: String?
  @available(macOS 10.11, *)
  var passwordReference: Data?
  @available(macOS 10.11, *)
  var identityReference: Data?
  @available(macOS 10.15, *)
  var filterDataProviderBundleIdentifier: String?
  @available(macOS 10.15, *)
  var filterPacketProviderBundleIdentifier: String?
}
@available(macOS 10.15, *)
class NEFilterRule : NSObject, NSSecureCoding, NSCopying {
  @available(macOS 10.15, *)
  init(networkRule: NENetworkRule, action: NEFilterAction)
  @available(macOS 10.15, *)
  @NSCopying var networkRule: NENetworkRule { get }
  @available(macOS 10.15, *)
  var action: NEFilterAction { get }
}
@available(macOS 10.15, *)
class NEFilterSettings : NSObject, NSSecureCoding, NSCopying {
  @available(macOS 10.15, *)
  init(rules: [NEFilterRule], defaultAction: NEFilterAction)
  @available(macOS 10.15, *)
  var rules: [NEFilterRule] { get }
  @available(macOS 10.15, *)
  var defaultAction: NEFilterAction { get }
}
@available(macOS 10.11, *)
class NEFlowMetaData : NSObject, NSCopying, NSSecureCoding {
  @available(macOS 10.11, *)
  var sourceAppUniqueIdentifier: Data { get }
  @available(macOS 10.11, *)
  var sourceAppSigningIdentifier: String { get }
  @available(macOS 10.15, *)
  var sourceAppAuditToken: Data? { get }
  @available(macOS 10.15.4, *)
  var filterFlowIdentifier: UUID? { get }
}
extension NSMutableURLRequest {
}
extension NEHotspotEAPSettings {
}
@available(macOS 10.11, *)
class NEIPv4Settings : NSObject, NSSecureCoding, NSCopying {
  @available(macOS 10.11, *)
  init(addresses: [String], subnetMasks: [String])
  @available(macOS 10.11, *)
  var addresses: [String] { get }
  @available(macOS 10.11, *)
  var subnetMasks: [String] { get }
  @available(macOS 10.11, *)
  var includedRoutes: [NEIPv4Route]?
  @available(macOS 10.11, *)
  var excludedRoutes: [NEIPv4Route]?
}
@available(macOS 10.11, *)
class NEIPv4Route : NSObject, NSSecureCoding, NSCopying {
  @available(macOS 10.11, *)
  init(destinationAddress address: String, subnetMask: String)
  @available(macOS 10.11, *)
  var destinationAddress: String { get }
  @available(macOS 10.11, *)
  var destinationSubnetMask: String { get }
  @available(macOS 10.11, *)
  var gatewayAddress: String?
  @available(macOS 10.11, *)
  class func `default`() -> NEIPv4Route
}
@available(macOS 10.11, *)
class NEIPv6Settings : NSObject, NSSecureCoding, NSCopying {
  @available(macOS 10.11, *)
  init(addresses: [String], networkPrefixLengths: [NSNumber])
  @available(macOS 10.11, *)
  var addresses: [String] { get }
  @available(macOS 10.11, *)
  var networkPrefixLengths: [NSNumber] { get }
  @available(macOS 10.11, *)
  var includedRoutes: [NEIPv6Route]?
  @available(macOS 10.11, *)
  var excludedRoutes: [NEIPv6Route]?
}
@available(macOS 10.11, *)
class NEIPv6Route : NSObject, NSSecureCoding, NSCopying {
  @available(macOS 10.11, *)
  init(destinationAddress address: String, networkPrefixLength: NSNumber)
  @available(macOS 10.11, *)
  var destinationAddress: String { get }
  @available(macOS 10.11, *)
  var destinationNetworkPrefixLength: NSNumber { get }
  @available(macOS 10.11, *)
  var gatewayAddress: String?
  @available(macOS 10.11, *)
  class func `default`() -> NEIPv6Route
}
@available(macOS 10.11, *)
enum NEOnDemandRuleAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case connect
  case disconnect
  case evaluateConnection
  case ignore
}
@available(macOS 10.11, *)
enum NEOnDemandRuleInterfaceType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(macOS 10.11, *)
  case any
  @available(macOS 10.11, *)
  case ethernet
  @available(macOS 10.11, *)
  case wiFi
}
@available(macOS 10.11, *)
class NEOnDemandRule : NSObject, NSSecureCoding, NSCopying {
  @available(macOS 10.11, *)
  var action: NEOnDemandRuleAction { get }
  @available(macOS 10.11, *)
  var dnsSearchDomainMatch: [String]?
  @available(macOS 10.11, *)
  var dnsServerAddressMatch: [String]?
  @available(macOS 10.11, *)
  var interfaceTypeMatch: NEOnDemandRuleInterfaceType
  @available(macOS 10.11, *)
  var ssidMatch: [String]?
  @available(macOS 10.11, *)
  var probeURL: URL?
}
@available(macOS 10.11, *)
class NEOnDemandRuleConnect : NEOnDemandRule {
}
@available(macOS 10.11, *)
class NEOnDemandRuleDisconnect : NEOnDemandRule {
}
@available(macOS 10.11, *)
class NEOnDemandRuleIgnore : NEOnDemandRule {
}
@available(macOS 10.11, *)
class NEOnDemandRuleEvaluateConnection : NEOnDemandRule {
  @available(macOS 10.11, *)
  var connectionRules: [NEEvaluateConnectionRule]?
}
@available(macOS 10.11, *)
enum NEEvaluateConnectionRuleAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case connectIfNeeded
  case neverConnect
}
@available(macOS 10.11, *)
class NEEvaluateConnectionRule : NSObject, NSSecureCoding, NSCopying {
  @available(macOS 10.11, *)
  init(matchDomains domains: [String], andAction action: NEEvaluateConnectionRuleAction)
  @available(macOS 10.11, *)
  var action: NEEvaluateConnectionRuleAction { get }
  @available(macOS 10.11, *)
  var matchDomains: [String] { get }
  @available(macOS 10.11, *)
  var useDNSServers: [String]?
  @available(macOS 10.11, *)
  var probeURL: URL?
}
@available(macOS 10.12, *)
class NEPacket : NSObject, NSCopying, NSSecureCoding {
  @available(macOS 10.12, *)
  init(data: Data, protocolFamily: sa_family_t)
  @available(macOS 10.12, *)
  var data: Data { get }
  @available(macOS 10.12, *)
  var protocolFamily: sa_family_t { get }
  @available(macOS 10.15, *)
  var direction: NETrafficDirection { get }
  @available(macOS 10.12, *)
  var metadata: NEFlowMetaData? { get }
}
@available(macOS 10.11, *)
class NEPacketTunnelFlow : NSObject {
  @available(macOS 10.11, *)
  func readPackets(completionHandler: @escaping ([Data], [NSNumber]) -> Void)
  @available(macOS 10.11, *)
  func writePackets(_ packets: [Data], withProtocols protocols: [NSNumber]) -> Bool
  @available(macOS 10.12, *)
  func readPacketObjects(completionHandler: @escaping ([NEPacket]) -> Void)
  @available(macOS 10.12, *)
  func writePacketObjects(_ packets: [NEPacket]) -> Bool
}
@available(macOS 10.11, *)
class NETunnelNetworkSettings : NSObject, NSSecureCoding, NSCopying {
  @available(macOS 10.11, *)
  init(tunnelRemoteAddress address: String)
  @available(macOS 10.11, *)
  var tunnelRemoteAddress: String { get }
  @available(macOS 10.11, *)
  @NSCopying var dnsSettings: NEDNSSettings?
  @available(macOS 10.11, *)
  @NSCopying var proxySettings: NEProxySettings?
}
@available(macOS 10.11, *)
class NEPacketTunnelNetworkSettings : NETunnelNetworkSettings {
  @available(macOS 10.11, *)
  @NSCopying var ipv4Settings: NEIPv4Settings?
  @available(macOS 10.11, *)
  @NSCopying var ipv6Settings: NEIPv6Settings?
  @available(macOS 10.11, *)
  @NSCopying var tunnelOverheadBytes: NSNumber?
  @available(macOS 10.11, *)
  @NSCopying var mtu: NSNumber?
}
@available(macOS 10.11, *)
class NEPacketTunnelProvider : NETunnelProvider {
  @available(macOS 10.11, *)
  func startTunnel(options: [String : NSObject]? = nil, completionHandler: @escaping (Error?) -> Void)
  @available(macOS 10.11, *)
  func stopTunnel(with reason: NEProviderStopReason, completionHandler: @escaping () -> Void)
  @available(macOS 10.11, *)
  func cancelTunnelWithError(_ error: Error?)
  @available(macOS 10.11, *)
  var packetFlow: NEPacketTunnelFlow { get }
  @available(macOS 10.11, *)
  func createTCPConnectionThroughTunnel(to remoteEndpoint: NWEndpoint, enableTLS: Bool, tlsParameters TLSParameters: NWTLSParameters?, delegate: Any?) -> NWTCPConnection
  @available(macOS 10.11, *)
  func createUDPSessionThroughTunnel(to remoteEndpoint: NWEndpoint, from localEndpoint: NWHostEndpoint?) -> NWUDPSession
}
@available(macOS 10.15, *)
class NETransparentProxyManager : NEVPNManager {
  @available(macOS 10.15, *)
  class func loadAllFromPreferences(completionHandler: @escaping ([NETransparentProxyManager]?, Error?) -> Void)
}
@available(macOS 10.15, *)
class NETransparentProxyNetworkSettings : NETunnelNetworkSettings {
  @available(macOS 10.15, *)
  var includedNetworkRules: [NENetworkRule]?
  @available(macOS 10.15, *)
  var excludedNetworkRules: [NENetworkRule]?
}
@available(macOS 10.11, *)
enum NEVPNStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case invalid
  case disconnected
  case connecting
  case connected
  case reasserting
  case disconnecting
}
@available(macOS 10.11, *)
let NEVPNConnectionStartOptionUsername: String
@available(macOS 10.11, *)
let NEVPNConnectionStartOptionPassword: String
@available(macOS 10.11, *)
class NEVPNConnection : NSObject {
  @available(macOS 10.11, *)
  func startVPNTunnel() throws
  @available(macOS 10.11, *)
  func startVPNTunnel(options: [String : NSObject]? = nil) throws
  @available(macOS 10.11, *)
  func stopVPNTunnel()
  @available(macOS 10.11, *)
  var status: NEVPNStatus { get }
  @available(macOS 10.11, *)
  var connectedDate: Date? { get }
  @available(macOS 10.12, *)
  var manager: NEVPNManager { get }
}
@available(macOS 10.11, *)
class NETunnelProviderSession : NEVPNConnection {
  @available(macOS 10.11, *)
  func startTunnel(options: [String : Any]? = nil) throws
  @available(macOS 10.11, *)
  func stopTunnel()
  @available(macOS 10.11, *)
  func sendProviderMessage(_ messageData: Data, responseHandler: ((Data?) -> Void)? = nil) throws
}
@available(macOS 10.11, *)
class NETunnelProviderProtocol : NEVPNProtocol {
  @available(macOS 10.11, *)
  var providerConfiguration: [String : Any]?
  @available(macOS 10.11, *)
  var providerBundleIdentifier: String?
}
@available(macOS 10.11, *)
enum NEVPNIKEAuthenticationMethod : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case certificate
  case sharedSecret
}
@available(macOS 10.11, *)
class NEVPNProtocolIPSec : NEVPNProtocol {
  @available(macOS 10.11, *)
  var authenticationMethod: NEVPNIKEAuthenticationMethod
  @available(macOS 10.11, *)
  var useExtendedAuthentication: Bool
  @available(macOS 10.11, *)
  var sharedSecretReference: Data?
  @available(macOS 10.11, *)
  var localIdentifier: String?
  @available(macOS 10.11, *)
  var remoteIdentifier: String?
}
@available(macOS 10.11, *)
enum NEVPNIKEv2EncryptionAlgorithm : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case algorithmDES
  case algorithm3DES
  case algorithmAES128
  case algorithmAES256
  @available(macOS 10.11, *)
  case algorithmAES128GCM
  @available(macOS 10.11, *)
  case algorithmAES256GCM
  @available(macOS 10.15, *)
  case algorithmChaCha20Poly1305
}
@available(macOS 10.11, *)
enum NEVPNIKEv2IntegrityAlgorithm : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case SHA96
  case SHA160
  case SHA256
  case SHA384
  case SHA512
}
@available(macOS 10.11, *)
enum NEVPNIKEv2DeadPeerDetectionRate : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case low
  case medium
  case high
}
@available(macOS 10.11, *)
enum NEVPNIKEv2DiffieHellmanGroup : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case groupInvalid
  case group1
  case group2
  case group5
  case group14
  case group15
  case group16
  case group17
  case group18
  case group19
  case group20
  case group21
  @available(macOS 10.15, *)
  case group31
}
@available(macOS 10.11, *)
enum NEVPNIKEv2CertificateType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case RSA
  case ECDSA256
  case ECDSA384
  case ECDSA521
  @available(macOS 10.15, *)
  case ed25519
}
@available(macOS 10.13, *)
enum NEVPNIKEv2TLSVersion : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case versionDefault
  case version1_0
  case version1_1
  case version1_2
}
@available(macOS 10.11, *)
class NEVPNIKEv2SecurityAssociationParameters : NSObject, NSSecureCoding, NSCopying {
  @available(macOS 10.11, *)
  var encryptionAlgorithm: NEVPNIKEv2EncryptionAlgorithm
  @available(macOS 10.11, *)
  var integrityAlgorithm: NEVPNIKEv2IntegrityAlgorithm
  @available(macOS 10.11, *)
  var diffieHellmanGroup: NEVPNIKEv2DiffieHellmanGroup
  @available(macOS 10.11, *)
  var lifetimeMinutes: Int32
}
@available(macOS 10.11, *)
class NEVPNProtocolIKEv2 : NEVPNProtocolIPSec {
  @available(macOS 10.11, *)
  var deadPeerDetectionRate: NEVPNIKEv2DeadPeerDetectionRate
  @available(macOS 10.11, *)
  var serverCertificateIssuerCommonName: String?
  @available(macOS 10.11, *)
  var serverCertificateCommonName: String?
  @available(macOS 10.11, *)
  var certificateType: NEVPNIKEv2CertificateType
  @available(macOS 10.11, *)
  var useConfigurationAttributeInternalIPSubnet: Bool
  @available(macOS 10.11, *)
  var ikeSecurityAssociationParameters: NEVPNIKEv2SecurityAssociationParameters { get }
  @available(macOS 10.11, *)
  var childSecurityAssociationParameters: NEVPNIKEv2SecurityAssociationParameters { get }
  @available(macOS 10.11, *)
  var disableMOBIKE: Bool
  @available(macOS 10.11, *)
  var disableRedirect: Bool
  @available(macOS 10.11, *)
  var enablePFS: Bool
  @available(macOS 10.11, *)
  var enableRevocationCheck: Bool
  @available(macOS 10.11, *)
  var strictRevocationCheck: Bool
  @available(macOS 10.13, *)
  var minimumTLSVersion: NEVPNIKEv2TLSVersion
  @available(macOS 10.13, *)
  var maximumTLSVersion: NEVPNIKEv2TLSVersion
  @available(macOS 11.0, *)
  var mtu: Int
}
@available(macOS 10.11, *)
class NWEndpoint : NSObject, NSSecureCoding, NSCopying {
}
@available(macOS 10.11, *)
class NWHostEndpoint : NWEndpoint {
  @available(macOS 10.11, *)
  convenience init(hostname: String, port: String)
  @available(macOS 10.11, *)
  var hostname: String { get }
  @available(macOS 10.11, *)
  var port: String { get }
}
@available(macOS 10.11, *)
class NWBonjourServiceEndpoint : NWEndpoint {
  @available(macOS 10.11, *)
  convenience init(name: String, type: String, domain: String)
  @available(macOS 10.11, *)
  var name: String { get }
  @available(macOS 10.11, *)
  var type: String { get }
  @available(macOS 10.11, *)
  var domain: String { get }
}
@available(macOS 10.11, *)
enum NWPathStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case invalid
  case satisfied
  case unsatisfied
  case satisfiable
}
@available(macOS 10.11, *)
class NWPath : NSObject {
  @available(macOS 10.11, *)
  var status: NWPathStatus { get }
  @available(macOS 10.11, *)
  var isExpensive: Bool { get }
  @available(macOS 10.15, *)
  var isConstrained: Bool { get }
  @available(macOS 10.11, *)
  func isEqual(to path: NWPath) -> Bool
}
@available(macOS 10.11, *)
enum NWTCPConnectionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case invalid
  case connecting
  case waiting
  case connected
  case disconnected
  case cancelled
}
@available(macOS 10.11, *)
class NWTCPConnection : NSObject {
  @available(macOS 10.11, *)
  init(upgradeFor connection: NWTCPConnection)
  @available(macOS 10.11, *)
  var state: NWTCPConnectionState { get }
  @available(macOS 10.11, *)
  var isViable: Bool { get }
  @available(macOS 10.11, *)
  var hasBetterPath: Bool { get }
  @available(macOS 10.11, *)
  var endpoint: NWEndpoint { get }
  @available(macOS 10.11, *)
  var connectedPath: NWPath? { get }
  @available(macOS 10.11, *)
  var localAddress: NWEndpoint? { get }
  @available(macOS 10.11, *)
  var remoteAddress: NWEndpoint? { get }
  @available(macOS 10.11, *)
  var txtRecord: Data? { get }
  @available(macOS 10.11, *)
  var error: Error? { get }
  @available(macOS 10.11, *)
  func cancel()
  @available(macOS 10.11, *)
  func readLength(_ length: Int, completionHandler completion: @escaping (Data?, Error?) -> Void)
  @available(macOS 10.11, *)
  func readMinimumLength(_ minimum: Int, maximumLength maximum: Int, completionHandler completion: @escaping (Data?, Error?) -> Void)
  @available(macOS 10.11, *)
  func write(_ data: Data, completionHandler completion: @escaping (Error?) -> Void)
  @available(macOS 10.11, *)
  func writeClose()
}
@available(macOS 10.11, *)
protocol NWTCPConnectionAuthenticationDelegate : NSObjectProtocol {
  @available(macOS 10.11, *)
  optional func shouldProvideIdentity(for connection: NWTCPConnection) -> Bool
  @available(macOS 10.11, *)
  optional func provideIdentity(for connection: NWTCPConnection, completionHandler completion: @escaping (SecIdentity, [Any]) -> Void)
  @available(macOS 10.11, *)
  optional func shouldEvaluateTrust(for connection: NWTCPConnection) -> Bool
  @available(macOS 10.11, *)
  optional func evaluateTrust(for connection: NWTCPConnection, peerCertificateChain: [Any], completionHandler completion: @escaping (SecTrust) -> Void)
}
@available(macOS 10.11, *)
enum NWUDPSessionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case invalid
  case waiting
  case preparing
  case ready
  case failed
  case cancelled
}
@available(macOS 10.11, *)
class NWUDPSession : NSObject {
  @available(macOS 10.11, *)
  init(upgradeFor session: NWUDPSession)
  @available(macOS 10.11, *)
  var state: NWUDPSessionState { get }
  @available(macOS 10.11, *)
  var endpoint: NWEndpoint { get }
  @available(macOS 10.11, *)
  var resolvedEndpoint: NWEndpoint? { get }
  @available(macOS 10.11, *)
  var isViable: Bool { get }
  @available(macOS 10.11, *)
  var hasBetterPath: Bool { get }
  @available(macOS 10.11, *)
  var currentPath: NWPath? { get }
  @available(macOS 10.11, *)
  func tryNextResolvedEndpoint()
  @available(macOS 10.11, *)
  var maximumDatagramLength: Int { get }
  @available(macOS 10.11, *)
  func setReadHandler(_ handler: @escaping ([Data]?, Error?) -> Void, maxDatagrams: Int)
  @available(macOS 10.11, *)
  func writeMultipleDatagrams(_ datagramArray: [Data], completionHandler: @escaping (Error?) -> Void)
  @available(macOS 10.11, *)
  func writeDatagram(_ datagram: Data, completionHandler: @escaping (Error?) -> Void)
  @available(macOS 10.11, *)
  func cancel()
}
class NWTLSParameters : NSObject {
  @available(macOS 10.11, *)
  var tlsSessionID: Data?
  @available(macOS 10.11, *)
  var sslCipherSuites: Set<NSNumber>?
  @available(macOS 10.11, *)
  var minimumSSLProtocolVersion: Int
  @available(macOS 10.11, *)
  var maximumSSLProtocolVersion: Int
}
