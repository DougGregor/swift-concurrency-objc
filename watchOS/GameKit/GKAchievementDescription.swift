
@available(watchOS 3.0, *)
class GKAchievementDescription : NSObject, NSCoding, NSSecureCoding {
  class func loadAchievementDescriptions(completionHandler: (([GKAchievementDescription]?, Error?) -> Void)? = nil)
  class func loadAchievementDescriptions() async throws -> [GKAchievementDescription]
  var identifier: String { get }
  @available(watchOS 2.0, *)
  var groupIdentifier: String? { get }
  var title: String { get }
  var achievedDescription: String { get }
  var unachievedDescription: String { get }
  var maximumPoints: Int { get }
  var isHidden: Bool { get }
  @available(watchOS 2.0, *)
  var isReplayable: Bool { get }
}
