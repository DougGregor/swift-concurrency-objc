
@available(tvOS 4.1, *)
class GKAchievement : NSObject, NSCoding, NSSecureCoding {
  class func loadAchievements(completionHandler: (([GKAchievement]?, Error?) -> Void)? = nil)
  class func resetAchievements(completionHandler: ((Error?) -> Void)? = nil)
  init(identifier: String)
  @available(tvOS 8.0, *)
  init(identifier: String, player: GKPlayer)
  @available(tvOS 6.0, *)
  class func report(_ achievements: [GKAchievement], withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
  var identifier: String
  var percentComplete: Double
  var isCompleted: Bool { get }
  var lastReportedDate: Date { get }
  @available(tvOS 5.0, *)
  var showsCompletionBanner: Bool
  @available(tvOS 8.0, *)
  var player: GKPlayer { get }
}
extension GKAchievement {
}
extension GKAchievement {
}
