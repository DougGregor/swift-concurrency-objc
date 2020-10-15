
@available(macOS 10.15, *)
protocol CHHapticPatternPlayer : NSObjectProtocol {
  func start(atTime time: TimeInterval) throws
  func stop(atTime time: TimeInterval) throws
  func sendParameters(_ parameters: [CHHapticDynamicParameter], atTime time: TimeInterval) throws
  func scheduleParameterCurve(_ parameterCurve: CHHapticParameterCurve, atTime time: TimeInterval) throws
  func cancel() throws
  var isMuted: Bool { get set }
}
typealias CHHapticAdvancedPatternPlayerCompletionHandler = (Error?) -> Void
@available(macOS 10.15, *)
protocol CHHapticAdvancedPatternPlayer : CHHapticPatternPlayer {
  func pause(atTime time: TimeInterval) throws
  func resume(atTime time: TimeInterval) throws
  func seek(toOffset offsetTime: TimeInterval) throws
  var loopEnabled: Bool { get set }
  var loopEnd: TimeInterval { get set }
  var playbackRate: Float { get set }
  var completionHandler: CHHapticAdvancedPatternPlayerCompletionHandler { get set }
}
