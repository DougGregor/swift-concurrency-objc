
var CHHapticTimeImmediate: TimeInterval { get }
extension CHHapticEngine {
  typealias CompletionHandler = (Error?) -> Void
  enum FinishedAction : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case stopEngine
    case leaveEngineRunning
  }
  typealias FinishedHandler = (Error?) -> CHHapticEngine.FinishedAction
  enum StoppedReason : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case audioSessionInterrupt
    case applicationSuspended
    case idleTimeout
    case notifyWhenFinished
    case engineDestroyed
    case gameControllerDisconnect
    case systemError
  }
  typealias StoppedHandler = (CHHapticEngine.StoppedReason) -> Void
  typealias ResetHandler = () -> Void
}
@available(iOS 13.0, *)
class CHHapticEngine : NSObject {
  class func capabilitiesForHardware() -> CHHapticDeviceCapability
  var currentTime: TimeInterval { get }
  var stoppedHandler: CHHapticEngine.StoppedHandler
  var resetHandler: CHHapticEngine.ResetHandler
  var playsHapticsOnly: Bool
  var isMutedForAudio: Bool
  var isMutedForHaptics: Bool
  var isAutoShutdownEnabled: Bool
  init() throws
  func start(completionHandler: CHHapticEngine.CompletionHandler? = nil)
  func start() async throws
  func start() throws
  func stop(completionHandler: CHHapticEngine.CompletionHandler? = nil)
  func stop() async throws
  func notifyWhenPlayersFinished(finishedHandler: @escaping CHHapticEngine.FinishedHandler)
  func makePlayer(with pattern: CHHapticPattern) throws -> CHHapticPatternPlayer
  func makeAdvancedPlayer(with pattern: CHHapticPattern) throws -> CHHapticAdvancedPatternPlayer
  func registerAudioResource(_ resourceURL: URL, options: [AnyHashable : Any] = [:]) throws -> CHHapticAudioResourceID
  func unregisterAudioResource(_ resourceID: CHHapticAudioResourceID) throws
  func playPattern(from fileURL: URL) throws
  func playPattern(from data: Data) throws
}
