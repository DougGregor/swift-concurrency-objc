
var AVBMACAddressSize: Int32 { get }
@available(macOS 10.8, *)
enum AVB17221ADPEntityCapabilities : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  @available(macOS 10.9, *)
  static var efuMode: AVB17221ADPEntityCapabilities { get }
  case addressAccessSupported
  case gatewayEntity
  case aemSupported
  case legacyAVC
  case associationIDSupported
  case associationIDValid
  case vendorUniqueSupported
  case classASupported
  case classBSupported
  @available(macOS 10.9, *)
  static var gptpSupported: AVB17221ADPEntityCapabilities { get }
  @available(macOS 10.9, *)
  case aemAuthenticationSupported
  @available(macOS 10.9, *)
  case aemAuthenticationRequired
  @available(macOS 10.9, *)
  case aemPersistentAcquireSupported
  @available(macOS 10.9, *)
  case aemIdenitifyControlIndexValid
  @available(macOS 10.9, *)
  case aemInterfaceIndexValid
  @available(macOS 10.9, *)
  case generalControllerIgnore
  @available(macOS 10.9, *)
  case entityNotReady
}
@available(macOS 10.8, *)
struct AVB17221ADPTalkerCapabilities : OptionSet {
  init(rawValue: UInt16)
  let rawValue: UInt16
  static var implemented: AVB17221ADPTalkerCapabilities { get }
  static var hasOtherSource: AVB17221ADPTalkerCapabilities { get }
  static var hasControlSource: AVB17221ADPTalkerCapabilities { get }
  static var hasMediaClockSource: AVB17221ADPTalkerCapabilities { get }
  static var hasSMPTESource: AVB17221ADPTalkerCapabilities { get }
  static var hasMIDISource: AVB17221ADPTalkerCapabilities { get }
  static var hasAudioSource: AVB17221ADPTalkerCapabilities { get }
  static var hasVideoSource: AVB17221ADPTalkerCapabilities { get }
}
@available(macOS 10.8, *)
struct AVB17221ADPListenerCapabilities : OptionSet {
  init(rawValue: UInt16)
  let rawValue: UInt16
  static var implemented: AVB17221ADPListenerCapabilities { get }
  static var hasOtherSink: AVB17221ADPListenerCapabilities { get }
  static var hasControlSink: AVB17221ADPListenerCapabilities { get }
  static var hasMediaClockSink: AVB17221ADPListenerCapabilities { get }
  static var hasSMPTESink: AVB17221ADPListenerCapabilities { get }
  static var hasMIDISink: AVB17221ADPListenerCapabilities { get }
  static var hasAudioSink: AVB17221ADPListenerCapabilities { get }
  static var hasVideoSink: AVB17221ADPListenerCapabilities { get }
}
@available(macOS 10.8, *)
struct AVB17221ADPControllerCapabilities : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var implemented: AVB17221ADPControllerCapabilities { get }
  static var hasLayer3Proxy: AVB17221ADPControllerCapabilities { get }
}
@available(macOS 10.8, *)
enum AVB17221AECPMessageType : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case aemCommand
  case aemResponse
  case addressAccessCommand
  case addressAccessResponse
  case legacyAVCCommand
  case legacyAVCResponse
  case vendorUniqueCommand
  case vendorUniqueResponse
}
@available(macOS 10.8, *)
enum AVB17221AECPStatusCode : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case success
  case notImplemented
  case noSuchDescriptor
  case entityLocked
  case entityAcquired
  case notAuthorized
  case insufficientPrivileges
  case badArguments
  case noResources
  case inProgress
  case entityMisbehaving
  case notSupported
  case streamIsRunning
  static var addressAccessAddressTooLow: AVB17221AECPStatusCode { get }
  static var addressAccessAddressTooHigh: AVB17221AECPStatusCode { get }
  static var addressAccessAddressInvalid: AVB17221AECPStatusCode { get }
  static var addressAccessTLVInvalid: AVB17221AECPStatusCode { get }
  static var addressAccessDataInvalid: AVB17221AECPStatusCode { get }
  static var addressAccessUnsupported: AVB17221AECPStatusCode { get }
  static var avcFailure: AVB17221AECPStatusCode { get }
}
@available(macOS 10.8, *)
enum AVB17221ACMPMessageType : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case connectTXCommand
  case connectTXResponse
  case disconnectTXCommand
  case disconnectTXResponse
  case getTXStateCommand
  case getTXStateResponse
  case connectRXCommand
  case connectRXResponse
  case disconnectRXCommand
  case disconnectRXResponse
  case getRXStateCommand
  case getRXStateResponse
  case getTXConnectionCommand
  case getTXConnectionResponse
}
@available(macOS 10.8, *)
enum AVB17221ACMPStatusCode : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case success
  case listenerUnknownID
  case talkerUnknownID
  case talkerDestMACFail
  case talkerNoStreamIndex
  case talkerNoBandwidth
  case talkerExclusive
  case listenerTalkerTimeout
  case listenerExclusive
  case stateUnavailable
  case notConnected
  case noSuchConnection
  case unableToSendMessage
  case talkerMisbehaving
  case listenerMisbehaving
  case srpFace
  case controllerNotAuthorized
  case incompatibleRequest
  case notSupported
}
@available(macOS 10.8, *)
struct AVB17221ACMPFlags : OptionSet {
  init(rawValue: UInt16)
  let rawValue: UInt16
  static var classB: AVB17221ACMPFlags { get }
  static var fastConnect: AVB17221ACMPFlags { get }
  static var savedState: AVB17221ACMPFlags { get }
  static var streamingWait: AVB17221ACMPFlags { get }
  static var supportsEncrypted: AVB17221ACMPFlags { get }
  static var encryptedPDU: AVB17221ACMPFlags { get }
  static var streamingTalkerFailed: AVB17221ACMPFlags { get }
}
@available(macOS 10.8, *)
enum AVB17221AEMCommandType : UInt16 {
  init?(rawValue: UInt16)
  var rawValue: UInt16 { get }
  case acquireEntity
  case lockEntity
  case entityAvailable
  case controllerAvailable
  case readDescriptor
  case writeDescriptor
  case setConfiguration
  case getConfiguration
  case setStreamFormat
  case getStreamFormat
  case setVideoFormat
  case getVideoFormat
  case setSensorFormat
  case getSensorFormat
  case setStreamInfo
  case getStreamInfo
  case setName
  case getName
  case setAssociationID
  case getAssociationID
  case setSamplingRate
  case getSamplingRate
  case setClockSource
  case getClockSource
  case setControl
  case getControl
  case incrementControl
  case decrementControl
  case setSignalSelector
  case getSignalSelector
  case setMixer
  case getMixer
  case setMatrix
  case getMatrix
  case startStreaming
  case stopStreaming
  case registerUnsolicitedNotification
  case deregisterUnsolicitedNotification
  case identifyNotification
  case getAVBInfo
  case getASPath
  case getCounters
  case reboot
  case getAudioMap
  case addAudioMapping
  case removeAudioMapping
  case getVideoMap
  case addVideoMapping
  case removeVideoMapping
  case getSensorMap
  case addSensorMapping
  case removeSensorMapping
  case startOperation
  case abortOperation
  case operationStatus
  case authenticateAddKey
  case authenticateDeleteKey
  case authenticateGetKeyList
  case authenticateGetKey
  case authenticateAddKeyToChain
  case authenticateDeleteKeyFromChain
  case authenticateGetKeychainList
  case authenticateGetIdentity
  case authenticateAddToken
  case authenticateDeleteToken
  case authenticate
  case deauthenticate
  case enableTransportSecurity
  case disableTransportSecurity
  case enableStreamEncryption
  case disableStreamEncryption
  case setMemoryObjectLength
  case getMemoryObjectLength
  case setStreamBackup
  case getStreamBackup
}
@available(macOS 10.9, *)
enum AVB17221AECPAddressAccessTLVMode : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case read
  case write
  case execute
}
let AVBErrorDomain: String
let AVBNullEUI64: UInt64
@available(macOS 10.10, *)
class AVBCentralManager : NSObject {
  func startControllerMatching()
  func didAdd(_ interface: AVBInterface)
  func didRemove(_ interface: AVBInterface)
  func streamingEnabledInterfacesOnly() -> Bool
  class func nextAvailableDynamicEntityID() -> UInt64
  class func releaseDynamicEntityID(_ entityID: UInt64)
  class func nextAvailableDynamicEntityModelID() -> UInt64
  class func releaseDynamicEntityModelID(_ entityModelID: UInt64)
}
@available(macOS 10.8, *)
class AVBInterface : NSObject {
  var interfaceName: String { get }
  var entityDiscovery: AVB17221EntityDiscovery? { get }
  var aecp: AVB17221AECPInterface? { get }
  var acmp: AVB17221ACMPInterface? { get }
  class func macAddress(forInterfaceNamed anInterfaceName: String) -> AVBMACAddress?
  class func supportedInterfaces() -> [String]?
  class func isAVBEnabled(onInterfaceNamed anInterfaceName: String) -> Bool
  class func isAVBCapableInterfaceNamed(_ anInterfaceName: String) -> Bool
  init?(interfaceName anInterfaceName: String)
  class func myEntityID() -> UInt64
}
@available(macOS 10.8, *)
class AVBEthernetInterface : AVBInterface {
}
@available(macOS 10.8, *)
class AVBMACAddress : NSObject, NSCopying {
  init(bytes: UnsafePointer<UInt8>)
  var bytes: UnsafePointer<UInt8> { get }
  var dataRepresentation: Data
  var stringRepresentation: String
  var isMulticast: Bool
}
@available(macOS 10.8, *)
class AVB1722ControlInterface : NSObject {
  var interfaceName: String { get }
  weak var interface: @sil_weak AVBInterface? { get }
  @available(macOS 10.9, *)
  init?(interfaceName anInterfaceName: String)
  @available(macOS 10.11, *)
  init?(interface anInterface: AVBInterface)
}
@available(macOS 10.8, *)
class AVB17221AECPMessage : NSObject, NSCopying {
  var messageType: AVB17221AECPMessageType
  var status: AVB17221AECPStatusCode
  @available(macOS 10.9, *)
  var targetEntityID: UInt64
  @available(macOS 10.9, *)
  var controllerEntityID: UInt64
  var sequenceID: UInt16
  @NSCopying var sourceMAC: AVBMACAddress
  class func error(for statusCode: AVB17221AECPStatusCode) -> Error?
  func errorForStatusCode() -> Error?
}
@available(macOS 10.8, *)
class AVB17221AECPAEMMessage : AVB17221AECPMessage {
  var commandType: AVB17221AEMCommandType
  var isUnsolicited: Bool
  @available(macOS 10.9, *)
  var isControllerRequest: Bool
  var commandSpecificData: Data?
  class func command() -> AVB17221AECPAEMMessage
  class func response() -> AVB17221AECPAEMMessage
}
@available(macOS 10.8, *)
class AVB17221AECPAddressAccessMessage : AVB17221AECPMessage {
  var tlvs: [AVB17221AECPAddressAccessTLV]?
  class func command() -> AVB17221AECPAddressAccessMessage
  class func response() -> AVB17221AECPAddressAccessMessage
}
@available(macOS 10.8, *)
class AVB17221AECPAddressAccessTLV : NSObject {
  var mode: AVB17221AECPAddressAccessTLVMode
  var address: UInt64
  var memoryData: Data?
}
@available(macOS 10.8, *)
class AVB17221AECPAVCMessage : AVB17221AECPMessage {
  var commandResponse: Data?
}
@available(macOS 10.8, *)
class AVB17221AECPVendorMessage : AVB17221AECPMessage {
  var protocolID: UInt64
  var protocolSpecificData: Data?
}
protocol AVB17221AECPClient {
  @available(macOS 10.8, *)
  func aecpDidReceiveCommand(_ message: AVB17221AECPMessage, on anInterface: AVB17221AECPInterface) -> Bool
  @available(macOS 10.8, *)
  func aecpDidReceiveResponse(_ message: AVB17221AECPMessage, on anInterface: AVB17221AECPInterface) -> Bool
}
typealias AVB17221AECPInterfaceCompletion = (Error?, AVB17221AECPMessage) -> Void
@available(macOS 10.8, *)
class AVB17221AECPInterface : AVB1722ControlInterface {
  /*not inherited*/ init?(interfaceNamed anInterfaceName: String)
  @available(macOS 10.11, *)
  func setCommandHandler(_ handler: AVB17221AECPClient, forEntityID targetEntityID: UInt64) -> Bool
  @available(macOS 10.11, *)
  func removeCommandHandler(forEntityID targetEntityID: UInt64)
  @available(macOS 10.11, *)
  func setResponseHandler(_ handler: AVB17221AECPClient, forControllerEntityID controllerEntityID: UInt64) -> Bool
  @available(macOS 10.11, *)
  func removeResponseHandler(forControllerEntityID controllerEntityID: UInt64)
  func sendCommand(_ message: AVB17221AECPMessage, to destMAC: AVBMACAddress, completionHandler: @escaping AVB17221AECPInterfaceCompletion) -> Bool
  func sendResponse(_ message: AVB17221AECPMessage, to destMAC: AVBMACAddress) throws
}
@available(macOS 10.8, *)
class AVB17221ACMPMessage : NSObject, NSCopying {
  var messageType: AVB17221ACMPMessageType
  var status: AVB17221ACMPStatusCode
  var streamID: UInt64
  @available(macOS 10.9, *)
  var controllerEntityID: UInt64
  @available(macOS 10.9, *)
  var talkerEntityID: UInt64
  @available(macOS 10.9, *)
  var listenerEntityID: UInt64
  var talkerUniqueID: UInt16
  var listenerUniqueID: UInt16
  @NSCopying var destinationMAC: AVBMACAddress?
  var connectionCount: UInt16
  var sequenceID: UInt16
  var flags: AVB17221ACMPFlags
  var vlanID: UInt16
  @NSCopying var sourceMAC: AVBMACAddress?
  class func error(for statusCode: AVB17221ACMPStatusCode) -> Error?
  func errorForStatusCode() -> Error?
}
typealias AVB17221ACMPInterfaceCompletion = (Error?, AVB17221ACMPMessage) -> Void
protocol AVB17221ACMPClient {
  @available(macOS 10.8, *)
  func acmpDidReceiveCommand(_ message: AVB17221ACMPMessage, on anInterface: AVB17221ACMPInterface) -> Bool
  @available(macOS 10.8, *)
  func acmpDidReceiveResponse(_ message: AVB17221ACMPMessage, on anInterface: AVB17221ACMPInterface) -> Bool
}
@available(macOS 10.8, *)
class AVB17221ACMPInterface : AVB1722ControlInterface {
  @NSCopying var multicastDestinationAddress: AVBMACAddress { get }
  /*not inherited*/ init(interfaceNamed anInterfaceName: String)
  @available(macOS 10.9, *)
  func setHandler(_ handler: AVB17221ACMPClient, forEntityID targetEntityID: UInt64) -> Bool
  @available(macOS 10.9, *)
  func removeHandler(forEntityID targetEntityID: UInt64)
  func sendACMPResponseMessage(_ message: AVB17221ACMPMessage) throws
  func sendACMPCommand(_ message: AVB17221ACMPMessage, completionHandler: @escaping AVB17221ACMPInterfaceCompletion) -> Bool
}
@available(macOS 10.8, *)
struct AVB17221EntityPropertyChanged : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var timeToLive: AVB17221EntityPropertyChanged { get }
  @available(macOS 10.9, *)
  static var entityID: AVB17221EntityPropertyChanged { get }
  static var vendorID: AVB17221EntityPropertyChanged { get }
  static var modelID: AVB17221EntityPropertyChanged { get }
  static var entityCapabilities: AVB17221EntityPropertyChanged { get }
  static var talkerStreamSources: AVB17221EntityPropertyChanged { get }
  static var talkerCapabilities: AVB17221EntityPropertyChanged { get }
  static var listenerStreamSinks: AVB17221EntityPropertyChanged { get }
  static var listenerCapabilities: AVB17221EntityPropertyChanged { get }
  static var controllerCapabilities: AVB17221EntityPropertyChanged { get }
  static var availableIndex: AVB17221EntityPropertyChanged { get }
  @available(macOS 10.9, *)
  static var gptpGrandmasterID: AVB17221EntityPropertyChanged { get }
  static var macAddress: AVB17221EntityPropertyChanged { get }
  static var associationID: AVB17221EntityPropertyChanged { get }
  static var entityType: AVB17221EntityPropertyChanged { get }
  @available(macOS 10.9, *)
  static var identifyControlIndex: AVB17221EntityPropertyChanged { get }
  @available(macOS 10.9, *)
  static var interfaceIndex: AVB17221EntityPropertyChanged { get }
  @available(macOS 10.9, *)
  static var gptpDomainNumber: AVB17221EntityPropertyChanged { get }
}
protocol AVB17221EntityDiscoveryDelegate {
  @available(macOS 10.8, *)
  @asyncHandler func didAddRemoteEntity(_ newEntity: AVB17221Entity, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)
  @available(macOS 10.8, *)
  @asyncHandler func didRemoveRemoteEntity(_ oldEntity: AVB17221Entity, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)
  @available(macOS 10.8, *)
  @asyncHandler func didRediscoverRemoteEntity(_ entity: AVB17221Entity, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)
  @available(macOS 10.8, *)
  @asyncHandler func didUpdateRemoteEntity(_ entity: AVB17221Entity, changedProperties: AVB17221EntityPropertyChanged, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)
  @available(macOS 10.8, *)
  @asyncHandler func didAddLocalEntity(_ newEntity: AVB17221Entity, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)
  @available(macOS 10.8, *)
  @asyncHandler func didRemoveLocalEntity(_ oldEntity: AVB17221Entity, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)
  @available(macOS 10.8, *)
  @asyncHandler func didRediscoverLocalEntity(_ entity: AVB17221Entity, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)
  @available(macOS 10.8, *)
  @asyncHandler func didUpdateLocalEntity(_ entity: AVB17221Entity, changedProperties: AVB17221EntityPropertyChanged, on17221EntityDiscovery entityDiscovery: AVB17221EntityDiscovery)
}
@available(macOS 10.8, *)
class AVB17221EntityDiscovery : NSObject {
  var interfaceName: String
  weak var interface: @sil_weak AVBInterface? { get }
  weak var discoveryDelegate: @sil_weak AVB17221EntityDiscoveryDelegate?
  init(interfaceName anInterfaceName: String)
  func primeIterators()
  func discoverEntities() -> Bool
  func discoverEntity(_ entityID: UInt64) -> Bool
  func addLocalEntity(_ anEntity: AVB17221Entity) throws
  func removeLocalEntity(_ guid: UInt64) throws
  @available(macOS 10.9, *)
  func changeEntity(withEntityID entityID: UInt64, toNewGPTPGrandmasterID gPTPGrandmasterID: UInt64) throws
}
@available(macOS 10.8, *)
class AVB17221Entity : NSObject {
  var isLocalEntity: Bool
  var timeToLive: UInt8
  @available(macOS 10.9, *)
  var entityID: UInt64
  @available(macOS 10.9, *)
  var entityModelID: UInt64
  var entityCapabilities: AVB17221ADPEntityCapabilities
  var talkerStreamSources: UInt16
  var talkerCapabilities: AVB17221ADPTalkerCapabilities
  var listenerStreamSinks: UInt16
  var listenerCapabilities: AVB17221ADPListenerCapabilities
  var controllerCapabilities: AVB17221ADPControllerCapabilities
  var availableIndex: UInt32
  @available(macOS 10.9, *)
  var gPTPGrandmasterID: UInt64
  @available(macOS 10.9, *)
  var gPTPDomainNumber: UInt8
  @available(macOS 10.9, *)
  var identifyControlIndex: UInt16
  @available(macOS 10.9, *)
  var interfaceIndex: UInt16
  var associationID: UInt64
  var macAddresses: [AVBMACAddress]
  weak var entityDiscovery: @sil_weak AVB17221EntityDiscovery?
}
