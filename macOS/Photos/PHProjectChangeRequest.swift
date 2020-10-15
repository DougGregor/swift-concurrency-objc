
@available(macOS 10.13, *)
class PHProjectChangeRequest : PHChangeRequest {
  @available(macOS 10.13, *)
  init(project: PHProject)
  @available(macOS 10.13, *)
  var title: String
  @available(macOS 10.13, *)
  var projectExtensionData: Data
  @available(macOS, introduced: 10.13, deprecated: 10.14)
  func setKeyAsset(_ keyAsset: PHAsset?)
  @available(macOS 10.14, *)
  func __removeAssets(_ assets: NSFastEnumeration)
}

@available(macOS 10.13, *)
extension PHProjectChangeRequest {
  @available(macOS 10.14, *)
  func removeAssets<T>(_ assets: T) where T : Collection, T.Element == PHAsset
  @available(macOS 10.14, *)
  func removeAssets(_ assets: PHFetchResult<PHAsset>)
}
