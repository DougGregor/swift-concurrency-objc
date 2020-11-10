
@available(watchOS 6.0, *)
class SNAudioStreamAnalyzer : NSObject {
  init(format: AVAudioFormat)
  func add(_ request: SNRequest, withObserver observer: SNResultsObserving) throws
  func remove(_ request: SNRequest)
  func removeAllRequests()
  func analyze(_ audioBuffer: AVAudioBuffer, atAudioFramePosition audioFramePosition: AVAudioFramePosition)
  func completeAnalysis()
}
@available(watchOS 6.0, *)
class SNAudioFileAnalyzer : NSObject {
  init(url: URL) throws
  func add(_ request: SNRequest, withObserver observer: SNResultsObserving) throws
  func remove(_ request: SNRequest)
  func removeAllRequests()
  func analyze()
  func analyze(completionHandler: @escaping (Bool) -> Void)
  func analyzeAsync() async -> Bool
  func cancelAnalysis()
}
