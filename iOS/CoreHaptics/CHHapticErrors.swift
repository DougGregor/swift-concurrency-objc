
let CoreHapticsErrorDomain: String
@available(iOS 13.0, *)
struct CHHapticError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var engineNotRunning: CHHapticError.Code { get }
  static var operationNotPermitted: CHHapticError.Code { get }
  static var engineStartTimeout: CHHapticError.Code { get }
  static var notSupported: CHHapticError.Code { get }
  static var serverInitFailed: CHHapticError.Code { get }
  static var serverInterrupted: CHHapticError.Code { get }
  static var invalidPatternPlayer: CHHapticError.Code { get }
  static var invalidPatternData: CHHapticError.Code { get }
  static var invalidPatternDictionary: CHHapticError.Code { get }
  static var invalidAudioSession: CHHapticError.Code { get }
  static var invalidParameterType: CHHapticError.Code { get }
  static var invalidEventType: CHHapticError.Code { get }
  static var invalidEventTime: CHHapticError.Code { get }
  static var invalidEventDuration: CHHapticError.Code { get }
  static var invalidAudioResource: CHHapticError.Code { get }
  static var resourceNotAvailable: CHHapticError.Code { get }
  static var badEventEntry: CHHapticError.Code { get }
  static var badParameterEntry: CHHapticError.Code { get }
  static var invalidTime: CHHapticError.Code { get }
  static var unknownError: CHHapticError.Code { get }
  static var memoryError: CHHapticError.Code { get }
}
