
@available(tvOS 4.1, *)
class GKAchievementDescription : NSObject, NSCoding, NSSecureCoding {
  class func loadAchievementDescriptions(completionHandler: (([GKAchievementDescription]?, Error?) -> Void)? = nil)
  class func loadAchievementDescriptionsAsync() async throws -> [GKAchievementDescription]
  var identifier: String { get }
  @available(tvOS 6.0, *)
  var groupIdentifier: String? { get }
  var title: String { get }
  var achievedDescription: String { get }
  var unachievedDescription: String { get }
  var maximumPoints: Int { get }
  var isHidden: Bool { get }
  @available(tvOS 6.0, *)
  var isReplayable: Bool { get }
}
extension GKAchievementDescription {
  func loadImage(completionHandler: ((UIImage?, Error?) -> Void)? = nil)
  func loadImageAsync() async throws -> UIImage
  class func incompleteAchievementImage() -> UIImage
  class func placeholderCompletedAchievementImage() -> UIImage
}
