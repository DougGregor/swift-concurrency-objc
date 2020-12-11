
@available(iOS 9.0, *)
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
  @available(iOS 9.3, *)
  static var datagramTooLarge: NEAppProxyFlowError.Code { get }
  @available(iOS 9.3, *)
  static var readAlreadyPending: NEAppProxyFlowError.Code { get }
}
@available(iOS 9.0, *)
let NEAppProxyErrorDomain: String
@available(iOS 9.0, *)
class NEAppProxyFlow : NSObject {
  @available(iOS 9.0, *)
  func open(withLocalEndpoint localEndpoint: NWHostEndpoint?, completionHandler: @escaping (Error?) -> Void)
  @available(iOS 9.0, *)
  func open(withLocalEndpoint localEndpoint: NWHostEndpoint?) async throws
  @available(iOS 9.0, *)
  func closeReadWithError(_ error: Error?)
  @available(iOS 9.0, *)
  func closeWriteWithError(_ error: Error?)
  @available(iOS 9.0, *)
  var metaData: NEFlowMetaData { get }
  @available(iOS 13.4, *)
  @NSCopying var networkInterface: nw_interface_t?
  @available(iOS 14.2, *)
  var remoteHostname: String? { get }
}
@available(iOS 9.0, *)
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
  @available(iOS 13.0, *)
  case sleep
  @available(iOS 13.0, *)
  case appUpdate
}
@available(iOS 9.0, *)
class NEProvider : NSObject {
  @available(iOS 9.0, *)
  func sleep(completionHandler: @escaping () -> Void)
  @available(iOS 9.0, *)
  func sleep() async
  @available(iOS 9.0, *)
  func wake()
  @available(iOS 9.0, *)
  func createTCPConnection(to remoteEndpoint: NWEndpoint, enableTLS: Bool, tlsParameters TLSParameters: NWTLSParameters?, delegate: Any?) -> NWTCPConnection
  @available(iOS 9.0, *)
  func createUDPSession(to remoteEndpoint: NWEndpoint, from localEndpoint: NWHostEndpoint?) -> NWUDPSession
  @available(iOS, introduced: 10.0, deprecated: 12.0)
  func displayMessage(_ message: String, completionHandler: @escaping (Bool) -> Void)
  @available(iOS, introduced: 10.0, deprecated: 12.0)
  func displayMessage(_ message: String) async -> Bool
  @available(iOS 9.0, *)
  var defaultPath: NWPath? { get }
}
@available(iOS 9.0, *)
struct NETunnelProviderError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var networkSettingsInvalid: NETunnelProviderError.Code { get }
  static var networkSettingsCanceled: NETunnelProviderError.Code { get }
  static var networkSettingsFailed: NETunnelProviderError.Code { get }
}
@available(iOS 9.0, *)
enum NETunnelProviderRoutingMethod : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case destinationIP
  case sourceApplication
}
@available(iOS 9.0, *)
let NETunnelProviderErrorDomain: String
@available(iOS 9.0, *)
class NETunnelProvider : NEProvider {
  @available(iOS 9.0, *)
  func handleAppMessage(_ messageData: Data, completionHandler: ((Data?) -> Void)? = nil)
  @available(iOS 9.0, *)
  func handleAppMessage(_ messageData: Data) async -> Data?
  @available(iOS 9.0, *)
  func setTunnelNetworkSettings(_ tunnelNetworkSettings: NETunnelNetworkSettings?, completionHandler: ((Error?) -> Void)? = nil)
  @available(iOS 9.0, *)
  func setTunnelNetworkSettings(_ tunnelNetworkSettings: NETunnelNetworkSettings?) async throws
  @available(iOS 9.0, *)
  var protocolConfiguration: NEVPNProtocol { get }
  @available(iOS 9.0, *)
  var appRules: [NEAppRule]? { get }
  @available(iOS 9.0, *)
  var routingMethod: NETunnelProviderRoutingMethod { get }
  @available(iOS 9.0, *)
  var reasserting: Bool
}
@available(iOS 9.0, *)
class NEAppProxyProvider : NETunnelProvider {
  @available(iOS 9.0, *)
  func startProxy(options: [String : Any]? = nil, completionHandler: @escaping (Error?) -> Void)
  @available(iOS 9.0, *)
  func startProxy(options: [String : Any]? = nil) async throws
  @available(iOS 9.0, *)
  func stopProxy(with reason: NEProviderStopReason, completionHandler: @escaping () -> Void)
  @available(iOS 9.0, *)
  func stopProxy(with reason: NEProviderStopReason) async
  @available(iOS 9.0, *)
  func cancelProxyWithError(_ error: Error?)
  @available(iOS 9.0, *)
  func handleNewFlow(_ flow: NEAppProxyFlow) -> Bool
  @available(iOS 13.0, *)
  func handleNewUDPFlow(_ flow: NEAppProxyUDPFlow, initialRemoteEndpoint remoteEndpoint: NWEndpoint) -> Bool
}
@available(iOS 8.0, *)
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
@available(iOS 8.0, *)
let NEVPNErrorDomain: String
extension NSNotification.Name {
  @available(iOS 8.0, *)
  static let NEVPNConfigurationChange: NSNotification.Name
  @available(iOS 11.0, *)
  static let NEDNSProxyConfigurationDidChange: NSNotification.Name
  @available(iOS 14.0, *)
  static let NEDNSSettingsConfigurationDidChange: NSNotification.Name
  @available(iOS 8.0, *)
  static let NEFilterConfigurationDidChange: NSNotification.Name
  @available(iOS 8.0, *)
  static let NEVPNStatusDidChange: NSNotification.Name
}
@available(iOS 8.0, *)
class NEVPNManager : NSObject {
  @available(iOS 8.0, *)
  class func shared() -> NEVPNManager
  @available(iOS 8.0, *)
  func loadFromPreferences(completionHandler: @escaping (Error?) -> Void)
  @available(iOS 8.0, *)
  func loadFromPreferences() async throws
  @available(iOS 8.0, *)
  func removeFromPreferences(completionHandler: ((Error?) -> Void)? = nil)
  @available(iOS 8.0, *)
  func removeFromPreferences() async throws
  @available(iOS 8.0, *)
  func saveToPreferences(completionHandler: ((Error?) -> Void)? = nil)
  @available(iOS 8.0, *)
  func saveToPreferences() async throws
  @available(iOS 8.0, *)
  var onDemandRules: [NEOnDemandRule]?
  @available(iOS 8.0, *)
  var isOnDemandEnabled: Bool
  @available(iOS 8.0, *)
  var localizedDescription: String?
  @available(iOS, introduced: 8.0, deprecated: 9.0)
  var `protocol`: NEVPNProtocol?
  @available(iOS 9.0, *)
  var protocolConfiguration: NEVPNProtocol?
  @available(iOS 8.0, *)
  var connection: NEVPNConnection { get }
  @available(iOS 8.0, *)
  var isEnabled: Bool
}
@available(iOS 9.0, *)
class NETunnelProviderManager : NEVPNManager {
  @available(iOS 9.0, *)
  class func loadAllFromPreferences(completionHandler: @escaping ([NETunnelProviderManager]?, Error?) -> Void)
  @available(iOS 9.0, *)
  class func loadAllFromPreferences() async throws -> [NETunnelProviderManager]
  @available(iOS 9.0, *)
  func copyAppRules() -> [NEAppRule]?
  @available(iOS 9.0, *)
  var routingMethod: NETunnelProviderRoutingMethod { get }
}
@available(iOS 9.0, *)
class NEAppProxyProviderManager : NETunnelProviderManager {
}
@available(iOS 9.0, *)
class NEAppProxyTCPFlow : NEAppProxyFlow {
  @available(iOS 9.0, *)
  func readData(completionHandler: @escaping (Data?, Error?) -> Void)
  @available(iOS 9.0, *)
  func readData() async throws -> Data
  @available(iOS 9.0, *)
  func write(_ data: Data, withCompletionHandler completionHandler: @escaping (Error?) -> Void)
  @available(iOS 9.0, *)
  func write(_ data: Data) async throws
  @available(iOS 9.0, *)
  var remoteEndpoint: NWEndpoint { get }
}
@available(iOS 9.0, *)
class NEAppProxyUDPFlow : NEAppProxyFlow {
  @available(iOS 9.0, *)
  func readDatagrams(completionHandler: @escaping ([Data]?, [NWEndpoint]?, Error?) -> Void)
  @available(iOS 9.0, *)
  func readDatagrams() async throws -> ([Data], [NWEndpoint])
  @available(iOS 9.0, *)
  func writeDatagrams(_ datagrams: [Data], sentBy remoteEndpoints: [NWEndpoint], completionHandler: @escaping (Error?) -> Void)
  @available(iOS 9.0, *)
  func writeDatagrams(_ datagrams: [Data], sentBy remoteEndpoints: [NWEndpoint]) async throws
  @available(iOS 9.0, *)
  var localEndpoint: NWEndpoint? { get }
}
@available(iOS 9.0, *)
class NEAppRule : NSObject, NSSecureCoding, NSCopying {
  @available(iOS 9.0, *)
  init(signingIdentifier: String)
  @available(iOS 9.0, *)
  var matchSigningIdentifier: String { get }
  @available(iOS 9.3, *)
  var matchPath: String?
  @available(iOS 9.0, *)
  var matchDomains: [Any]?
}
@available(iOS 11.0, *)
enum NEDNSProxyManagerError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case configurationInvalid
  case configurationDisabled
  case configurationStale
  case configurationCannotBeRemoved
}
@available(iOS 11.0, *)
let NEDNSProxyErrorDomain: String
@available(iOS 11.0, *)
class NEDNSProxyManager : NSObject {
  @available(iOS 11.0, *)
  class func shared() -> NEDNSProxyManager
  @available(iOS 11.0, *)
  func loadFromPreferences(completionHandler: @escaping (Error?) -> Void)
  @available(iOS 11.0, *)
  func loadFromPreferences() async throws
  @available(iOS 11.0, *)
  func removeFromPreferences(completionHandler: @escaping (Error?) -> Void)
  @available(iOS 11.0, *)
  func removeFromPreferences() async throws
  @available(iOS 11.0, *)
  func saveToPreferences(completionHandler: @escaping (Error?) -> Void)
  @available(iOS 11.0, *)
  func saveToPreferences() async throws
  @available(iOS 11.0, *)
  var localizedDescription: String?
  @available(iOS 11.0, *)
  var providerProtocol: NEDNSProxyProviderProtocol?
  @available(iOS 11.0, *)
  var isEnabled: Bool
}
@available(iOS 11.0, *)
class NEDNSProxyProvider : NEProvider {
  @available(iOS 11.0, *)
  func startProxy(options: [String : Any]? = nil, completionHandler: @escaping (Error?) -> Void)
  @available(iOS 11.0, *)
  func startProxy(options: [String : Any]? = nil) async throws
  @available(iOS 11.0, *)
  func stopProxy(with reason: NEProviderStopReason, completionHandler: @escaping () -> Void)
  @available(iOS 11.0, *)
  func stopProxy(with reason: NEProviderStopReason) async
  @available(iOS 11.0, *)
  func cancelProxyWithError(_ error: Error?)
  @available(iOS 11.0, *)
  func handleNewFlow(_ flow: NEAppProxyFlow) -> Bool
  @available(iOS 13.0, *)
  func handleNewUDPFlow(_ flow: NEAppProxyUDPFlow, initialRemoteEndpoint remoteEndpoint: NWEndpoint) -> Bool
  @available(iOS 11.0, *)
  var systemDNSSettings: [NEDNSSettings]? { get }
}
@available(iOS 9.0, *)
class NEProxyServer : NSObject, NSSecureCoding, NSCopying {
  @available(iOS 9.0, *)
  init(address: String, port: Int)
  @available(iOS 9.0, *)
  var address: String { get }
  @available(iOS 9.0, *)
  var port: Int { get }
  @available(iOS 9.0, *)
  var authenticationRequired: Bool
  @available(iOS 9.0, *)
  var username: String?
  @available(iOS 9.0, *)
  var password: String?
}
@available(iOS 9.0, *)
class NEProxySettings : NSObject, NSSecureCoding, NSCopying {
  @available(iOS 9.0, *)
  var autoProxyConfigurationEnabled: Bool
  @available(iOS 9.0, *)
  var proxyAutoConfigurationURL: URL?
  @available(iOS 9.0, *)
  var proxyAutoConfigurationJavaScript: String?
  @available(iOS 9.0, *)
  var httpEnabled: Bool
  @available(iOS 9.0, *)
  @NSCopying var httpServer: NEProxyServer?
  @available(iOS 9.0, *)
  var httpsEnabled: Bool
  @available(iOS 9.0, *)
  @NSCopying var httpsServer: NEProxyServer?
  @available(iOS 9.0, *)
  var excludeSimpleHostnames: Bool
  @available(iOS 9.0, *)
  var exceptionList: [String]?
  @available(iOS 9.0, *)
  var matchDomains: [String]?
}
@available(iOS 8.0, *)
class NEVPNProtocol : NSObject, NSCopying, NSSecureCoding {
  @available(iOS 8.0, *)
  var serverAddress: String?
  @available(iOS 8.0, *)
  var username: String?
  @available(iOS 8.0, *)
  var passwordReference: Data?
  @available(iOS 9.0, *)
  var identityReference: Data?
  @available(iOS 8.0, *)
  var identityData: Data?
  @available(iOS 8.0, *)
  var identityDataPassword: String?
  @available(iOS 8.0, *)
  var disconnectOnSleep: Bool
  @available(iOS 9.0, *)
  @NSCopying var proxySettings: NEProxySettings?
  @available(iOS 14.0, *)
  var includeAllNetworks: Bool
  @available(iOS 14.2, *)
  var excludeLocalNetworks: Bool
  @available(iOS 14.2, *)
  var enforceRoutes: Bool
}
@available(iOS 11.0, *)
class NEDNSProxyProviderProtocol : NEVPNProtocol {
  @available(iOS 11.0, *)
  var providerConfiguration: [String : Any]?
  @available(iOS 11.0, *)
  var providerBundleIdentifier: String?
}
@available(iOS 14.0, *)
enum NEDNSProtocol : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case cleartext
  case TLS
  case HTTPS
}
@available(iOS 9.0, *)
class NEDNSSettings : NSObject, NSSecureCoding, NSCopying {
  @available(iOS 14.0, *)
  var dnsProtocol: NEDNSProtocol { get }
  @available(iOS 9.0, *)
  init(servers: [String])
  @available(iOS 9.0, *)
  var servers: [String] { get }
  @available(iOS 9.0, *)
  var searchDomains: [String]?
  @available(iOS 9.0, *)
  var domainName: String?
  @available(iOS 9.0, *)
  var matchDomains: [String]?
  @available(iOS 9.0, *)
  var matchDomainsNoSearch: Bool
}
@available(iOS 14.0, *)
class NEDNSOverTLSSettings : NEDNSSettings {
  @available(iOS 14.0, *)
  var serverName: String?
}
@available(iOS 14.0, *)
class NEDNSOverHTTPSSettings : NEDNSSettings {
  @available(iOS 14.0, *)
  var serverURL: URL?
}
@available(iOS 14.0, *)
enum NEDNSSettingsManagerError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case configurationInvalid
  case configurationDisabled
  case configurationStale
  case configurationCannotBeRemoved
}
@available(iOS 14.0, *)
let NEDNSSettingsErrorDomain: String
@available(iOS 14.0, *)
class NEDNSSettingsManager : NSObject {
  @available(iOS 14.0, *)
  class func shared() -> NEDNSSettingsManager
  @available(iOS 14.0, *)
  func loadFromPreferences(completionHandler: @escaping (Error?) -> Void)
  @available(iOS 14.0, *)
  func loadFromPreferences() async throws
  @available(iOS 14.0, *)
  func removeFromPreferences(completionHandler: @escaping (Error?) -> Void)
  @available(iOS 14.0, *)
  func removeFromPreferences() async throws
  @available(iOS 14.0, *)
  func saveToPreferences(completionHandler: @escaping (Error?) -> Void)
  @available(iOS 14.0, *)
  func saveToPreferences() async throws
  @available(iOS 14.0, *)
  var localizedDescription: String?
  @available(iOS 14.0, *)
  var dnsSettings: NEDNSSettings?
  @available(iOS 14.0, *)
  var onDemandRules: [NEOnDemandRule]?
  @available(iOS 14.0, *)
  var isEnabled: Bool { get }
}
extension NENetworkRule {
}
@available(iOS 13.0, *)
enum NETrafficDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case any
  case inbound
  case outbound
}
var NEFilterFlowBytesMax: UInt64 { get }
@available(iOS 9.0, *)
class NEFilterFlow : NSObject, NSSecureCoding, NSCopying {
  @available(iOS 9.0, *)
  var url: URL? { get }
  @available(iOS 11.0, *)
  var sourceAppUniqueIdentifier: Data? { get }
  @available(iOS 11.0, *)
  var sourceAppIdentifier: String? { get }
  @available(iOS 11.0, *)
  var sourceAppVersion: String? { get }
  @available(iOS 13.0, *)
  var direction: NETrafficDirection { get }
  @available(iOS 13.1, *)
  var identifier: UUID { get }
}
@available(iOS 9.0, *)
class NEFilterBrowserFlow : NEFilterFlow, NSSecureCoding, NSCopying {
  @available(iOS 9.0, *)
  var request: URLRequest? { get }
  @available(iOS 9.0, *)
  var response: URLResponse? { get }
  @available(iOS 9.0, *)
  var parentURL: URL? { get }
}
@available(iOS 9.0, *)
class NEFilterSocketFlow : NEFilterFlow, NSSecureCoding, NSCopying {
  @available(iOS 9.0, *)
  var remoteEndpoint: NWEndpoint? { get }
  @available(iOS 14.0, *)
  var remoteHostname: String? { get }
  @available(iOS 9.0, *)
  var localEndpoint: NWEndpoint? { get }
  @available(iOS 9.0, *)
  var socketFamily: Int32 { get }
  @available(iOS 9.0, *)
  var socketType: Int32 { get }
  @available(iOS 9.0, *)
  var socketProtocol: Int32 { get }
}
@available(iOS 9.0, *)
let NEFilterProviderRemediationMapRemediationURLs: String
@available(iOS 9.0, *)
let NEFilterProviderRemediationMapRemediationButtonTexts: String
var NEFilterProviderRemediationURLFlowURLHostname: String { get }
var NEFilterProviderRemediationURLFlowURL: String { get }
var NEFilterProviderRemediationURLOrganization: String { get }
var NEFilterProviderRemediationURLUsername: String { get }
@available(iOS 9.0, *)
class NEFilterProvider : NEProvider {
  @available(iOS 9.0, *)
  func startFilter(completionHandler: @escaping (Error?) -> Void)
  @available(iOS 9.0, *)
  func startFilter() async throws
  @available(iOS 9.0, *)
  func stopFilter(with reason: NEProviderStopReason, completionHandler: @escaping () -> Void)
  @available(iOS 9.0, *)
  func stopFilter(with reason: NEProviderStopReason) async
  @available(iOS 9.0, *)
  var filterConfiguration: NEFilterProviderConfiguration { get }
  @available(iOS 11.0, *)
  func handle(_ report: NEFilterReport)
}
extension NEFilterReport {
  @available(iOS 13.0, *)
  enum Event : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case newFlow
    case dataDecision
    case flowClosed
  }
}
@available(iOS 9.0, *)
class NEFilterVerdict : NSObject, NSSecureCoding, NSCopying {
  @available(iOS 11.0, *)
  var shouldReport: Bool
}
@available(iOS 9.0, *)
class NEFilterNewFlowVerdict : NEFilterVerdict, NSSecureCoding, NSCopying {
  @available(iOS 9.0, *)
  class func needRules() -> NEFilterNewFlowVerdict
  @available(iOS 9.0, *)
  class func allow() -> NEFilterNewFlowVerdict
  @available(iOS 9.0, *)
  class func drop() -> NEFilterNewFlowVerdict
  @available(iOS 9.0, *)
  class func remediateVerdict(withRemediationURLMapKey remediationURLMapKey: String, remediationButtonTextMapKey: String) -> NEFilterNewFlowVerdict
  @available(iOS 9.0, *)
  class func urlAppendStringVerdict(withMapKey urlAppendMapKey: String) -> NEFilterNewFlowVerdict
  @available(iOS 9.0, *)
  class func filterDataVerdict(withFilterInbound filterInbound: Bool, peekInboundBytes: Int, filterOutbound: Bool, peekOutboundBytes: Int) -> NEFilterNewFlowVerdict
}
@available(iOS 9.0, *)
class NEFilterControlVerdict : NEFilterNewFlowVerdict, NSSecureCoding, NSCopying {
  @available(iOS 9.0, *)
  class func allow(withUpdateRules updateRules: Bool) -> NEFilterControlVerdict
  @available(iOS 9.0, *)
  class func drop(withUpdateRules updateRules: Bool) -> NEFilterControlVerdict
  @available(iOS 9.0, *)
  class func updateRules() -> NEFilterControlVerdict
}
@available(iOS 11.0, *)
enum NEFilterAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS 11.0, *)
  case invalid
  @available(iOS 11.0, *)
  case allow
  @available(iOS 11.0, *)
  case drop
  @available(iOS 11.0, *)
  case remediate
  @available(iOS 11.0, *)
  case filterData
}
@available(iOS 11.0, *)
class NEFilterReport : NSObject, NSSecureCoding, NSCopying {
  @available(iOS 11.0, *)
  var flow: NEFilterFlow? { get }
  @available(iOS 11.0, *)
  var action: NEFilterAction { get }
  @available(iOS 13.0, *)
  var event: NEFilterReport.Event { get }
  @available(iOS 13.0, *)
  var bytesInboundCount: Int { get }
  @available(iOS 13.0, *)
  var bytesOutboundCount: Int { get }
}
@available(iOS 9.0, *)
class NEFilterControlProvider : NEFilterProvider {
  @available(iOS 9.0, *)
  var remediationMap: [String : [String : NSObject]]?
  @available(iOS 9.0, *)
  var urlAppendStringMap: [String : String]?
  @available(iOS 9.0, *)
  func handleRemediation(for flow: NEFilterFlow, completionHandler: @escaping (NEFilterControlVerdict) -> Void)
  @available(iOS 9.0, *)
  func handleRemediation(for flow: NEFilterFlow) async -> NEFilterControlVerdict
  @available(iOS 9.0, *)
  func handleNewFlow(_ flow: NEFilterFlow, completionHandler: @escaping (NEFilterControlVerdict) -> Void)
  @available(iOS 9.0, *)
  func handleNewFlow(_ flow: NEFilterFlow) async -> NEFilterControlVerdict
  @available(iOS 9.0, *)
  func notifyRulesChanged()
}
@available(iOS 9.0, *)
class NEFilterDataProvider : NEFilterProvider {
  @available(iOS 9.0, *)
  func handleNewFlow(_ flow: NEFilterFlow) -> NEFilterNewFlowVerdict
  @available(iOS 9.0, *)
  func handleInboundData(from flow: NEFilterFlow, readBytesStartOffset offset: Int, readBytes: Data) -> NEFilterDataVerdict
  @available(iOS 9.0, *)
  func handleOutboundData(from flow: NEFilterFlow, readBytesStartOffset offset: Int, readBytes: Data) -> NEFilterDataVerdict
  @available(iOS 9.0, *)
  func handleInboundDataComplete(for flow: NEFilterFlow) -> NEFilterDataVerdict
  @available(iOS 9.0, *)
  func handleOutboundDataComplete(for flow: NEFilterFlow) -> NEFilterDataVerdict
  @available(iOS 9.0, *)
  func handleRemediation(for flow: NEFilterFlow) -> NEFilterRemediationVerdict
  @available(iOS 9.0, *)
  func handleRulesChanged()
}
@available(iOS 9.0, *)
class NEFilterDataVerdict : NEFilterVerdict, NSSecureCoding, NSCopying {
  @available(iOS 9.0, *)
  class func allow() -> NEFilterDataVerdict
  @available(iOS 9.0, *)
  class func drop() -> NEFilterDataVerdict
  @available(iOS 9.0, *)
  class func remediateVerdict(withRemediationURLMapKey remediationURLMapKey: String?, remediationButtonTextMapKey: String?) -> NEFilterDataVerdict
  @available(iOS 9.0, *)
  /*not inherited*/ init(passBytes: Int, peekBytes: Int)
  @available(iOS 9.0, *)
  class func needRules() -> NEFilterDataVerdict
}
@available(iOS 9.0, *)
class NEFilterRemediationVerdict : NEFilterVerdict, NSSecureCoding, NSCopying {
  @available(iOS 9.0, *)
  class func allow() -> NEFilterRemediationVerdict
  @available(iOS 9.0, *)
  class func drop() -> NEFilterRemediationVerdict
  @available(iOS 9.0, *)
  class func needRules() -> NEFilterRemediationVerdict
}
@available(iOS 8.0, *)
enum NEFilterManagerError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case configurationInvalid
  case configurationDisabled
  case configurationStale
  case configurationCannotBeRemoved
  @available(iOS 13.0, *)
  case configurationPermissionDenied
  @available(iOS 13.0, *)
  case configurationInternalError
}
@available(iOS 8.0, *)
let NEFilterErrorDomain: String
extension NEFilterManager {
}
@available(iOS 8.0, *)
class NEFilterManager : NSObject {
  @available(iOS 8.0, *)
  class func shared() -> NEFilterManager
  @available(iOS 8.0, *)
  func loadFromPreferences(completionHandler: @escaping (Error?) -> Void)
  @available(iOS 8.0, *)
  func loadFromPreferences() async throws
  @available(iOS 8.0, *)
  func removeFromPreferences(completionHandler: @escaping (Error?) -> Void)
  @available(iOS 8.0, *)
  func removeFromPreferences() async throws
  @available(iOS 8.0, *)
  func saveToPreferences(completionHandler: @escaping (Error?) -> Void)
  @available(iOS 8.0, *)
  func saveToPreferences() async throws
  @available(iOS 8.0, *)
  var localizedDescription: String?
  @available(iOS 9.0, *)
  var providerConfiguration: NEFilterProviderConfiguration?
  @available(iOS 8.0, *)
  var isEnabled: Bool
}
extension NEFilterPacketProvider {
}
@available(iOS 9.0, *)
class NEFilterProviderConfiguration : NSObject, NSSecureCoding, NSCopying {
  @available(iOS 9.0, *)
  var filterBrowsers: Bool
  @available(iOS 9.0, *)
  var filterSockets: Bool
  @available(iOS 9.0, *)
  var vendorConfiguration: [String : Any]?
  @available(iOS 9.0, *)
  var serverAddress: String?
  @available(iOS 9.0, *)
  var username: String?
  @available(iOS 9.0, *)
  var organization: String?
  @available(iOS 9.0, *)
  var passwordReference: Data?
  @available(iOS 9.0, *)
  var identityReference: Data?
}
@available(iOS 9.0, *)
class NEFlowMetaData : NSObject, NSCopying, NSSecureCoding {
  @available(iOS 9.0, *)
  var sourceAppUniqueIdentifier: Data { get }
  @available(iOS 9.0, *)
  var sourceAppSigningIdentifier: String { get }
}
@available(iOS 9.0, *)
class NEHotspotNetwork : NSObject {
  @available(iOS 9.0, *)
  var ssid: String { get }
  @available(iOS 9.0, *)
  var bssid: String { get }
  @available(iOS 14.0, *)
  class func fetchCurrent(completionHandler: @escaping (NEHotspotNetwork?) -> Void)
  @available(iOS 14.0, *)
  class func fetchCurrent() async -> NEHotspotNetwork?
}
@available(iOS 9.0, *)
enum NEHotspotHelperCommandType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case filterScanList
  case evaluate
  case authenticate
  case presentUI
  case maintain
  case logoff
}
@available(iOS 9.0, *)
enum NEHotspotHelperResult : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case success
  case failure
  case uiRequired
  case commandNotRecognized
  case authenticationRequired
  case unsupportedNetwork
  case temporaryFailure
}
@available(iOS 9.0, *)
enum NEHotspotHelperConfidence : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case low
  case high
}
@available(iOS 9.0, *)
extension NEHotspotNetwork {
  @available(iOS 9.0, *)
  var signalStrength: Double { get }
  @available(iOS 9.0, *)
  var isSecure: Bool { get }
  @available(iOS 9.0, *)
  var didAutoJoin: Bool { get }
  @available(iOS 9.0, *)
  var didJustJoin: Bool { get }
  @available(iOS 9.0, *)
  var isChosenHelper: Bool { get }
  @available(iOS 9.0, *)
  func setConfidence(_ confidence: NEHotspotHelperConfidence)
  @available(iOS 9.0, *)
  func setPassword(_ password: String)
}
@available(iOS 9.0, *)
class NEHotspotHelperCommand : NSObject {
  @available(iOS 9.0, *)
  var commandType: NEHotspotHelperCommandType { get }
  @available(iOS 9.0, *)
  var network: NEHotspotNetwork? { get }
  @available(iOS 9.0, *)
  var networkList: [NEHotspotNetwork]? { get }
  @available(iOS 9.0, *)
  func createResponse(_ result: NEHotspotHelperResult) -> NEHotspotHelperResponse
  @available(iOS 9.0, *)
  func createTCPConnection(_ endpoint: NWEndpoint) -> NWTCPConnection
  @available(iOS 9.0, *)
  func createUDPSession(_ endpoint: NWEndpoint) -> NWUDPSession
}
@available(iOS 9.0, *)
class NEHotspotHelperResponse : NSObject {
  @available(iOS 9.0, *)
  func setNetwork(_ network: NEHotspotNetwork)
  @available(iOS 9.0, *)
  func setNetworkList(_ networkList: [NEHotspotNetwork])
  @available(iOS 9.0, *)
  func deliver()
}
@available(iOS 9.0, *)
typealias NEHotspotHelperHandler = (NEHotspotHelperCommand) -> Void
@available(iOS 9.0, *)
let kNEHotspotHelperOptionDisplayName: String
@available(iOS 9.0, *)
class NEHotspotHelper : NSObject {
  @available(iOS 9.0, *)
  class func register(options: [String : NSObject]? = nil, queue: DispatchQueue, handler: @escaping NEHotspotHelperHandler) -> Bool
  @available(iOS 9.0, *)
  class func logoff(_ network: NEHotspotNetwork) -> Bool
  @available(iOS 9.0, *)
  class func supportedNetworkInterfaces() -> [Any]?
}
extension NSMutableURLRequest {
  @available(iOS 9.0, *)
  func bind(to command: NEHotspotHelperCommand)
}
extension NEHotspotEAPSettings {
  @available(iOS 11.0, *)
  enum EAPType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case EAPTLS
    case EAPTTLS
    case EAPPEAP
    case EAPFAST
  }
  @available(iOS 11.0, *)
  enum TTLSInnerAuthenticationType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case eapttlsInnerAuthenticationPAP
    case eapttlsInnerAuthenticationCHAP
    case eapttlsInnerAuthenticationMSCHAP
    case eapttlsInnerAuthenticationMSCHAPv2
    case eapttlsInnerAuthenticationEAP
  }
  @available(iOS 11.0, *)
  enum TLSVersion : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case _1_0
    case _1_1
    case _1_2
  }
}
@available(iOS 11.0, *)
class NEHotspotHS20Settings : NSObject, NSCopying, NSSecureCoding {
  @available(iOS 11.0, *)
  var domainName: String { get }
  @available(iOS 11.0, *)
  var isRoamingEnabled: Bool
  @available(iOS 11.0, *)
  var roamingConsortiumOIs: [String]
  @available(iOS 11.0, *)
  var naiRealmNames: [String]
  @available(iOS 11.0, *)
  var mccAndMNCs: [String]
  @available(iOS 11.0, *)
  init(domainName: String, roamingEnabled: Bool)
}
@available(iOS 11.0, *)
class NEHotspotEAPSettings : NSObject, NSCopying, NSSecureCoding {
  @available(iOS 11.0, *)
  var supportedEAPTypes: [NSNumber]
  @available(iOS 11.0, *)
  var username: String
  @available(iOS 11.0, *)
  var outerIdentity: String
  @available(iOS 11.0, *)
  var ttlsInnerAuthenticationType: NEHotspotEAPSettings.TTLSInnerAuthenticationType
  @available(iOS 11.0, *)
  var password: String
  @available(iOS 11.0, *)
  var trustedServerNames: [String]
  @available(iOS 11.0, *)
  var isTLSClientCertificateRequired: Bool
  @available(iOS 11.0, *)
  var preferredTLSVersion: NEHotspotEAPSettings.TLSVersion
  @available(iOS 11.0, *)
  func setIdentity(_ identity: SecIdentity) -> Bool
  @available(iOS 11.0, *)
  func setTrustedServerCertificates(_ certificates: [Any]) -> Bool
}
@available(iOS 11.0, *)
class NEHotspotConfiguration : NSObject, NSCopying, NSSecureCoding {
  @available(iOS 11.0, *)
  var ssid: String { get }
  @available(iOS 13.0, *)
  var ssidPrefix: String { get }
  @available(iOS 11.0, *)
  var joinOnce: Bool
  @available(iOS 11.0, *)
  @NSCopying var lifeTimeInDays: NSNumber
  @available(iOS 13.0, *)
  var hidden: Bool
  @available(iOS 11.0, *)
  init(ssid SSID: String)
  @available(iOS 11.0, *)
  init(ssid SSID: String, passphrase: String, isWEP: Bool)
  @available(iOS 11.0, *)
  init(ssid SSID: String, eapSettings: NEHotspotEAPSettings)
  @available(iOS 11.0, *)
  init(hs20Settings: NEHotspotHS20Settings, eapSettings: NEHotspotEAPSettings)
  @available(iOS 13.0, *)
  init(ssidPrefix SSIDPrefix: String)
  @available(iOS 13.0, *)
  init(ssidPrefix SSIDPrefix: String, passphrase: String, isWEP: Bool)
}
@available(iOS 11.0, *)
let NEHotspotConfigurationErrorDomain: String
@available(iOS 11.0, *)
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
@available(iOS 11.0, *)
class NEHotspotConfigurationManager : NSObject {
  class var shared: NEHotspotConfigurationManager { get }
  @available(iOS 11.0, *)
  func apply(_ configuration: NEHotspotConfiguration, completionHandler: ((Error?) -> Void)? = nil)
  @available(iOS 11.0, *)
  func apply(_ configuration: NEHotspotConfiguration) async throws
  @available(iOS 11.0, *)
  func removeConfiguration(forSSID SSID: String)
  @available(iOS 11.0, *)
  func removeConfiguration(forHS20DomainName domainName: String)
  @available(iOS 11.0, *)
  func getConfiguredSSIDs(completionHandler: @escaping ([String]) -> Void)
  @available(iOS 11.0, *)
  func configuredSSIDs() async -> [String]
}
@available(iOS 9.0, *)
class NEIPv4Settings : NSObject, NSSecureCoding, NSCopying {
  @available(iOS 9.0, *)
  init(addresses: [String], subnetMasks: [String])
  @available(iOS 9.0, *)
  var addresses: [String] { get }
  @available(iOS 9.0, *)
  var subnetMasks: [String] { get }
  @available(iOS 9.0, *)
  var includedRoutes: [NEIPv4Route]?
  @available(iOS 9.0, *)
  var excludedRoutes: [NEIPv4Route]?
}
@available(iOS 9.0, *)
class NEIPv4Route : NSObject, NSSecureCoding, NSCopying {
  @available(iOS 9.0, *)
  init(destinationAddress address: String, subnetMask: String)
  @available(iOS 9.0, *)
  var destinationAddress: String { get }
  @available(iOS 9.0, *)
  var destinationSubnetMask: String { get }
  @available(iOS 9.0, *)
  var gatewayAddress: String?
  @available(iOS 9.0, *)
  class func `default`() -> NEIPv4Route
}
@available(iOS 9.0, *)
class NEIPv6Settings : NSObject, NSSecureCoding, NSCopying {
  @available(iOS 9.0, *)
  init(addresses: [String], networkPrefixLengths: [NSNumber])
  @available(iOS 9.0, *)
  var addresses: [String] { get }
  @available(iOS 9.0, *)
  var networkPrefixLengths: [NSNumber] { get }
  @available(iOS 9.0, *)
  var includedRoutes: [NEIPv6Route]?
  @available(iOS 9.0, *)
  var excludedRoutes: [NEIPv6Route]?
}
@available(iOS 9.0, *)
class NEIPv6Route : NSObject, NSSecureCoding, NSCopying {
  @available(iOS 9.0, *)
  init(destinationAddress address: String, networkPrefixLength: NSNumber)
  @available(iOS 9.0, *)
  var destinationAddress: String { get }
  @available(iOS 9.0, *)
  var destinationNetworkPrefixLength: NSNumber { get }
  @available(iOS 9.0, *)
  var gatewayAddress: String?
  @available(iOS 9.0, *)
  class func `default`() -> NEIPv6Route
}
@available(iOS 8.0, *)
enum NEOnDemandRuleAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case connect
  case disconnect
  case evaluateConnection
  case ignore
}
@available(iOS 8.0, *)
enum NEOnDemandRuleInterfaceType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS 9.0, *)
  case any
  @available(iOS 8.0, *)
  case wiFi
  @available(iOS 8.0, *)
  case cellular
}
@available(iOS 8.0, *)
class NEOnDemandRule : NSObject, NSSecureCoding, NSCopying {
  @available(iOS 8.0, *)
  var action: NEOnDemandRuleAction { get }
  @available(iOS 8.0, *)
  var dnsSearchDomainMatch: [String]?
  @available(iOS 8.0, *)
  var dnsServerAddressMatch: [String]?
  @available(iOS 8.0, *)
  var interfaceTypeMatch: NEOnDemandRuleInterfaceType
  @available(iOS 8.0, *)
  var ssidMatch: [String]?
  @available(iOS 8.0, *)
  var probeURL: URL?
}
@available(iOS 8.0, *)
class NEOnDemandRuleConnect : NEOnDemandRule {
}
@available(iOS 8.0, *)
class NEOnDemandRuleDisconnect : NEOnDemandRule {
}
@available(iOS 8.0, *)
class NEOnDemandRuleIgnore : NEOnDemandRule {
}
@available(iOS 8.0, *)
class NEOnDemandRuleEvaluateConnection : NEOnDemandRule {
  @available(iOS 8.0, *)
  var connectionRules: [NEEvaluateConnectionRule]?
}
@available(iOS 8.0, *)
enum NEEvaluateConnectionRuleAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case connectIfNeeded
  case neverConnect
}
@available(iOS 8.0, *)
class NEEvaluateConnectionRule : NSObject, NSSecureCoding, NSCopying {
  @available(iOS 8.0, *)
  init(matchDomains domains: [String], andAction action: NEEvaluateConnectionRuleAction)
  @available(iOS 8.0, *)
  var action: NEEvaluateConnectionRuleAction { get }
  @available(iOS 8.0, *)
  var matchDomains: [String] { get }
  @available(iOS 8.0, *)
  var useDNSServers: [String]?
  @available(iOS 8.0, *)
  var probeURL: URL?
}
@available(iOS 10.0, *)
class NEPacket : NSObject, NSCopying, NSSecureCoding {
  @available(iOS 10.0, *)
  init(data: Data, protocolFamily: sa_family_t)
  @available(iOS 10.0, *)
  var data: Data { get }
  @available(iOS 10.0, *)
  var protocolFamily: sa_family_t { get }
  @available(iOS 10.0, *)
  var metadata: NEFlowMetaData? { get }
}
@available(iOS 9.0, *)
class NEPacketTunnelFlow : NSObject {
  @available(iOS 9.0, *)
  func readPackets(completionHandler: @escaping ([Data], [NSNumber]) -> Void)
  @available(iOS 9.0, *)
  func readPackets() async -> ([Data], [NSNumber])
  @available(iOS 9.0, *)
  func writePackets(_ packets: [Data], withProtocols protocols: [NSNumber]) -> Bool
  @available(iOS 10.0, *)
  func readPacketObjects(completionHandler: @escaping ([NEPacket]) -> Void)
  @available(iOS 10.0, *)
  func readPacketObjects() async -> [NEPacket]
  @available(iOS 10.0, *)
  func writePacketObjects(_ packets: [NEPacket]) -> Bool
}
@available(iOS 9.0, *)
class NETunnelNetworkSettings : NSObject, NSSecureCoding, NSCopying {
  @available(iOS 9.0, *)
  init(tunnelRemoteAddress address: String)
  @available(iOS 9.0, *)
  var tunnelRemoteAddress: String { get }
  @available(iOS 9.0, *)
  @NSCopying var dnsSettings: NEDNSSettings?
  @available(iOS 9.0, *)
  @NSCopying var proxySettings: NEProxySettings?
}
@available(iOS 9.0, *)
class NEPacketTunnelNetworkSettings : NETunnelNetworkSettings {
  @available(iOS 9.0, *)
  @NSCopying var ipv4Settings: NEIPv4Settings?
  @available(iOS 9.0, *)
  @NSCopying var ipv6Settings: NEIPv6Settings?
  @available(iOS 9.0, *)
  @NSCopying var tunnelOverheadBytes: NSNumber?
  @available(iOS 9.0, *)
  @NSCopying var mtu: NSNumber?
}
@available(iOS 9.0, *)
class NEPacketTunnelProvider : NETunnelProvider {
  @available(iOS 9.0, *)
  func startTunnel(options: [String : NSObject]? = nil, completionHandler: @escaping (Error?) -> Void)
  @available(iOS 9.0, *)
  func startTunnel(options: [String : NSObject]? = nil) async throws
  @available(iOS 9.0, *)
  func stopTunnel(with reason: NEProviderStopReason, completionHandler: @escaping () -> Void)
  @available(iOS 9.0, *)
  func stopTunnel(with reason: NEProviderStopReason) async
  @available(iOS 9.0, *)
  func cancelTunnelWithError(_ error: Error?)
  @available(iOS 9.0, *)
  var packetFlow: NEPacketTunnelFlow { get }
  @available(iOS 9.0, *)
  func createTCPConnectionThroughTunnel(to remoteEndpoint: NWEndpoint, enableTLS: Bool, tlsParameters TLSParameters: NWTLSParameters?, delegate: Any?) -> NWTCPConnection
  @available(iOS 9.0, *)
  func createUDPSessionThroughTunnel(to remoteEndpoint: NWEndpoint, from localEndpoint: NWHostEndpoint?) -> NWUDPSession
}
@available(iOS 8.0, *)
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
@available(iOS 9.0, *)
let NEVPNConnectionStartOptionUsername: String
@available(iOS 9.0, *)
let NEVPNConnectionStartOptionPassword: String
@available(iOS 8.0, *)
class NEVPNConnection : NSObject {
  @available(iOS 8.0, *)
  func startVPNTunnel() throws
  @available(iOS 9.0, *)
  func startVPNTunnel(options: [String : NSObject]? = nil) throws
  @available(iOS 8.0, *)
  func stopVPNTunnel()
  @available(iOS 8.0, *)
  var status: NEVPNStatus { get }
  @available(iOS 9.0, *)
  var connectedDate: Date? { get }
  @available(iOS 10.0, *)
  var manager: NEVPNManager { get }
}
@available(iOS 9.0, *)
class NETunnelProviderSession : NEVPNConnection {
  @available(iOS 9.0, *)
  func startTunnel(options: [String : Any]? = nil) throws
  @available(iOS 9.0, *)
  func stopTunnel()
  @available(iOS 9.0, *)
  func sendProviderMessage(_ messageData: Data, responseHandler: ((Data?) -> Void)? = nil) throws
}
@available(iOS 9.0, *)
class NETunnelProviderProtocol : NEVPNProtocol {
  @available(iOS 9.0, *)
  var providerConfiguration: [String : Any]?
  @available(iOS 9.0, *)
  var providerBundleIdentifier: String?
}
@available(iOS 8.0, *)
enum NEVPNIKEAuthenticationMethod : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case certificate
  case sharedSecret
}
@available(iOS 8.0, *)
class NEVPNProtocolIPSec : NEVPNProtocol {
  @available(iOS 8.0, *)
  var authenticationMethod: NEVPNIKEAuthenticationMethod
  @available(iOS 8.0, *)
  var useExtendedAuthentication: Bool
  @available(iOS 8.0, *)
  var sharedSecretReference: Data?
  @available(iOS 8.0, *)
  var localIdentifier: String?
  @available(iOS 8.0, *)
  var remoteIdentifier: String?
}
@available(iOS 8.0, *)
enum NEVPNIKEv2EncryptionAlgorithm : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case algorithmDES
  case algorithm3DES
  case algorithmAES128
  case algorithmAES256
  @available(iOS 8.3, *)
  case algorithmAES128GCM
  @available(iOS 8.3, *)
  case algorithmAES256GCM
  @available(iOS 13.0, *)
  case algorithmChaCha20Poly1305
}
@available(iOS 8.0, *)
enum NEVPNIKEv2IntegrityAlgorithm : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case SHA96
  case SHA160
  case SHA256
  case SHA384
  case SHA512
}
@available(iOS 8.0, *)
enum NEVPNIKEv2DeadPeerDetectionRate : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case low
  case medium
  case high
}
@available(iOS 8.0, *)
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
  @available(iOS 13.0, *)
  case group31
}
@available(iOS 8.3, *)
enum NEVPNIKEv2CertificateType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case RSA
  case ECDSA256
  case ECDSA384
  case ECDSA521
  @available(iOS 13.0, *)
  case ed25519
}
@available(iOS 11.0, *)
enum NEVPNIKEv2TLSVersion : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case versionDefault
  case version1_0
  case version1_1
  case version1_2
}
@available(iOS 8.0, *)
class NEVPNIKEv2SecurityAssociationParameters : NSObject, NSSecureCoding, NSCopying {
  @available(iOS 8.0, *)
  var encryptionAlgorithm: NEVPNIKEv2EncryptionAlgorithm
  @available(iOS 8.0, *)
  var integrityAlgorithm: NEVPNIKEv2IntegrityAlgorithm
  @available(iOS 8.0, *)
  var diffieHellmanGroup: NEVPNIKEv2DiffieHellmanGroup
  @available(iOS 8.0, *)
  var lifetimeMinutes: Int32
}
@available(iOS 8.0, *)
class NEVPNProtocolIKEv2 : NEVPNProtocolIPSec {
  @available(iOS 8.0, *)
  var deadPeerDetectionRate: NEVPNIKEv2DeadPeerDetectionRate
  @available(iOS 8.0, *)
  var serverCertificateIssuerCommonName: String?
  @available(iOS 8.0, *)
  var serverCertificateCommonName: String?
  @available(iOS 8.3, *)
  var certificateType: NEVPNIKEv2CertificateType
  @available(iOS 9.0, *)
  var useConfigurationAttributeInternalIPSubnet: Bool
  @available(iOS 8.0, *)
  var ikeSecurityAssociationParameters: NEVPNIKEv2SecurityAssociationParameters { get }
  @available(iOS 8.0, *)
  var childSecurityAssociationParameters: NEVPNIKEv2SecurityAssociationParameters { get }
  @available(iOS 9.0, *)
  var disableMOBIKE: Bool
  @available(iOS 9.0, *)
  var disableRedirect: Bool
  @available(iOS 9.0, *)
  var enablePFS: Bool
  @available(iOS 9.0, *)
  var enableRevocationCheck: Bool
  @available(iOS 9.0, *)
  var strictRevocationCheck: Bool
  @available(iOS 11.0, *)
  var minimumTLSVersion: NEVPNIKEv2TLSVersion
  @available(iOS 11.0, *)
  var maximumTLSVersion: NEVPNIKEv2TLSVersion
  @available(iOS 13.0, *)
  var enableFallback: Bool
  @available(iOS 14.0, *)
  var mtu: Int
}
@available(iOS 14.0, *)
let NEAppPushErrorDomain: String
@available(iOS 14.0, *)
struct NEAppPushManagerError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var configurationInvalid: NEAppPushManagerError.Code { get }
  static var configurationNotLoaded: NEAppPushManagerError.Code { get }
  static var internalError: NEAppPushManagerError.Code { get }
  static var inactiveSession: NEAppPushManagerError.Code { get }
}
@available(iOS 14.0, *)
class NEAppPushManager : NSObject {
  @available(iOS 14.0, *)
  var matchSSIDs: [String]
  @available(iOS 14.0, *)
  var providerConfiguration: [String : Any]
  @available(iOS 14.0, *)
  var providerBundleIdentifier: String?
  weak var delegate: @sil_weak NEAppPushDelegate?
  @available(iOS 14.0, *)
  class func loadAllFromPreferences(completionHandler: @escaping ([NEAppPushManager]?, Error?) -> Void)
  @available(iOS 14.0, *)
  class func loadAllFromPreferences() async throws -> [NEAppPushManager]
  @available(iOS 14.0, *)
  func loadFromPreferences(completionHandler: @escaping (Error?) -> Void)
  @available(iOS 14.0, *)
  func loadFromPreferences() async throws
  @available(iOS 14.0, *)
  func removeFromPreferences(completionHandler: @escaping (Error?) -> Void)
  @available(iOS 14.0, *)
  func removeFromPreferences() async throws
  @available(iOS 14.0, *)
  func saveToPreferences(completionHandler: @escaping (Error?) -> Void)
  @available(iOS 14.0, *)
  func saveToPreferences() async throws
  @available(iOS 14.0, *)
  var localizedDescription: String?
  @available(iOS 14.0, *)
  var isEnabled: Bool
  @available(iOS 14.0, *)
  var isActive: Bool { get }
}
@available(iOS 14.0, *)
protocol NEAppPushDelegate : NSObjectProtocol {
  @available(iOS 14.0, *)
  func appPushManager(_ manager: NEAppPushManager, didReceiveIncomingCallWithUserInfo userInfo: [AnyHashable : Any] = [:])
}
@available(iOS 14.0, *)
class NEAppPushProvider : NEProvider {
  @available(iOS 14.0, *)
  var providerConfiguration: [String : Any]? { get }
  @available(iOS 14.0, *)
  func start(completionHandler: @escaping (Error?) -> Void)
  @available(iOS 14.0, *)
  func start() async throws
  @available(iOS 14.0, *)
  func stop(with reason: NEProviderStopReason, completionHandler: @escaping () -> Void)
  @available(iOS 14.0, *)
  func stop(with reason: NEProviderStopReason) async
  @available(iOS 14.0, *)
  func reportIncomingCall(userInfo: [AnyHashable : Any] = [:])
  @available(iOS 14.0, *)
  func handleTimerEvent()
}
@available(iOS 9.0, *)
class NWEndpoint : NSObject, NSSecureCoding, NSCopying {
}
@available(iOS 9.0, *)
class NWHostEndpoint : NWEndpoint {
  @available(iOS 9.0, *)
  convenience init(hostname: String, port: String)
  @available(iOS 9.0, *)
  var hostname: String { get }
  @available(iOS 9.0, *)
  var port: String { get }
}
@available(iOS 9.0, *)
class NWBonjourServiceEndpoint : NWEndpoint {
  @available(iOS 9.0, *)
  convenience init(name: String, type: String, domain: String)
  @available(iOS 9.0, *)
  var name: String { get }
  @available(iOS 9.0, *)
  var type: String { get }
  @available(iOS 9.0, *)
  var domain: String { get }
}
@available(iOS 9.0, *)
enum NWPathStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case invalid
  case satisfied
  case unsatisfied
  case satisfiable
}
@available(iOS 9.0, *)
class NWPath : NSObject {
  @available(iOS 9.0, *)
  var status: NWPathStatus { get }
  @available(iOS 9.0, *)
  var isExpensive: Bool { get }
  @available(iOS 13.0, *)
  var isConstrained: Bool { get }
  @available(iOS 9.0, *)
  func isEqual(to path: NWPath) -> Bool
}
@available(iOS 9.0, *)
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
@available(iOS 9.0, *)
class NWTCPConnection : NSObject {
  @available(iOS 9.0, *)
  init(upgradeFor connection: NWTCPConnection)
  @available(iOS 9.0, *)
  var state: NWTCPConnectionState { get }
  @available(iOS 9.0, *)
  var isViable: Bool { get }
  @available(iOS 9.0, *)
  var hasBetterPath: Bool { get }
  @available(iOS 9.0, *)
  var endpoint: NWEndpoint { get }
  @available(iOS 9.0, *)
  var connectedPath: NWPath? { get }
  @available(iOS 9.0, *)
  var localAddress: NWEndpoint? { get }
  @available(iOS 9.0, *)
  var remoteAddress: NWEndpoint? { get }
  @available(iOS 9.0, *)
  var txtRecord: Data? { get }
  @available(iOS 9.0, *)
  var error: Error? { get }
  @available(iOS 9.0, *)
  func cancel()
  @available(iOS 9.0, *)
  func readLength(_ length: Int, completionHandler completion: @escaping (Data?, Error?) -> Void)
  @available(iOS 9.0, *)
  func readLength(_ length: Int) async throws -> Data
  @available(iOS 9.0, *)
  func readMinimumLength(_ minimum: Int, maximumLength maximum: Int, completionHandler completion: @escaping (Data?, Error?) -> Void)
  @available(iOS 9.0, *)
  func readMinimumLength(_ minimum: Int, maximumLength maximum: Int) async throws -> Data
  @available(iOS 9.0, *)
  func write(_ data: Data, completionHandler completion: @escaping (Error?) -> Void)
  @available(iOS 9.0, *)
  func write(_ data: Data) async throws
  @available(iOS 9.0, *)
  func writeClose()
}
@available(iOS 9.0, *)
protocol NWTCPConnectionAuthenticationDelegate : NSObjectProtocol {
  @available(iOS 9.0, *)
  optional func shouldProvideIdentity(for connection: NWTCPConnection) -> Bool
  @available(iOS 9.0, *)
  optional func provideIdentity(for connection: NWTCPConnection, completionHandler completion: @escaping (SecIdentity, [Any]) -> Void)
  @available(iOS 9.0, *)
  optional func provideIdentity(for connection: NWTCPConnection) async -> (SecIdentity, [Any])
  @available(iOS 9.0, *)
  optional func shouldEvaluateTrust(for connection: NWTCPConnection) -> Bool
  @available(iOS 9.0, *)
  optional func evaluateTrust(for connection: NWTCPConnection, peerCertificateChain: [Any], completionHandler completion: @escaping (SecTrust) -> Void)
  @available(iOS 9.0, *)
  optional func evaluateTrust(for connection: NWTCPConnection, peerCertificateChain: [Any]) async -> SecTrust
}
@available(iOS 9.0, *)
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
@available(iOS 9.0, *)
class NWUDPSession : NSObject {
  @available(iOS 9.0, *)
  init(upgradeFor session: NWUDPSession)
  @available(iOS 9.0, *)
  var state: NWUDPSessionState { get }
  @available(iOS 9.0, *)
  var endpoint: NWEndpoint { get }
  @available(iOS 9.0, *)
  var resolvedEndpoint: NWEndpoint? { get }
  @available(iOS 9.0, *)
  var isViable: Bool { get }
  @available(iOS 9.0, *)
  var hasBetterPath: Bool { get }
  @available(iOS 9.0, *)
  var currentPath: NWPath? { get }
  @available(iOS 9.0, *)
  func tryNextResolvedEndpoint()
  @available(iOS 9.0, *)
  var maximumDatagramLength: Int { get }
  @available(iOS 9.0, *)
  func setReadHandler(_ handler: @escaping ([Data]?, Error?) -> Void, maxDatagrams: Int)
  @available(iOS 9.0, *)
  func writeMultipleDatagrams(_ datagramArray: [Data], completionHandler: @escaping (Error?) -> Void)
  @available(iOS 9.0, *)
  func writeMultipleDatagrams(_ datagramArray: [Data]) async throws
  @available(iOS 9.0, *)
  func writeDatagram(_ datagram: Data, completionHandler: @escaping (Error?) -> Void)
  @available(iOS 9.0, *)
  func writeDatagram(_ datagram: Data) async throws
  @available(iOS 9.0, *)
  func cancel()
}
class NWTLSParameters : NSObject {
  @available(iOS 9.0, *)
  var tlsSessionID: Data?
  @available(iOS 9.0, *)
  var sslCipherSuites: Set<NSNumber>?
  @available(iOS 9.0, *)
  var minimumSSLProtocolVersion: Int
  @available(iOS 9.0, *)
  var maximumSSLProtocolVersion: Int
}
