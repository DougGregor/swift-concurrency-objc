
@available(watchOS 5.0, *)
enum INUpcomingMediaPredictionMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case onlyPredictSuggestedIntents
}
@available(watchOS 5.0, *)
class INUpcomingMediaManager : NSObject {
  class var shared: INUpcomingMediaManager { get }
  func setSuggestedMediaIntents(_ intents: NSOrderedSet)
  func setPredictionMode(_ mode: INUpcomingMediaPredictionMode, for type: INMediaItemType)
}
