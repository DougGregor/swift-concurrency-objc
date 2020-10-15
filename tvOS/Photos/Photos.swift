
@available(iOS 8.0, tvOS 10.0, macOS 10.13, *)
extension PHChange {
  func changeDetails<T>(for object: T) -> PHObjectChangeDetails<T>? where T : PHObject
  func changeDetails<T>(for fetchResult: PHFetchResult<T>) -> PHFetchResultChangeDetails<T>? where T : PHObject
}

