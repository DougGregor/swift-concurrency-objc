
class SKTextureAtlas : NSObject, NSSecureCoding {
  convenience init(named name: String)
  @available(macOS 10.10, *)
  convenience init(dictionary properties: [String : Any])
  func textureNamed(_ name: String) -> SKTexture
  class func preloadTextureAtlases(_ textureAtlases: [SKTextureAtlas], withCompletionHandler completionHandler: @escaping () -> Void)
  class func preloadTextureAtlases(_ textureAtlases: [SKTextureAtlas]) async
  @available(macOS 10.11, *)
  class func preloadTextureAtlasesNamed(_ atlasNames: [String], withCompletionHandler completionHandler: @escaping (Error?, [SKTextureAtlas]) -> Void)
  @available(macOS 10.11, *)
  class func preloadTextureAtlasesNamed(_ atlasNames: [String]) async throws -> [SKTextureAtlas]
  func preload(completionHandler: @escaping () -> Void)
  func preload() async
  var textureNames: [String] { get }
}

extension SKTextureAtlas : _CustomPlaygroundQuickLookable {
}
