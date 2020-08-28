
@available(macOS 10.10, *)
class TKSmartCardSlotManager : NSObject {
  class var `default`: TKSmartCardSlotManager? { get }
  var slotNames: [String] { get }
  func getSlot(withName name: String, reply: @escaping (TKSmartCardSlot?) -> Void)
  @available(macOS 10.13, *)
  func slotNamed(_ name: String) -> TKSmartCardSlot?
}
extension TKSmartCardSlot {
  @available(macOS 10.10, *)
  enum State : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case missing
    case empty
    case probing
    case muteCard
    case validCard
  }
}
extension TKSmartCardPINFormat {
  @available(macOS 10.11, *)
  enum Charset : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case numeric
    case alphanumeric
    case upperAlphanumeric
  }
  @available(macOS 10.11, *)
  enum Encoding : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case binary
    case ascii
    case bcd
  }
  @available(macOS 10.11, *)
  enum Justification : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case left
    case right
  }
}
extension TKSmartCardUserInteractionForPINOperation {
  @available(macOS 10.11, *)
  struct Completion : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var maxLength: TKSmartCardUserInteractionForPINOperation.Completion { get }
    static var key: TKSmartCardUserInteractionForPINOperation.Completion { get }
    static var timeout: TKSmartCardUserInteractionForPINOperation.Completion { get }
  }
}
extension TKSmartCardUserInteractionForSecurePINChange {
  @available(macOS 10.11, *)
  struct Confirmation : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var new: TKSmartCardUserInteractionForSecurePINChange.Confirmation { get }
    static var current: TKSmartCardUserInteractionForSecurePINChange.Confirmation { get }
  }
}
@available(macOS 10.11, *)
class TKSmartCardPINFormat : NSObject {
  var charset: TKSmartCardPINFormat.Charset
  var encoding: TKSmartCardPINFormat.Encoding
  var minPINLength: Int
  var maxPINLength: Int
  var pinBlockByteLength: Int
  var pinJustification: TKSmartCardPINFormat.Justification
  var pinBitOffset: Int
  var pinLengthBitOffset: Int
  var pinLengthBitSize: Int
}
@available(macOS 10.11, *)
protocol TKSmartCardUserInteractionDelegate {
  optional func characterEntered(in interaction: TKSmartCardUserInteraction)
  optional func correctionKeyPressed(in interaction: TKSmartCardUserInteraction)
  optional func validationKeyPressed(in interaction: TKSmartCardUserInteraction)
  optional func invalidCharacterEntered(in interaction: TKSmartCardUserInteraction)
  optional func oldPINRequested(in interaction: TKSmartCardUserInteraction)
  optional func newPINRequested(in interaction: TKSmartCardUserInteraction)
  optional func newPINConfirmationRequested(in interaction: TKSmartCardUserInteraction)
}
@available(macOS 10.11, *)
class TKSmartCardUserInteraction : NSObject {
  weak var delegate: @sil_weak TKSmartCardUserInteractionDelegate?
  var initialTimeout: TimeInterval
  var interactionTimeout: TimeInterval
  func run(reply: @escaping (Bool, Error?) -> Void)
  func cancel() -> Bool
}
@available(macOS 10.11, *)
class TKSmartCardUserInteractionForPINOperation : TKSmartCardUserInteraction {
  var pinCompletion: TKSmartCardUserInteractionForPINOperation.Completion
  var pinMessageIndices: [NSNumber]?
  var locale: Locale!
  var resultSW: UInt16
  var resultData: Data?
}
@available(macOS 10.11, *)
class TKSmartCardUserInteractionForSecurePINVerification : TKSmartCardUserInteractionForPINOperation {
}
@available(macOS 10.11, *)
class TKSmartCardUserInteractionForSecurePINChange : TKSmartCardUserInteractionForPINOperation {
  var pinConfirmation: TKSmartCardUserInteractionForSecurePINChange.Confirmation
}
@available(macOS 10.10, *)
class TKSmartCardSlot : NSObject {
  var state: TKSmartCardSlot.State { get }
  var atr: TKSmartCardATR? { get }
  var name: String { get }
  var maxInputLength: Int { get }
  var maxOutputLength: Int { get }
  func makeSmartCard() -> TKSmartCard?
}
@available(macOS 10.10, *)
class TKSmartCard : NSObject {
  var slot: TKSmartCardSlot { get }
  var isValid: Bool { get }
  var allowedProtocols: TKSmartCardProtocol
  var currentProtocol: TKSmartCardProtocol { get }
  var isSensitive: Bool
  var context: Any?
  func beginSession(reply: @escaping (Bool, Error?) -> Void)
  func transmit(_ request: Data, reply: @escaping (Data?, Error?) -> Void)
  func endSession()
  @available(macOS 10.11, *)
  func userInteractionForSecurePINVerification(_ PINFormat: TKSmartCardPINFormat, apdu APDU: Data, pinByteOffset PINByteOffset: Int) -> TKSmartCardUserInteractionForSecurePINVerification?
  @available(macOS 10.11, *)
  func userInteractionForSecurePINChange(_ PINFormat: TKSmartCardPINFormat, apdu APDU: Data, currentPINByteOffset: Int, newPINByteOffset: Int) -> TKSmartCardUserInteractionForSecurePINChange?
}

@available(macOS 10.10, *)
extension TKSmartCard {
  func send(ins: UInt8, p1: UInt8, p2: UInt8, data: Data? = nil, le: Int? = nil, reply: @escaping (Data?, UInt16, Error?) -> Void)
  @available(macOS 10.12, *)
  func send(ins: UInt8, p1: UInt8, p2: UInt8, data: Data? = nil, le: Int? = nil) throws -> (sw: UInt16, response: Data)
  @available(macOS 10.12, *)
  func withSession<T>(_ body: @escaping () throws -> T) throws -> T
}
extension TKSmartCard {
  @available(macOS 10.10, *)
  var cla: UInt8
  @available(macOS 10.10, *)
  var useExtendedLength: Bool
  @available(macOS 10.12, *)
  var useCommandChaining: Bool
  @available(macOS 10.10, *)
  func __sendIns(_ ins: UInt8, p1: UInt8, p2: UInt8, data requestData: Data?, le: NSNumber?, reply: @escaping (Data?, UInt16, Error?) -> Void)
  @available(macOS 10.12, *)
  func __inSession(executeBlock block: @escaping (NSErrorPointer) -> Bool) throws
  @available(macOS 10.12, *)
  func __sendIns(_ ins: UInt8, p1: UInt8, p2: UInt8, data requestData: Data?, le: NSNumber?, sw: UnsafeMutablePointer<UInt16>) throws -> Data
}
