
@available(watchOS 3.0, *)
class GKAchievement : NSObject, NSCoding, NSSecureCoding {
  class func loadAchievements(completionHandler: (([GKAchievement]?, Error?) -> Void)? = nil)
  class func loadAchievements() async throws -> [GKAchievement]?
  class func resetAchievements(completionHandler: ((Error?) -> Void)? = nil)
  class func resetAchievements() async throws
  init(identifier: String)
  @available(watchOS 2.0, *)
  init(identifier: String, player: GKPlayer)
  @available(watchOS 2.0, *)
  class func report(_ achievements: [GKAchievement], withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
  @available(watchOS 2.0, *)
  class func report(_ achievements: [GKAchievement]) async throws
  var identifier: String
  var percentComplete: Double
  var isCompleted: Bool { get }
  var lastReportedDate: Date { get }
  @available(watchOS 2.0, *)
  var showsCompletionBanner: Bool
  @available(watchOS 2.0, *)
  var player: GKPlayer { get }
}
extension GKAchievement {
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use +reportAchievements:withCompletionHandler:")
  func report(completionHandler: ((Error?) -> Void)? = nil)
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use +reportAchievements:withCompletionHandler:")
  func report() async throws
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use isHidden on the GKAchievementDescription class instead")
  var isHidden: Bool { get }
}
extension GKAchievement {
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "This is never invoked and its implementation does nothing, use initWithIdentifier:player:")
  init?(identifier: String?, forPlayer playerID: String)
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "This will return a null string, use player instead")
  var playerID: String? { get }
}
