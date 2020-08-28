
@available(iOS 4.1, *)
class GKAchievement : NSObject, NSCoding, NSSecureCoding {
  class func loadAchievements(completionHandler: (([GKAchievement]?, Error?) -> Void)? = nil)
  class func loadAchievements() async throws -> [GKAchievement]?
  class func resetAchievements(completionHandler: ((Error?) -> Void)? = nil)
  class func resetAchievements() async throws
  init(identifier: String)
  @available(iOS 8.0, *)
  init(identifier: String, player: GKPlayer)
  @available(iOS 6.0, *)
  class func report(_ achievements: [GKAchievement], withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
  @available(iOS 6.0, *)
  class func report(_ achievements: [GKAchievement]) async throws
  var identifier: String
  var percentComplete: Double
  var isCompleted: Bool { get }
  var lastReportedDate: Date { get }
  @available(iOS 5.0, *)
  var showsCompletionBanner: Bool
  @available(iOS 8.0, *)
  var player: GKPlayer { get }
}
extension GKAchievement {
}
extension GKAchievement {
  @available(iOS, introduced: 7.0, deprecated: 8.0, message: "This is never invoked and its implementation does nothing, use initWithIdentifier:player:")
  init?(identifier: String?, forPlayer playerID: String)
  @available(iOS, introduced: 7.0, deprecated: 8.0, message: "This will return a null string, use player instead")
  var playerID: String? { get }
}
