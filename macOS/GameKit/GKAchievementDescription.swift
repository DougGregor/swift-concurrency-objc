
@available(macOS 10.8, *)
class GKAchievementDescription : NSObject, NSCoding, NSSecureCoding {
  class func loadAchievementDescriptions(completionHandler: (([GKAchievementDescription]?, Error?) -> Void)? = nil)
  class func loadAchievementDescriptions() async throws -> [GKAchievementDescription]
  var identifier: String { get }
  @available(macOS 10.8, *)
  var groupIdentifier: String? { get }
  var title: String { get }
  var achievedDescription: String { get }
  var unachievedDescription: String { get }
  var maximumPoints: Int { get }
  var isHidden: Bool { get }
  @available(macOS 10.8, *)
  var isReplayable: Bool { get }
}
extension GKAchievementDescription {
  @available(macOS 10.8, *)
  var image: NSImage? { get }
  func loadImage(completionHandler: ((NSImage?, Error?) -> Void)? = nil)
  func loadImage() async throws -> NSImage
  class func incompleteAchievementImage() -> NSImage
  class func placeholderCompletedAchievementImage() -> NSImage
}
