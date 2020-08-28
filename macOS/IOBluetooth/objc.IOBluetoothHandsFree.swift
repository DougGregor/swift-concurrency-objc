
enum IOBluetoothHandsFreeDeviceFeatures : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case none
  case ecAndOrNRFunction
  case threeWayCalling
  case cliPresentation
  case voiceRecognition
  case remoteVolumeControl
  case enhancedCallStatus
  case enhancedCallControl
  case codecNegotiation
}
enum IOBluetoothHandsFreeAudioGatewayFeatures : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case none
  case threeWayCalling
  case ecAndOrNRFunction
  case voiceRecognition
  case inBandRingTone
  case attachedNumberToVoiceTag
  case rejectCallCapability
  case enhancedCallStatus
  case enhancedCallControl
  case extendedErrorResultCodes
  case codecNegotiation
}
enum IOBluetoothHandsFreeCallHoldModes : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case mode0
  case mode1
  case mode1idx
  case mode2
  case mode2idx
  case mode3
  case mode4
}
enum IOBluetoothHandsFreeCodecID : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case IDCVSD
  case iDmSBC
  case IDAACELD
}
let IOBluetoothHandsFreeIndicatorService: String
let IOBluetoothHandsFreeIndicatorCall: String
let IOBluetoothHandsFreeIndicatorCallSetup: String
let IOBluetoothHandsFreeIndicatorCallHeld: String
let IOBluetoothHandsFreeIndicatorSignal: String
let IOBluetoothHandsFreeIndicatorRoam: String
let IOBluetoothHandsFreeIndicatorBattChg: String
let IOBluetoothHandsFreeCallIndex: String
let IOBluetoothHandsFreeCallDirection: String
let IOBluetoothHandsFreeCallStatus: String
let IOBluetoothHandsFreeCallMode: String
let IOBluetoothHandsFreeCallMultiparty: String
let IOBluetoothHandsFreeCallNumber: String
let IOBluetoothHandsFreeCallType: String
let IOBluetoothHandsFreeCallName: String
enum IOBluetoothSMSMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case PDU
  case text
}
enum IOBluetoothHandsFreeSMSSupport : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case phase2SMSSupport
  case phase2pSMSSupport
  case manufactureSpecificSMSSupport
}
enum IOBluetoothHandsFreePDUMessageStatus : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case statusRecUnread
  case statusRecRead
  case statusStoUnsent
  case statusStoSent
  case statusAll
}
let IOBluetoothPDUServicCenterAddress: String
let IOBluetoothPDUServiceCenterAddressType: String
let IOBluetoothPDUType: String
let IOBluetoothPDUOriginatingAddress: String
let IOBluetoothPDUOriginatingAddressType: String
let IOBluetoothPDUProtocolID: String
let IOBluetoothPDUTimestamp: String
let IOBluetoothPDUEncoding: String
let IOBluetoothPDUUserData: String
@available(macOS 10.7, *)
class IOBluetoothHandsFree : NSObject {
  @available(macOS 10.7, *)
  var supportedFeatures: UInt32
  @available(macOS 10.7, *)
  var inputVolume: Float
  @available(macOS 10.7, *)
  var isInputMuted: Bool
  @available(macOS 10.7, *)
  var outputVolume: Float
  @available(macOS 10.7, *)
  var isOutputMuted: Bool
  @available(macOS 10.7, *)
  var device: IOBluetoothDevice! { get }
  @available(macOS 10.7, *)
  var deviceSupportedFeatures: UInt32 { get }
  @available(macOS 10.7, *)
  var deviceSupportedSMSServices: UInt32 { get }
  @available(macOS 10.7, *)
  var deviceCallHoldModes: UInt32 { get }
  @available(macOS 10.7, *)
  var smsMode: IOBluetoothSMSMode { get }
  @available(macOS 10.7, *)
  var isSMSEnabled: Bool { get }
  @available(macOS 10.7, *)
  unowned(unsafe) var delegate: @sil_unmanaged IOBluetoothHandsFreeDelegate!
  @available(macOS 10.7, *)
  func indicator(_ indicatorName: String!) -> Int32
  @available(macOS 10.7, *)
  func setIndicator(_ indicatorName: String!, value indicatorValue: Int32)
  @available(macOS 10.7, *)
  init!(device: IOBluetoothDevice!, delegate inDelegate: IOBluetoothHandsFreeDelegate!)
  @available(macOS 10.7, *)
  func connect()
  @available(macOS 10.7, *)
  func disconnect()
  @available(macOS 10.7, *)
  var isConnected: Bool { get }
  @available(macOS 10.7, *)
  func connectSCO()
  @available(macOS 10.7, *)
  func disconnectSCO()
  @available(macOS 10.7, *)
  func isSCOConnected() -> Bool
}
protocol IOBluetoothHandsFreeDelegate : NSObjectProtocol {
  @available(macOS 10.7, *)
  optional func handsFree(_ device: IOBluetoothHandsFree!, connected status: NSNumber!)
  @available(macOS 10.7, *)
  optional func handsFree(_ device: IOBluetoothHandsFree!, disconnected status: NSNumber!)
  @available(macOS 10.7, *)
  optional func handsFree(_ device: IOBluetoothHandsFree!, scoConnectionOpened status: NSNumber!)
  @available(macOS 10.7, *)
  optional func handsFree(_ device: IOBluetoothHandsFree!, scoConnectionClosed status: NSNumber!)
}
extension IOBluetoothDevice {
  @available(macOS 10.7, *)
  func handsFreeAudioGatewayServiceRecord() -> IOBluetoothSDPServiceRecord!
  @available(macOS 10.7, *)
  var isHandsFreeAudioGateway: Bool { get }
  @available(macOS 10.7, *)
  func handsFreeDeviceServiceRecord() -> IOBluetoothSDPServiceRecord!
  @available(macOS 10.7, *)
  var isHandsFreeDevice: Bool { get }
}
extension IOBluetoothSDPServiceRecord {
  @available(macOS 10.7, *)
  func handsFreeSupportedFeatures() -> UInt16
}
