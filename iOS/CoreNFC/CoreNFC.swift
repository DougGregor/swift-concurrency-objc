
@available(iOS 11.0, *)
let NFCErrorDomain: String
@available(iOS 11.0, *)
struct NFCReaderError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  @available(iOS 11.0, *)
  static var readerErrorUnsupportedFeature: NFCReaderError.Code { get }
  @available(iOS 11.0, *)
  static var readerErrorSecurityViolation: NFCReaderError.Code { get }
  @available(iOS 13.0, *)
  static var readerErrorInvalidParameter: NFCReaderError.Code { get }
  @available(iOS 13.0, *)
  static var readerErrorInvalidParameterLength: NFCReaderError.Code { get }
  @available(iOS 13.0, *)
  static var readerErrorParameterOutOfBound: NFCReaderError.Code { get }
  @available(iOS 14.0, *)
  static var readerErrorRadioDisabled: NFCReaderError.Code { get }
  @available(iOS 11.0, *)
  static var readerTransceiveErrorTagConnectionLost: NFCReaderError.Code { get }
  @available(iOS 11.0, *)
  static var readerTransceiveErrorRetryExceeded: NFCReaderError.Code { get }
  @available(iOS 11.0, *)
  static var readerTransceiveErrorTagResponseError: NFCReaderError.Code { get }
  @available(iOS 13.0, *)
  static var readerTransceiveErrorSessionInvalidated: NFCReaderError.Code { get }
  @available(iOS 13.0, *)
  static var readerTransceiveErrorTagNotConnected: NFCReaderError.Code { get }
  @available(iOS 14.0, *)
  static var readerTransceiveErrorPacketTooLong: NFCReaderError.Code { get }
  @available(iOS 11.0, *)
  static var readerSessionInvalidationErrorUserCanceled: NFCReaderError.Code { get }
  @available(iOS 11.0, *)
  static var readerSessionInvalidationErrorSessionTimeout: NFCReaderError.Code { get }
  @available(iOS 11.0, *)
  static var readerSessionInvalidationErrorSessionTerminatedUnexpectedly: NFCReaderError.Code { get }
  @available(iOS 11.0, *)
  static var readerSessionInvalidationErrorSystemIsBusy: NFCReaderError.Code { get }
  @available(iOS 11.0, *)
  static var readerSessionInvalidationErrorFirstNDEFTagRead: NFCReaderError.Code { get }
  @available(iOS 11.0, *)
  static var tagCommandConfigurationErrorInvalidParameters: NFCReaderError.Code { get }
  @available(iOS 13.0, *)
  static var ndefReaderSessionErrorTagNotWritable: NFCReaderError.Code { get }
  @available(iOS 13.0, *)
  static var ndefReaderSessionErrorTagUpdateFailure: NFCReaderError.Code { get }
  @available(iOS 13.0, *)
  static var ndefReaderSessionErrorTagSizeTooSmall: NFCReaderError.Code { get }
  @available(iOS 13.0, *)
  static var ndefReaderSessionErrorZeroLengthMessage: NFCReaderError.Code { get }
}
@available(iOS 11.0, *)
let NFCISO15693TagResponseErrorKey: String
@available(iOS 13.0, *)
let NFCTagResponseUnexpectedLengthErrorKey: String
@available(iOS 11.0, *)
protocol NFCReaderSessionProtocol : NSObjectProtocol {
  @available(iOS 11.0, *)
  var isReady: Bool { get }
  @available(iOS 11.0, *)
  var alertMessage: String { get set }
  @available(iOS 11.0, *)
  func begin()
  @available(iOS 11.0, *)
  func invalidate()
  @available(iOS 13.0, *)
  func invalidate(errorMessage: String)
}
@available(iOS 11.0, *)
protocol __NFCReaderSessionDelegate : NSObjectProtocol {
  @available(iOS 11.0, *)
  func readerSessionDidBecomeActive(_ session: NFCReaderSession)
  @available(iOS 11.0, *)
  func readerSession(_ session: NFCReaderSession, didInvalidateWithError error: Error)
  @available(iOS 11.0, *)
  optional func readerSession(_ session: NFCReaderSession, didDetect tags: [__NFCTag])
}
@available(iOS 11.0, *)
class NFCReaderSession : NSObject, NFCReaderSessionProtocol {
  @available(iOS 11.0, *)
  weak var delegate: @sil_weak AnyObject? { get }
  @available(iOS 11.0, *)
  class var readingAvailable: Bool { get }
  @available(iOS 11.0, *)
  var sessionQueue: DispatchQueue { get }
}
@available(iOS 11.0, *)
enum __NFCTagType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(iOS 11.0, *)
  case ISO15693
  @available(iOS 13.0, *)
  case feliCa
  @available(iOS 13.0, *)
  case iso7816Compatible
  @available(iOS 13.0, *)
  case miFare
}
@available(iOS 11.0, *)
protocol __NFCTag : NSCopying, NSSecureCoding, NSObjectProtocol {
  @available(iOS 11.0, *)
  var type: __NFCTagType { get }
  @available(iOS 11.0, *)
  weak var session: @sil_weak NFCReaderSessionProtocol? { get }
  @available(iOS 11.0, *)
  var isAvailable: Bool { get }
  @available(iOS 13.0, *)
  func asNFCISO15693Tag() -> NFCISO15693Tag?
  @available(iOS 13.0, *)
  func asNFCISO7816Tag() -> NFCISO7816Tag?
  @available(iOS 13.0, *)
  func asNFCFeliCaTag() -> NFCFeliCaTag?
  @available(iOS 13.0, *)
  func asNFCMiFareTag() -> NFCMiFareTag?
}
@available(iOS 11.0, *)
class NFCTagCommandConfiguration : NSObject, NSCopying {
  @available(iOS 11.0, *)
  var maximumRetries: Int
  @available(iOS 11.0, *)
  var retryInterval: TimeInterval
}
@available(iOS 13.0, *)
protocol __NFCTagReaderSessionDelegate : NSObjectProtocol {
  @available(iOS 13.0, *)
  func tagReaderSession(_ session: NFCTagReaderSession, didInvalidateWithError error: Error)
  @available(iOS 13.0, *)
  optional func tagReaderSessionDidBecomeActive(_ session: NFCTagReaderSession)
  @available(iOS 13.0, *)
  optional func tagReaderSession(_ session: NFCTagReaderSession, didDetect tags: [__NFCTag])
}
@available(iOS 13.0, *)
class NFCTagReaderSession : NFCReaderSession {
  @available(iOS 13.0, *)
  var __connectedTag: __NFCTag? { get }
  @available(iOS 13.0, *)
  init(__pollingOption pollingOption: NFCTagReaderSession.PollingOption, delegate: __NFCTagReaderSessionDelegate, queue: DispatchQueue?)
  @available(iOS 13.0, *)
  func restartPolling()
  @available(iOS 13.0, *)
  func __connect(to tag: __NFCTag, completionHandler: @escaping (Error?) -> Void)
  @available(iOS 13.0, *)
  func __connect(to tag: __NFCTag) async throws
}

@available(iOS 13.0, *)
extension NFCTagReaderSession {
  @available(iOS 13.0, *)
  var connectedTag: NFCTag? { get }
  @available(iOS 13.0, *)
  convenience init?(pollingOption: NFCTagReaderSession.PollingOption, delegate: NFCTagReaderSessionDelegate, queue: DispatchQueue? = nil)
  @available(iOS 13.0, *)
  func connect(to tag: NFCTag, completionHandler: @escaping (Error?) -> Void)
}
extension NFCTagReaderSession {
  struct PollingOption : OptionSet {
    init(rawValue: Int)
    let rawValue: Int
    @available(iOS 13.0, *)
    static var iso14443: NFCTagReaderSession.PollingOption { get }
    @available(iOS 13.0, *)
    static var iso15693: NFCTagReaderSession.PollingOption { get }
    @available(iOS 13.0, *)
    static var iso18092: NFCTagReaderSession.PollingOption { get }
  }
}
@available(iOS 11.0, *)
protocol NFCNDEFReaderSessionDelegate : NSObjectProtocol {
  @available(iOS 11.0, *)
  func readerSession(_ session: NFCNDEFReaderSession, didInvalidateWithError error: Error)
  @available(iOS 11.0, *)
  func readerSession(_ session: NFCNDEFReaderSession, didDetectNDEFs messages: [NFCNDEFMessage])
  @available(iOS 13.0, *)
  optional func readerSession(_ session: NFCNDEFReaderSession, didDetect tags: [NFCNDEFTag])
  @available(iOS 13.0, *)
  optional func readerSessionDidBecomeActive(_ session: NFCNDEFReaderSession)
}
@available(iOS 11.0, *)
class NFCNDEFReaderSession : NFCReaderSession {
  @available(iOS 11.0, *)
  init(delegate: NFCNDEFReaderSessionDelegate, queue: DispatchQueue?, invalidateAfterFirstRead: Bool)
  @available(iOS 13.0, *)
  func restartPolling()
  @available(iOS 13.0, *)
  func connect(to tag: NFCNDEFTag, completionHandler: @escaping (Error?) -> Void)
  @available(iOS 13.0, *)
  func connect(to tag: NFCNDEFTag) async throws
}
extension NSUserActivity {
  @available(iOS 12.0, *)
  var ndefMessagePayload: NFCNDEFMessage { get }
}
@available(iOS 14.0, *)
struct NFCISO15693RequestFlag : OptionSet {
  init(rawValue: UInt8)
  let rawValue: UInt8
  @available(iOS 11.0, *)
  static var dualSubCarriers: NFCISO15693RequestFlag { get }
  @available(iOS 11.0, *)
  static var highDataRate: NFCISO15693RequestFlag { get }
  @available(iOS 11.0, *)
  static var protocolExtension: NFCISO15693RequestFlag { get }
  @available(iOS 11.0, *)
  static var select: NFCISO15693RequestFlag { get }
  @available(iOS 11.0, *)
  static var address: NFCISO15693RequestFlag { get }
  @available(iOS 11.0, *)
  static var option: NFCISO15693RequestFlag { get }
  @available(iOS 14.0, *)
  static var commandSpecificBit8: NFCISO15693RequestFlag { get }
  @available(iOS, introduced: 11.0, deprecated: 14.0, renamed: "NFCISO15693RequestFlag.dualSubCarriers")
  static var RequestFlagDualSubCarriers: NFCISO15693RequestFlag { get }
  @available(iOS, introduced: 11.0, deprecated: 14.0, renamed: "NFCISO15693RequestFlag.highDataRate")
  static var RequestFlagHighDataRate: NFCISO15693RequestFlag { get }
  @available(iOS, introduced: 11.0, deprecated: 14.0, renamed: "NFCISO15693RequestFlag.protocolExtension")
  static var RequestFlagProtocolExtension: NFCISO15693RequestFlag { get }
  @available(iOS, introduced: 11.0, deprecated: 14.0, renamed: "NFCISO15693RequestFlag.select")
  static var RequestFlagSelect: NFCISO15693RequestFlag { get }
  @available(iOS, introduced: 11.0, deprecated: 14.0, renamed: "NFCISO15693RequestFlag.address")
  static var RequestFlagAddress: NFCISO15693RequestFlag { get }
  @available(iOS, introduced: 11.0, deprecated: 14.0, renamed: "NFCISO15693RequestFlag.option")
  static var RequestFlagOption: NFCISO15693RequestFlag { get }
}
@available(iOS 11.0, *)
typealias RequestFlag = NFCISO15693RequestFlag
@available(iOS 14.0, *)
struct NFCISO15693ResponseFlag : OptionSet {
  init(rawValue: UInt8)
  let rawValue: UInt8
  @available(iOS 14.0, *)
  static var error: NFCISO15693ResponseFlag { get }
  @available(iOS 14.0, *)
  static var responseBufferValid: NFCISO15693ResponseFlag { get }
  @available(iOS 14.0, *)
  static var finalResponse: NFCISO15693ResponseFlag { get }
  @available(iOS 14.0, *)
  static var protocolExtension: NFCISO15693ResponseFlag { get }
  @available(iOS 14.0, *)
  static var blockSecurityStatusBit5: NFCISO15693ResponseFlag { get }
  @available(iOS 14.0, *)
  static var blockSecurityStatusBit6: NFCISO15693ResponseFlag { get }
  @available(iOS 14.0, *)
  static var waitTimeExtension: NFCISO15693ResponseFlag { get }
}
@available(iOS 11.0, *)
class NFCISO15693CustomCommandConfiguration : NFCTagCommandConfiguration {
  @available(iOS 11.0, *)
  var manufacturerCode: Int
  @available(iOS 11.0, *)
  var customCommandCode: Int
  @available(iOS 11.0, *)
  var requestParameters: Data
  @available(iOS 11.0, *)
  init(manufacturerCode: Int, customCommandCode: Int, requestParameters: Data?)
  @available(iOS 11.0, *)
  init(manufacturerCode: Int, customCommandCode: Int, requestParameters: Data?, maximumRetries: Int, retryInterval: TimeInterval)
}
@available(iOS 11.0, *)
class NFCISO15693ReadMultipleBlocksConfiguration : NFCTagCommandConfiguration {
  @available(iOS 11.0, *)
  var range: NSRange
  @available(iOS 11.0, *)
  var chunkSize: Int
  @available(iOS 11.0, *)
  init(range: NSRange, chunkSize: Int)
  @available(iOS 11.0, *)
  init(range: NSRange, chunkSize: Int, maximumRetries: Int, retryInterval: TimeInterval)
}
@available(iOS 11.0, *)
protocol NFCISO15693Tag : NFCNDEFTag, __NFCTag {
  @available(iOS 11.0, *)
  var identifier: Data { get }
  @available(iOS 11.0, *)
  var icManufacturerCode: Int { get }
  @available(iOS 11.0, *)
  var icSerialNumber: Data { get }
  @available(iOS 11.0, *)
  func sendCustomCommand(commandConfiguration: NFCISO15693CustomCommandConfiguration, completionHandler: @escaping (Data, Error?) -> Void)
  @available(iOS 11.0, *)
  func sendCustomCommand(commandConfiguration: NFCISO15693CustomCommandConfiguration) async throws -> Data
  @available(iOS 11.0, *)
  func readMultipleBlock(readConfiguration: NFCISO15693ReadMultipleBlocksConfiguration, completionHandler: @escaping (Data, Error?) -> Void)
  @available(iOS 11.0, *)
  func readMultipleBlock(readConfiguration: NFCISO15693ReadMultipleBlocksConfiguration) async throws -> Data
  @available(iOS 13.0, *)
  func stayQuiet(completionHandler: @escaping (Error?) -> Void)
  @available(iOS 13.0, *)
  func stayQuiet() async throws
  @available(iOS 13.0, *)
  func readSingleBlock(requestFlags flags: NFCISO15693RequestFlag, blockNumber: UInt8, completionHandler: @escaping (Data, Error?) -> Void)
  @available(iOS 13.0, *)
  func readSingleBlock(requestFlags flags: NFCISO15693RequestFlag, blockNumber: UInt8) async throws -> Data
  @available(iOS 13.0, *)
  func writeSingleBlock(requestFlags flags: NFCISO15693RequestFlag, blockNumber: UInt8, dataBlock: Data, completionHandler: @escaping (Error?) -> Void)
  @available(iOS 13.0, *)
  func writeSingleBlock(requestFlags flags: NFCISO15693RequestFlag, blockNumber: UInt8, dataBlock: Data) async throws
  @available(iOS 13.0, *)
  func lockBlock(requestFlags flags: NFCISO15693RequestFlag, blockNumber: UInt8, completionHandler: @escaping (Error?) -> Void)
  @available(iOS 13.0, *)
  func lockBlock(requestFlags flags: NFCISO15693RequestFlag, blockNumber: UInt8) async throws
  @available(iOS 13.0, *)
  func readMultipleBlocks(requestFlags flags: NFCISO15693RequestFlag, blockRange: NSRange, completionHandler: @escaping ([Data], Error?) -> Void)
  @available(iOS 13.0, *)
  func readMultipleBlocks(requestFlags flags: NFCISO15693RequestFlag, blockRange: NSRange) async throws -> [Data]
  @available(iOS 13.0, *)
  func writeMultipleBlocks(requestFlags flags: NFCISO15693RequestFlag, blockRange: NSRange, dataBlocks: [Data], completionHandler: @escaping (Error?) -> Void)
  @available(iOS 13.0, *)
  func writeMultipleBlocks(requestFlags flags: NFCISO15693RequestFlag, blockRange: NSRange, dataBlocks: [Data]) async throws
  @available(iOS 13.0, *)
  func select(requestFlags flags: NFCISO15693RequestFlag, completionHandler: @escaping (Error?) -> Void)
  @available(iOS 13.0, *)
  func select(requestFlags flags: NFCISO15693RequestFlag) async throws
  @available(iOS 13.0, *)
  func resetToReady(requestFlags flags: NFCISO15693RequestFlag, completionHandler: @escaping (Error?) -> Void)
  @available(iOS 13.0, *)
  func resetToReady(requestFlags flags: NFCISO15693RequestFlag) async throws
  @available(iOS 13.0, *)
  func writeAFI(requestFlags flags: NFCISO15693RequestFlag, afi: UInt8, completionHandler: @escaping (Error?) -> Void)
  @available(iOS 13.0, *)
  func writeAFI(requestFlags flags: NFCISO15693RequestFlag, afi: UInt8) async throws
  @available(iOS 13.0, *)
  func lockAFI(requestFlags flags: NFCISO15693RequestFlag, completionHandler: @escaping (Error?) -> Void)
  @available(iOS 13.0, *)
  func lockAFI(requestFlags flags: NFCISO15693RequestFlag) async throws
  @available(iOS 13.0, *)
  func writeDSFID(requestFlags flags: NFCISO15693RequestFlag, dsfid: UInt8, completionHandler: @escaping (Error?) -> Void)
  @available(iOS 13.0, *)
  func writeDSFID(requestFlags flags: NFCISO15693RequestFlag, dsfid: UInt8) async throws
  @available(iOS, introduced: 13.0, deprecated: 14.0)
  func lockDFSID(requestFlags flags: NFCISO15693RequestFlag, completionHandler: @escaping (Error?) -> Void)
  @available(iOS, introduced: 13.0, deprecated: 14.0)
  func lockDFSID(requestFlags flags: NFCISO15693RequestFlag) async throws
  @available(iOS 14.0, *)
  func lockDSFID(requestFlags flags: NFCISO15693RequestFlag, completionHandler: @escaping (Error?) -> Void)
  @available(iOS 14.0, *)
  func lockDSFID(requestFlags flags: NFCISO15693RequestFlag) async throws
  @available(iOS, introduced: 13.0, deprecated: 14.0)
  func getSystemInfo(requestFlags flags: NFCISO15693RequestFlag, completionHandler: @escaping (Int, Int, Int, Int, Int, Error?) -> Void)
  @available(iOS, introduced: 13.0, deprecated: 14.0)
  func getSystemInfo(requestFlags flags: NFCISO15693RequestFlag) async throws -> (Int, Int, Int, Int, Int)
  @available(iOS 14.0, *)
  func __getSystemInfoAndUID(with flags: NFCISO15693RequestFlag, completionHandler: @escaping (Data?, Int, Int, Int, Int, Int, Error?) -> Void)
  @available(iOS 14.0, *)
  func __systemInfoAndUID(with flags: NFCISO15693RequestFlag) async throws -> (Data, Int, Int, Int, Int, Int)
  @available(iOS 13.0, *)
  func getMultipleBlockSecurityStatus(requestFlags flags: NFCISO15693RequestFlag, blockRange: NSRange, completionHandler: @escaping ([NSNumber], Error?) -> Void)
  @available(iOS 13.0, *)
  func getMultipleBlockSecurityStatus(requestFlags flags: NFCISO15693RequestFlag, blockRange: NSRange) async throws -> [NSNumber]
  @available(iOS 14.0, *)
  func __fastReadMultipleBlocks(with flags: NFCISO15693RequestFlag, blockRange: NSRange, completionHandler: @escaping ([Data], Error?) -> Void)
  @available(iOS 14.0, *)
  func __fastReadMultipleBlocks(with flags: NFCISO15693RequestFlag, blockRange: NSRange) async throws -> [Data]
  @available(iOS 13.0, *)
  func customCommand(requestFlags flags: NFCISO15693RequestFlag, customCommandCode: Int, customRequestParameters: Data, completionHandler: @escaping (Data, Error?) -> Void)
  @available(iOS 13.0, *)
  func customCommand(requestFlags flags: NFCISO15693RequestFlag, customCommandCode: Int, customRequestParameters: Data) async throws -> Data
  @available(iOS 13.0, *)
  func extendedReadSingleBlock(requestFlags flags: NFCISO15693RequestFlag, blockNumber: Int, completionHandler: @escaping (Data, Error?) -> Void)
  @available(iOS 13.0, *)
  func extendedReadSingleBlock(requestFlags flags: NFCISO15693RequestFlag, blockNumber: Int) async throws -> Data
  @available(iOS 13.0, *)
  func extendedWriteSingleBlock(requestFlags flags: NFCISO15693RequestFlag, blockNumber: Int, dataBlock: Data, completionHandler: @escaping (Error?) -> Void)
  @available(iOS 13.0, *)
  func extendedWriteSingleBlock(requestFlags flags: NFCISO15693RequestFlag, blockNumber: Int, dataBlock: Data) async throws
  @available(iOS 13.0, *)
  func extendedLockBlock(requestFlags flags: NFCISO15693RequestFlag, blockNumber: Int, completionHandler: @escaping (Error?) -> Void)
  @available(iOS 13.0, *)
  func extendedLockBlock(requestFlags flags: NFCISO15693RequestFlag, blockNumber: Int) async throws
  @available(iOS 13.0, *)
  func extendedReadMultipleBlocks(requestFlags flags: NFCISO15693RequestFlag, blockRange: NSRange, completionHandler: @escaping ([Data], Error?) -> Void)
  @available(iOS 13.0, *)
  func extendedReadMultipleBlocks(requestFlags flags: NFCISO15693RequestFlag, blockRange: NSRange) async throws -> [Data]
  @available(iOS 14.0, *)
  func __extendedWriteMultipleBlocks(withRequestFlags flags: NFCISO15693RequestFlag, blockRange: NSRange, dataBlocks: [Data], completionHandler: @escaping (Error?) -> Void)
  @available(iOS 14.0, *)
  func __extendedWriteMultipleBlocks(withRequestFlags flags: NFCISO15693RequestFlag, blockRange: NSRange, dataBlocks: [Data]) async throws
  @available(iOS 14.0, *)
  func __authenticate(withRequestFlags flags: NFCISO15693RequestFlag, cryptoSuiteIdentifier: Int, message: Data, completionHandler: @escaping (NFCISO15693ResponseFlag, Data, Error?) -> Void)
  @available(iOS 14.0, *)
  func __authenticate(withRequestFlags flags: NFCISO15693RequestFlag, cryptoSuiteIdentifier: Int, message: Data) async throws -> (NFCISO15693ResponseFlag, Data)
  @available(iOS 14.0, *)
  func __keyUpdate(withRequestFlags flags: NFCISO15693RequestFlag, keyIdentifier: Int, message: Data, completionHandler: @escaping (NFCISO15693ResponseFlag, Data, Error?) -> Void)
  @available(iOS 14.0, *)
  func __keyUpdate(withRequestFlags flags: NFCISO15693RequestFlag, keyIdentifier: Int, message: Data) async throws -> (NFCISO15693ResponseFlag, Data)
  @available(iOS 14.0, *)
  func __challenge(withRequestFlags flags: NFCISO15693RequestFlag, cryptoSuiteIdentifier: Int, message: Data, completionHandler: @escaping (Error?) -> Void)
  @available(iOS 14.0, *)
  func __challenge(withRequestFlags flags: NFCISO15693RequestFlag, cryptoSuiteIdentifier: Int, message: Data) async throws
  @available(iOS 14.0, *)
  func __readBuffer(withRequestFlags flags: NFCISO15693RequestFlag, completionHandler: @escaping (NFCISO15693ResponseFlag, Data, Error?) -> Void)
  @available(iOS 14.0, *)
  func __readBuffer(withRequestFlags flags: NFCISO15693RequestFlag) async throws -> (NFCISO15693ResponseFlag, Data)
  @available(iOS 14.0, *)
  func __extendedGetMultipleBlockSecurityStatus(with flags: NFCISO15693RequestFlag, blockRange: NSRange, completionHandler: @escaping ([NSNumber], Error?) -> Void)
  @available(iOS 14.0, *)
  func __extendedGetMultipleBlockSecurityStatus(with flags: NFCISO15693RequestFlag, blockRange: NSRange) async throws -> [NSNumber]
  @available(iOS 14.0, *)
  func __extendedFastReadMultipleBlocks(with flags: NFCISO15693RequestFlag, blockRange: NSRange, completionHandler: @escaping ([Data], Error?) -> Void)
  @available(iOS 14.0, *)
  func __extendedFastReadMultipleBlocks(with flags: NFCISO15693RequestFlag, blockRange: NSRange) async throws -> [Data]
  @available(iOS 14.0, *)
  func __sendRequest(withFlag flags: Int, commandCode: Int, data: Data?, completionHandler: @escaping (NFCISO15693ResponseFlag, Data?, Error?) -> Void)
  @available(iOS 14.0, *)
  func __sendRequest(withFlag flags: Int, commandCode: Int, data: Data?) async throws -> (NFCISO15693ResponseFlag, Data)
}

@available(iOS 11.0, *)
extension NFCISO15693Tag {
  @available(iOS 14.0, *)
  func readSingleBlock(requestFlags flags: NFCISO15693RequestFlag, blockNumber: UInt8, resultHandler: @escaping (Result<Data, Error>) -> Void)
  @available(iOS 14.0, *)
  func readMultipleBlocks(requestFlags flags: NFCISO15693RequestFlag, blockRange: NSRange, resultHandler: @escaping (Result<[Data], Error>) -> Void)
  @available(iOS 14.0, *)
  func getSystemInfo(requestFlags flags: NFCISO15693RequestFlag, resultHandler: @escaping (Result<NFCISO15693SystemInfo, Error>) -> Void)
  @available(iOS 14.0, *)
  func fastReadMultipleBlocks(requestFlags flags: NFCISO15693RequestFlag, blockRange: NSRange, resultHandler: @escaping (Result<[Data], Error>) -> Void)
  @available(iOS 14.0, *)
  func customCommand(requestFlags flags: NFCISO15693RequestFlag, customCommandCode: Int, customRequestParameters: Data, resultHandler: @escaping (Result<Data, Error>) -> Void)
  @available(iOS 14.0, *)
  func extendedReadSingleBlock(requestFlags flags: NFCISO15693RequestFlag, blockNumber: Int, resultHandler: @escaping (Result<Data, Error>) -> Void)
  @available(iOS 14.0, *)
  func extendedWriteMultipleBlocks(requestFlags flags: NFCISO15693RequestFlag, blockRange: NSRange, dataBlocks: [Data], completionHandler: @escaping (Error?) -> Void)
  @available(iOS 14.0, *)
  func authenticate(requestFlags flags: NFCISO15693RequestFlag, cryptoSuiteIdentifier: Int, message: Data, resultHandler: @escaping (Result<(NFCISO15693ResponseFlag, Data), Error>) -> Void)
  @available(iOS 14.0, *)
  func keyUpdate(requestFlags flags: NFCISO15693RequestFlag, keyIdentifier: Int, message: Data, resultHandler: @escaping (Result<(NFCISO15693ResponseFlag, Data), Error>) -> Void)
  @available(iOS 14.0, *)
  func challenge(requestFlags flags: NFCISO15693RequestFlag, cryptoSuiteIdentifier: Int, message: Data, completionHandler: @escaping (Error?) -> Void)
  @available(iOS 14.0, *)
  func readBuffer(requestFlags flags: NFCISO15693RequestFlag, resultHandler: @escaping (Result<(NFCISO15693ResponseFlag, Data), Error>) -> Void)
  @available(iOS 14.0, *)
  func extendedGetMultipleBlockSecurityStatus(requestFlags flags: NFCISO15693RequestFlag, blockRange: NSRange, resultHandler: @escaping (Result<NFCISO15693MultipleBlockSecurityStatus, Error>) -> Void)
  @available(iOS 14.0, *)
  func extendedFastReadMultipleBlocks(requestFlags flags: NFCISO15693RequestFlag, blockRange: NSRange, resultHandler: @escaping (Result<[Data], Error>) -> Void)
  @available(iOS 14.0, *)
  func sendRequest(requestFlags flags: Int, commandCode: Int, data: Data?, resultHandler: @escaping (Result<(NFCISO15693ResponseFlag, Data?), Error>) -> Void)
}
@available(iOS 11.0, *)
class __NFCISO15693ReaderSession : NFCReaderSession {
  init(delegate: __NFCReaderSessionDelegate, queue: DispatchQueue?)
  func restartPolling()
}
@available(iOS 13.0, *)
enum NFCNDEFStatus : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(iOS 13.0, *)
  case notSupported
  @available(iOS 13.0, *)
  case readWrite
  @available(iOS 13.0, *)
  case readOnly
}
@available(iOS 13.0, *)
protocol NFCNDEFTag : NSCopying, NSSecureCoding, NSObjectProtocol {
  @available(iOS 13.0, *)
  var isAvailable: Bool { get }
  @available(iOS 13.0, *)
  func queryNDEFStatus(completionHandler: @escaping (NFCNDEFStatus, Int, Error?) -> Void)
  @available(iOS 13.0, *)
  func queryNDEFStatus() async throws -> (NFCNDEFStatus, Int)
  @available(iOS 13.0, *)
  func readNDEF(completionHandler: @escaping (NFCNDEFMessage?, Error?) -> Void)
  @available(iOS 13.0, *)
  func readNDEF() async throws -> NFCNDEFMessage
  @available(iOS 13.0, *)
  func writeNDEF(_ ndefMessage: NFCNDEFMessage, completionHandler: @escaping (Error?) -> Void)
  @available(iOS 13.0, *)
  func writeNDEF(_ ndefMessage: NFCNDEFMessage) async throws
  @available(iOS 13.0, *)
  func writeLock(completionHandler: @escaping (Error?) -> Void)
  @available(iOS 13.0, *)
  func writeLock() async throws
}
@available(iOS 14.0, *)
enum NFCFeliCaPollingRequestCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS 13.0, *)
  case noRequest
  @available(iOS 13.0, *)
  case systemCode
  @available(iOS 13.0, *)
  case communicationPerformance
  @available(iOS, introduced: 13.0, deprecated: 14.0, renamed: "NFCFeliCaPollingRequestCode.noRequest")
  static var PollingRequestCodeNoRequest: NFCFeliCaPollingRequestCode { get }
  @available(iOS, introduced: 13.0, deprecated: 14.0, renamed: "NFCFeliCaPollingRequestCode.systemCode")
  static var PollingRequestCodeSystemCode: NFCFeliCaPollingRequestCode { get }
  @available(iOS, introduced: 13.0, deprecated: 14.0, renamed: "NFCFeliCaPollingRequestCode.communicationPerformance")
  static var PollingRequestCodeCommunicationPerformance: NFCFeliCaPollingRequestCode { get }
}
@available(iOS, introduced: 13.0, deprecated: 14.0, renamed: "NFCFeliCaPollingRequestCode")
typealias PollingRequestCode = NFCFeliCaPollingRequestCode
@available(iOS 14.0, *)
enum NFCFeliCaPollingTimeSlot : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS 13.0, *)
  case max1
  @available(iOS 13.0, *)
  case max2
  @available(iOS 13.0, *)
  case max4
  @available(iOS 13.0, *)
  case max8
  @available(iOS 13.0, *)
  case max16
  @available(iOS, introduced: 13.0, deprecated: 14.0, renamed: "NFCFeliCaPollingTimeSlot.max1")
  static var PollingTimeSlotMax1: NFCFeliCaPollingTimeSlot { get }
  @available(iOS, introduced: 13.0, deprecated: 14.0, renamed: "NFCFeliCaPollingTimeSlot.max2")
  static var PollingTimeSlotMax2: NFCFeliCaPollingTimeSlot { get }
  @available(iOS, introduced: 13.0, deprecated: 14.0, renamed: "NFCFeliCaPollingTimeSlot.max4")
  static var PollingTimeSlotMax4: NFCFeliCaPollingTimeSlot { get }
  @available(iOS, introduced: 13.0, deprecated: 14.0)
  static var PollingTimeSlotMax8: NFCFeliCaPollingTimeSlot { get }
  @available(iOS, introduced: 13.0, deprecated: 14.0, renamed: "NFCFeliCaPollingTimeSlot.max16")
  static var PollingTimeSlotMax16: NFCFeliCaPollingTimeSlot { get }
}
@available(iOS, introduced: 13.0, deprecated: 14.0, renamed: "NFCFeliCaPollingTimeSlot")
typealias PollingTimeSlot = NFCFeliCaPollingTimeSlot
enum NFCFeliCaEncryptionId : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS 13.0, *)
  case AES
  @available(iOS 13.0, *)
  case AES_DES
  @available(iOS, introduced: 13.0, deprecated: 14.0, renamed: "NFCFeliCaEncryptionId.AES")
  static var aes: NFCFeliCaEncryptionId { get }
  @available(iOS, introduced: 13.0, deprecated: 14.0, renamed: "NFCFeliCaEncryptionId.AES_DES")
  static var aes_des: NFCFeliCaEncryptionId { get }
}
@available(iOS, introduced: 13.0, deprecated: 14.0, renamed: "NFCFeliCaEncryptionId")
typealias EncryptionId = NFCFeliCaEncryptionId
@available(iOS 13.0, *)
protocol NFCFeliCaTag : NFCNDEFTag, __NFCTag {
  @available(iOS 13.0, *)
  var currentSystemCode: Data { get }
  @available(iOS 13.0, *)
  var currentIDm: Data { get }
  @available(iOS 13.0, *)
  func polling(systemCode: Data, requestCode: NFCFeliCaPollingRequestCode, timeSlot: NFCFeliCaPollingTimeSlot, completionHandler: @escaping (Data, Data, Error?) -> Void)
  @available(iOS 13.0, *)
  func polling(systemCode: Data, requestCode: NFCFeliCaPollingRequestCode, timeSlot: NFCFeliCaPollingTimeSlot) async throws -> (Data, Data)
  @available(iOS 13.0, *)
  func requestService(nodeCodeList: [Data], completionHandler: @escaping ([Data], Error?) -> Void)
  @available(iOS 13.0, *)
  func requestService(nodeCodeList: [Data]) async throws -> [Data]
  @available(iOS 13.0, *)
  func requestResponse(completionHandler: @escaping (Int, Error?) -> Void)
  @available(iOS 13.0, *)
  func requestResponse() async throws -> Int
  @available(iOS 13.0, *)
  func readWithoutEncryption(serviceCodeList: [Data], blockList: [Data], completionHandler: @escaping (Int, Int, [Data], Error?) -> Void)
  @available(iOS 13.0, *)
  func readWithoutEncryption(serviceCodeList: [Data], blockList: [Data]) async throws -> (Int, Int, [Data])
  @available(iOS 13.0, *)
  func writeWithoutEncryption(serviceCodeList: [Data], blockList: [Data], blockData: [Data], completionHandler: @escaping (Int, Int, Error?) -> Void)
  @available(iOS 13.0, *)
  func writeWithoutEncryption(serviceCodeList: [Data], blockList: [Data], blockData: [Data]) async throws -> (Int, Int)
  @available(iOS 13.0, *)
  func requestSystemCode(completionHandler: @escaping ([Data], Error?) -> Void)
  @available(iOS 13.0, *)
  func requestSystemCode() async throws -> [Data]
  @available(iOS 13.0, *)
  func requestServiceV2(nodeCodeList: [Data], completionHandler: @escaping (Int, Int, NFCFeliCaEncryptionId, [Data], [Data], Error?) -> Void)
  @available(iOS 13.0, *)
  func requestServiceV2(nodeCodeList: [Data]) async throws -> (Int, Int, NFCFeliCaEncryptionId, [Data], [Data])
  @available(iOS 13.0, *)
  func requestSpecificationVersion(completionHandler: @escaping (Int, Int, Data, Data, Error?) -> Void)
  @available(iOS 13.0, *)
  func requestSpecificationVersion() async throws -> (Int, Int, Data, Data)
  @available(iOS 13.0, *)
  func resetMode(completionHandler: @escaping (Int, Int, Error?) -> Void)
  @available(iOS 13.0, *)
  func resetMode() async throws -> (Int, Int)
  @available(iOS 13.0, *)
  func sendFeliCaCommand(commandPacket: Data, completionHandler: @escaping (Data, Error?) -> Void)
  @available(iOS 13.0, *)
  func sendFeliCaCommand(commandPacket: Data) async throws -> Data
}

@available(iOS 14.0, *)
extension NFCFeliCaTag {
  @available(iOS 14.0, *)
  func polling(systemCode: Data, requestCode: NFCFeliCaPollingRequestCode, timeSlot: NFCFeliCaPollingTimeSlot, resultHandler: @escaping (Result<NFCFeliCaPollingResponse, Error>) -> Void)
  @available(iOS 14.0, *)
  func requestService(nodeCodeList: [Data], resultHandler: @escaping (Result<[Data], Error>) -> Void)
  @available(iOS 14.0, *)
  func requestResponse(resultHandler: @escaping (Result<Int, Error>) -> Void)
  @available(iOS 14.0, *)
  func readWithoutEncryption(serviceCodeList: [Data], blockList: [Data], resultHandler: @escaping (Result<(NFCFeliCaStatusFlag, [Data]), Error>) -> Void)
  @available(iOS 14.0, *)
  func writeWithoutEncryption(serviceCodeList: [Data], blockList: [Data], blockData: [Data], resultHandler: @escaping (Result<NFCFeliCaStatusFlag, Error>) -> Void)
  @available(iOS 14.0, *)
  func requestSystemCode(resultHandler: @escaping (Result<[Data], Error>) -> Void)
  @available(iOS 14.0, *)
  func requestServiceV2(nodeCodeList: [Data], resultHandler: @escaping (Result<NFCFeliCaRequsetServiceV2Response, Error>) -> Void)
  @available(iOS 14.0, *)
  func requestSpecificationVersion(resultHandler: @escaping (Result<NFCFeliCaRequestSpecificationVersionResponse, Error>) -> Void)
  @available(iOS 14.0, *)
  func resetMode(resultHandler: @escaping (Result<NFCFeliCaStatusFlag, Error>) -> Void)
  @available(iOS 14.0, *)
  func sendFeliCaCommand(commandPacket: Data, resultHandler: @escaping (Result<Data, Error>) -> Void)
}
@available(iOS 13.0, *)
class NFCISO7816APDU : NSObject, NSCopying {
  @available(iOS 13.0, *)
  var instructionClass: UInt8 { get }
  @available(iOS 13.0, *)
  var instructionCode: UInt8 { get }
  @available(iOS 13.0, *)
  var p1Parameter: UInt8 { get }
  @available(iOS 13.0, *)
  var p2Parameter: UInt8 { get }
  @available(iOS 13.0, *)
  var data: Data? { get }
  @available(iOS 13.0, *)
  var expectedResponseLength: Int { get }
  @available(iOS 13.0, *)
  init(instructionClass: UInt8, instructionCode: UInt8, p1Parameter: UInt8, p2Parameter: UInt8, data: Data, expectedResponseLength: Int)
  @available(iOS 13.0, *)
  init?(data: Data)
}
@available(iOS 13.0, *)
protocol NFCISO7816Tag : NFCNDEFTag, __NFCTag {
  @available(iOS 13.0, *)
  var initialSelectedAID: String { get }
  @available(iOS 13.0, *)
  var identifier: Data { get }
  @available(iOS 13.0, *)
  var historicalBytes: Data? { get }
  @available(iOS 13.0, *)
  var applicationData: Data? { get }
  @available(iOS 13.0, *)
  var proprietaryApplicationDataCoding: Bool { get }
  @available(iOS 13.0, *)
  func sendCommand(apdu: NFCISO7816APDU, completionHandler: @escaping (Data, UInt8, UInt8, Error?) -> Void)
  @available(iOS 13.0, *)
  func sendCommand(apdu: NFCISO7816APDU) async throws -> (Data, UInt8, UInt8)
}

@available(iOS 14.0, *)
extension NFCISO7816Tag {
  @available(iOS 14.0, *)
  func sendCommand(apdu: NFCISO7816APDU, resultHandler: @escaping (Result<NFCISO7816ResponseAPDU, Error>) -> Void)
}
@available(iOS 13.0, *)
enum NFCMiFareFamily : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(iOS 13.0, *)
  case unknown
  @available(iOS 13.0, *)
  case ultralight
  @available(iOS 13.0, *)
  case plus
  @available(iOS 13.0, *)
  case desfire
}
@available(iOS 13.0, *)
protocol NFCMiFareTag : NFCNDEFTag, __NFCTag {
  @available(iOS 13.0, *)
  var mifareFamily: NFCMiFareFamily { get }
  @available(iOS 13.0, *)
  var identifier: Data { get }
  @available(iOS 13.0, *)
  var historicalBytes: Data? { get }
  @available(iOS 13.0, *)
  func sendMiFareCommand(commandPacket command: Data, completionHandler: @escaping (Data, Error?) -> Void)
  @available(iOS 13.0, *)
  func sendMiFareCommand(commandPacket command: Data) async throws -> Data
  @available(iOS 13.0, *)
  func sendMiFareISO7816Command(_ apdu: NFCISO7816APDU, completionHandler: @escaping (Data, UInt8, UInt8, Error?) -> Void)
  @available(iOS 13.0, *)
  func sendMiFareISO7816Command(_ apdu: NFCISO7816APDU) async throws -> (Data, UInt8, UInt8)
}

@available(iOS 14.0, *)
extension NFCMiFareTag {
  @available(iOS 14.0, *)
  func sendMiFareCommand(commandPacket command: Data, resultHandler: @escaping (Result<Data, Error>) -> Void)
  @available(iOS 14.0, *)
  func sendMiFareISO7816Command(_ apdu: NFCISO7816APDU, resultHandler: @escaping (Result<NFCISO7816ResponseAPDU, Error>) -> Void)
}
enum NFCTypeNameFormat : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  @available(iOS 11.0, *)
  case empty
  @available(iOS 11.0, *)
  case nfcWellKnown
  @available(iOS 11.0, *)
  case media
  @available(iOS 11.0, *)
  case absoluteURI
  @available(iOS 11.0, *)
  case nfcExternal
  @available(iOS 11.0, *)
  case unknown
  @available(iOS 11.0, *)
  case unchanged
}
@available(iOS 11.0, *)
class NFCNDEFPayload : NSObject, NSSecureCoding {
  @available(iOS 11.0, *)
  var typeNameFormat: NFCTypeNameFormat
  @available(iOS 11.0, *)
  var type: Data
  @available(iOS 11.0, *)
  var identifier: Data
  @available(iOS 11.0, *)
  var payload: Data
  @available(iOS 13.0, *)
  init(format: NFCTypeNameFormat, type: Data, identifier: Data, payload: Data)
  @available(iOS 13.0, *)
  init(format: NFCTypeNameFormat, type: Data, identifier: Data, payload: Data, chunkSize: Int)
}

@available(iOS 11.0, *)
extension NFCNDEFPayload {
  @available(iOS 13.0, *)
  func wellKnownTypeTextPayload() -> (String?, Locale?)
}
extension NFCNDEFPayload {
  @available(iOS 13.0, *)
  class func wellKnownTypeURIPayload(string uri: String) -> Self?
  @available(iOS 13.0, *)
  class func wellKnownTypeURIPayload(url: URL) -> Self?
  @available(iOS 13.0, *)
  class func wellKnownTypeTextPayload(string text: String, locale: Locale) -> Self?
  @available(iOS, introduced: 13.0, deprecated: 13.0)
  class func wellKnowTypeTextPayload(string text: String, locale: Locale) -> Self?
  @available(iOS 13.0, *)
  func wellKnownTypeURIPayload() -> URL?
  @available(iOS 13.0, *)
  func __wellKnownTypeTextPayload(with locale: AutoreleasingUnsafeMutablePointer<NSLocale?>) -> String?
}
@available(iOS 11.0, *)
class NFCNDEFMessage : NSObject, NSSecureCoding {
  @available(iOS 11.0, *)
  var records: [NFCNDEFPayload]
  @available(iOS 13.0, *)
  var length: Int { get }
  @available(iOS 13.0, *)
  init(records: [NFCNDEFPayload])
  @available(iOS 13.0, *)
  convenience init?(data: Data)
}
extension NFCVASCommandConfiguration {
  @available(iOS 13.0, *)
  enum Mode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    @available(iOS 13.0, *)
    case urlOnly
    @available(iOS 13.0, *)
    case normal
    @available(iOS, introduced: 13.0, deprecated: 14.0, renamed: "NFCVASCommandConfiguration.Mode.urlOnly")
    static var VASModeURLOnly: NFCVASCommandConfiguration.Mode { get }
    @available(iOS, introduced: 13.0, deprecated: 14.0, renamed: "NFCVASCommandConfiguration.Mode.normal")
    static var VASModeNormal: NFCVASCommandConfiguration.Mode { get }
  }
}
@available(iOS, introduced: 13.0, deprecated: 14.0, renamed: "NFCVASMode")
typealias VASMode = NFCVASCommandConfiguration.Mode
@available(iOS 13.0, *)
class NFCVASCommandConfiguration : NSObject, NSCopying {
  @available(iOS 13.0, *)
  var mode: NFCVASCommandConfiguration.Mode
  @available(iOS 13.0, *)
  var passTypeIdentifier: String
  @available(iOS 13.0, *)
  var url: URL?
  init(vasMode mode: NFCVASCommandConfiguration.Mode, passTypeIdentifier: String, url: URL?)
}
extension NFCVASResponse {
  @available(iOS 13.0, *)
  enum ErrorCode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    @available(iOS 13.0, *)
    case success
    @available(iOS 13.0, *)
    case dataNotFound
    @available(iOS 13.0, *)
    case dataNotActivated
    @available(iOS 13.0, *)
    case wrongParameters
    @available(iOS 13.0, *)
    case wrongLCField
    @available(iOS 13.0, *)
    case userIntervention
    @available(iOS 13.0, *)
    case incorrectData
    @available(iOS 13.0, *)
    case unsupportedApplicationVersion
    @available(iOS, introduced: 13.0, deprecated: 14.0, renamed: "NFCVASResponse.ErrorCode.success")
    static var VASErrorCodeSuccess: NFCVASResponse.ErrorCode { get }
    @available(iOS, introduced: 13.0, deprecated: 14.0, renamed: "NFCVASResponse.ErrorCode.dataNotFound")
    static var VASErrorCodeDataNotFound: NFCVASResponse.ErrorCode { get }
    @available(iOS, introduced: 13.0, deprecated: 14.0, renamed: "NFCVASResponse.ErrorCode.dataNotActivated")
    static var VASErrorCodeDataNotActivated: NFCVASResponse.ErrorCode { get }
    @available(iOS, introduced: 13.0, deprecated: 14.0, renamed: "NFCVASResponse.ErrorCode.wrongParameters")
    static var VASErrorCodeWrongParameters: NFCVASResponse.ErrorCode { get }
    @available(iOS, introduced: 13.0, deprecated: 14.0, renamed: "NFCVASResponse.ErrorCode.wrongLCField")
    static var VASErrorCodeWrongLCField: NFCVASResponse.ErrorCode { get }
    @available(iOS, introduced: 13.0, deprecated: 14.0, renamed: "NFCVASResponse.ErrorCode.userIntervention")
    static var VASErrorCodeUserIntervention: NFCVASResponse.ErrorCode { get }
    @available(iOS, introduced: 13.0, deprecated: 14.0, renamed: "NFCVASResponse.ErrorCode.incorrectData")
    static var VASErrorCodeIncorrectData: NFCVASResponse.ErrorCode { get }
    @available(iOS, introduced: 13.0, deprecated: 14.0, renamed: "NFCVASResponse.ErrorCode.unsupportedApplicationVersion")
    static var VASErrorCodeUnsupportedApplicationVersion: NFCVASResponse.ErrorCode { get }
  }
}
@available(iOS, introduced: 13.0, deprecated: 14.0, renamed: "NFCVASErrorCode")
typealias VASErrorCode = NFCVASResponse.ErrorCode
@available(iOS 13.0, *)
class NFCVASResponse : NSObject, NSCopying {
  @available(iOS 13.0, *)
  var status: NFCVASResponse.ErrorCode { get }
  @available(iOS 13.0, *)
  var vasData: Data { get }
  @available(iOS 13.0, *)
  var mobileToken: Data { get }
}
@available(iOS 13.0, *)
protocol NFCVASReaderSessionDelegate : NSObjectProtocol {
  @available(iOS 13.0, *)
  optional func readerSessionDidBecomeActive(_ session: NFCVASReaderSession)
  @available(iOS 13.0, *)
  func readerSession(_ session: NFCVASReaderSession, didInvalidateWithError error: Error)
  @available(iOS 13.0, *)
  func readerSession(_ session: NFCVASReaderSession, didReceive responses: [NFCVASResponse])
}
@available(iOS 13.0, *)
class NFCVASReaderSession : NFCReaderSession {
  @available(iOS 13.0, *)
  init(vasCommandConfigurations commandConfigurations: [NFCVASCommandConfiguration], delegate: NFCVASReaderSessionDelegate, queue: DispatchQueue?)
}
@available(iOS 14.0, *)
struct NFCFeliCaPollingResponse {
  var manufactureParameter: Data
  var requestData: Data?
  init(manufactureParameter _manufactureParameter: Data, requestData _requestData: Data?)
}

@available(iOS 14.0, *)
struct NFCFeliCaRequestSpecificationVersionResponse {
  var statusFlag1: Int
  var statusFlag2: Int
  var basicVersion: Data?
  var optionVersion: Data?
  init(statusFlag1 _statusFlag1: Int, statusFlag2 _statusFlag2: Int, basicVersion _basicVersion: Data?, optionVersion _optionVersion: Data?)
}

@available(iOS 14.0, *)
struct NFCFeliCaRequsetServiceV2Response {
  var statusFlag1: Int
  var statusFlag2: Int
  var encryptionIdentifier: NFCFeliCaEncryptionId
  var nodeKeyVersionListAES: [Data]?
  var nodeKeyVersionListDES: [Data]?
  init(statusFlag1 _statusFlag1: Int, statusFlag2 _statusFlag2: Int, encryptionIdentifier _encryptionIdentifier: NFCFeliCaEncryptionId, nodeKeyVersionListAES _nodeKeyVersionListAES: [Data]?, nodeKeyVersionListDES _nodeKeyVersionListDES: [Data]?)
}

@available(iOS 14.0, *)
struct NFCFeliCaStatusFlag {
  var statusFlag1: Int
  var statusFlag2: Int
  init(statusFlag1 _statusFlag1: Int, statusFlag2 _statusFlag2: Int)
}

@available(iOS 14.0, *)
struct NFCISO15693MultipleBlockSecurityStatus {
  var blockSecurityStatus: [Int]
  init(blockSecurityStatus _blockSecurityStatus: [Int])
}

@available(iOS 14.0, *)
struct NFCISO15693SystemInfo {
  var uniqueIdentifier: Data
  var dataStorageFormatIdentifier: Int
  var applicationFamilyIdentifier: Int
  var blockSize: Int
  var totalBlocks: Int
  var icReference: Int
  init(uniqueIdentifier _uniqueIdentifier: Data, dataStorageFormatIdentifier _dataStorageFormatIdentifier: Int, applicationFamilyIdentifier _applicationFamilyIdentifier: Int, blockSize _blockSize: Int, totalBlocks _totalBlocks: Int, icReference _icReference: Int)
}

@available(iOS 14.0, *)
struct NFCISO7816ResponseAPDU {
  var statusWord1: UInt8
  var statusWord2: UInt8
  var payload: Data?
  init(statusWord1 _statusWord1: UInt8, statusWord2 _statusWord2: UInt8, paylaod _paylaod: Data?)
}

@available(iOS 13.0, *)
enum NFCTag {
  case feliCa(NFCFeliCaTag)
  case iso7816(NFCISO7816Tag)
  case iso15693(NFCISO15693Tag)
  case miFare(NFCMiFareTag)
  var isAvailable: Bool { get }
}

@available(iOS 13.0, *)
protocol NFCTagReaderSessionDelegate : NSObjectProtocol {
  @available(iOS 13.0, *)
  func tagReaderSessionDidBecomeActive(_ session: NFCTagReaderSession)
  @available(iOS 13.0, *)
  func tagReaderSession(_ session: NFCTagReaderSession, didInvalidateWithError error: Error)
  @available(iOS 13.0, *)
  func tagReaderSession(_ session: NFCTagReaderSession, didDetect tags: [NFCTag])
}

@available(iOS 11.0, *)
extension NFCISO15693Tag {
  @available(iOS 14.0, *)
  func readSingleBlock(requestFlags flags: NFCISO15693RequestFlag, blockNumber: UInt8, resultHandler: @escaping (Result<Data, Error>) -> Void)
  @available(iOS 14.0, *)
  func readMultipleBlocks(requestFlags flags: NFCISO15693RequestFlag, blockRange: NSRange, resultHandler: @escaping (Result<[Data], Error>) -> Void)
  @available(iOS 14.0, *)
  func getSystemInfo(requestFlags flags: NFCISO15693RequestFlag, resultHandler: @escaping (Result<NFCISO15693SystemInfo, Error>) -> Void)
  @available(iOS 14.0, *)
  func fastReadMultipleBlocks(requestFlags flags: NFCISO15693RequestFlag, blockRange: NSRange, resultHandler: @escaping (Result<[Data], Error>) -> Void)
  @available(iOS 14.0, *)
  func customCommand(requestFlags flags: NFCISO15693RequestFlag, customCommandCode: Int, customRequestParameters: Data, resultHandler: @escaping (Result<Data, Error>) -> Void)
  @available(iOS 14.0, *)
  func extendedReadSingleBlock(requestFlags flags: NFCISO15693RequestFlag, blockNumber: Int, resultHandler: @escaping (Result<Data, Error>) -> Void)
  @available(iOS 14.0, *)
  func extendedWriteMultipleBlocks(requestFlags flags: NFCISO15693RequestFlag, blockRange: NSRange, dataBlocks: [Data], completionHandler: @escaping (Error?) -> Void)
  @available(iOS 14.0, *)
  func authenticate(requestFlags flags: NFCISO15693RequestFlag, cryptoSuiteIdentifier: Int, message: Data, resultHandler: @escaping (Result<(NFCISO15693ResponseFlag, Data), Error>) -> Void)
  @available(iOS 14.0, *)
  func keyUpdate(requestFlags flags: NFCISO15693RequestFlag, keyIdentifier: Int, message: Data, resultHandler: @escaping (Result<(NFCISO15693ResponseFlag, Data), Error>) -> Void)
  @available(iOS 14.0, *)
  func challenge(requestFlags flags: NFCISO15693RequestFlag, cryptoSuiteIdentifier: Int, message: Data, completionHandler: @escaping (Error?) -> Void)
  @available(iOS 14.0, *)
  func readBuffer(requestFlags flags: NFCISO15693RequestFlag, resultHandler: @escaping (Result<(NFCISO15693ResponseFlag, Data), Error>) -> Void)
  @available(iOS 14.0, *)
  func extendedGetMultipleBlockSecurityStatus(requestFlags flags: NFCISO15693RequestFlag, blockRange: NSRange, resultHandler: @escaping (Result<NFCISO15693MultipleBlockSecurityStatus, Error>) -> Void)
  @available(iOS 14.0, *)
  func extendedFastReadMultipleBlocks(requestFlags flags: NFCISO15693RequestFlag, blockRange: NSRange, resultHandler: @escaping (Result<[Data], Error>) -> Void)
  @available(iOS 14.0, *)
  func sendRequest(requestFlags flags: Int, commandCode: Int, data: Data?, resultHandler: @escaping (Result<(NFCISO15693ResponseFlag, Data?), Error>) -> Void)
}

@available(iOS 13.0, *)
extension NFCTagReaderSession {
  @available(iOS 13.0, *)
  var connectedTag: NFCTag? { get }
  @available(iOS 13.0, *)
  convenience init?(pollingOption: NFCTagReaderSession.PollingOption, delegate: NFCTagReaderSessionDelegate, queue: DispatchQueue? = nil)
  @available(iOS 13.0, *)
  func connect(to tag: NFCTag, completionHandler: @escaping (Error?) -> Void)
}

@available(iOS 14.0, *)
extension NFCISO7816Tag {
  @available(iOS 14.0, *)
  func sendCommand(apdu: NFCISO7816APDU, resultHandler: @escaping (Result<NFCISO7816ResponseAPDU, Error>) -> Void)
}

@available(iOS 11.0, *)
extension NFCNDEFPayload {
  @available(iOS 13.0, *)
  func wellKnownTypeTextPayload() -> (String?, Locale?)
}

@available(iOS 14.0, *)
extension NFCMiFareTag {
  @available(iOS 14.0, *)
  func sendMiFareCommand(commandPacket command: Data, resultHandler: @escaping (Result<Data, Error>) -> Void)
  @available(iOS 14.0, *)
  func sendMiFareISO7816Command(_ apdu: NFCISO7816APDU, resultHandler: @escaping (Result<NFCISO7816ResponseAPDU, Error>) -> Void)
}

@available(iOS 14.0, *)
extension NFCFeliCaTag {
  @available(iOS 14.0, *)
  func polling(systemCode: Data, requestCode: NFCFeliCaPollingRequestCode, timeSlot: NFCFeliCaPollingTimeSlot, resultHandler: @escaping (Result<NFCFeliCaPollingResponse, Error>) -> Void)
  @available(iOS 14.0, *)
  func requestService(nodeCodeList: [Data], resultHandler: @escaping (Result<[Data], Error>) -> Void)
  @available(iOS 14.0, *)
  func requestResponse(resultHandler: @escaping (Result<Int, Error>) -> Void)
  @available(iOS 14.0, *)
  func readWithoutEncryption(serviceCodeList: [Data], blockList: [Data], resultHandler: @escaping (Result<(NFCFeliCaStatusFlag, [Data]), Error>) -> Void)
  @available(iOS 14.0, *)
  func writeWithoutEncryption(serviceCodeList: [Data], blockList: [Data], blockData: [Data], resultHandler: @escaping (Result<NFCFeliCaStatusFlag, Error>) -> Void)
  @available(iOS 14.0, *)
  func requestSystemCode(resultHandler: @escaping (Result<[Data], Error>) -> Void)
  @available(iOS 14.0, *)
  func requestServiceV2(nodeCodeList: [Data], resultHandler: @escaping (Result<NFCFeliCaRequsetServiceV2Response, Error>) -> Void)
  @available(iOS 14.0, *)
  func requestSpecificationVersion(resultHandler: @escaping (Result<NFCFeliCaRequestSpecificationVersionResponse, Error>) -> Void)
  @available(iOS 14.0, *)
  func resetMode(resultHandler: @escaping (Result<NFCFeliCaStatusFlag, Error>) -> Void)
  @available(iOS 14.0, *)
  func sendFeliCaCommand(commandPacket: Data, resultHandler: @escaping (Result<Data, Error>) -> Void)
}

