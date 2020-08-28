
@available(macOS 10.13, *)
protocol MDLAssetResolver : NSObjectProtocol {
  func canResolveAssetNamed(_ name: String) -> Bool
  func resolveAssetNamed(_ name: String) -> URL
}
@available(macOS 10.13, *)
class MDLRelativeAssetResolver : NSObject, MDLAssetResolver {
  init(asset: MDLAsset)
  weak var asset: @sil_weak MDLAsset?
}
@available(macOS 10.13, *)
class MDLPathAssetResolver : NSObject, MDLAssetResolver {
  init(path: String)
  var path: String
}
@available(macOS 10.13, *)
class MDLBundleAssetResolver : NSObject, MDLAssetResolver {
  init(bundle path: String)
  var path: String
}
