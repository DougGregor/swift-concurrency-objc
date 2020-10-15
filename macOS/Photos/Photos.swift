
@available(iOS 8.0, tvOS 10.0, macOS 10.13, *)
extension PHChange {
  @_alwaysEmitIntoClient func changeDetails<T>(for object: T) -> PHObjectChangeDetails<T>? where T : PHObject
  @_alwaysEmitIntoClient func changeDetails<T>(for fetchResult: PHFetchResult<T>) -> PHFetchResultChangeDetails<T>? where T : PHObject
  @_alwaysEmitIntoClient func changeDetails(for fetchResult: PHFetchResult<AnyObject>) -> PHFetchResultChangeDetails<PHObject>?
}

@available(macOS 10.13, *)
extension PHProjectChangeRequest {
  @available(macOS 10.14, *)
  func removeAssets<T>(_ assets: T) where T : Collection, T.Element == PHAsset
  @available(macOS 10.14, *)
  func removeAssets(_ assets: PHFetchResult<PHAsset>)
}

