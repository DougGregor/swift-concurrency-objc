
@available(macOS 10.8, *)
class GKAchievement : NSObject, NSCoding, NSSecureCoding {
  class func loadAchievements(completionHandler: (([GKAchievement]?, Error?) -> Void)? = nil)
  class func loadAchievements() async throws -> [GKAchievement]?
  class func resetAchievements(completionHandler: ((Error?) -> Void)? = nil)
  class func resetAchievements() async throws
  init(identifier: String)
  @available(macOS 10.10, *)
  init(identifier: String, player: GKPlayer)
  @available(macOS 10.8, *)
  class func report(_ achievements: [GKAchievement], withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
  @available(macOS 10.8, *)
  class func report(_ achievements: [GKAchievement]) async throws
  var identifier: String
  var percentComplete: Double
  var isCompleted: Bool { get }
  var lastReportedDate: Date { get }
  @available(macOS 10.8, *)
  var showsCompletionBanner: Bool
  @available(macOS 10.10, *)
  var player: GKPlayer { get }
}
extension GKAchievement {
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "Use +reportAchievements:withCompletionHandler:")
  func report(completionHandler: ((Error?) -> Void)? = nil)
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "Use +reportAchievements:withCompletionHandler:")
  func report() async throws
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "Use isHidden on the GKAchievementDescription class instead")
  var isHidden: Bool { get }
}
extension GKAchievement {
}
