
@available(tvOS 11.0, *)
protocol MDLAssetResolver : NSObjectProtocol {
  func canResolveAssetNamed(_ name: String) -> Bool
  func resolveAssetNamed(_ name: String) -> URL
}
@available(tvOS 11.0, *)
class MDLRelativeAssetResolver : NSObject, MDLAssetResolver {
  init(asset: MDLAsset)
  weak var asset: @sil_weak MDLAsset?
}
@available(tvOS 11.0, *)
class MDLPathAssetResolver : NSObject, MDLAssetResolver {
  init(path: String)
  var path: String
}
@available(tvOS 11.0, *)
class MDLBundleAssetResolver : NSObject, MDLAssetResolver {
  init(bundle path: String)
  var path: String
}
