
@available(tvOS 14.0, *)
class MPMusicPlayerControllerQueue : NSObject {
  var items: [MPMediaItem] { get }
}
@available(tvOS 14.0, *)
class MPMusicPlayerControllerMutableQueue : MPMusicPlayerControllerQueue {
  func insert(_ queueDescriptor: MPMusicPlayerQueueDescriptor, after afterItem: MPMediaItem?)
  func remove(_ item: MPMediaItem)
}
@available(tvOS 14.0, *)
class MPMusicPlayerApplicationController : MPMusicPlayerController {
  func perform(queueTransaction: @escaping (MPMusicPlayerControllerMutableQueue) -> Void, completionHandler: @escaping (MPMusicPlayerControllerQueue, Error?) -> Void)
  func perform(queueTransaction: @escaping (MPMusicPlayerControllerMutableQueue) -> Void) async throws -> MPMusicPlayerControllerQueue
}
extension NSNotification.Name {
  @available(tvOS 14.0, *)
  static let MPMusicPlayerControllerQueueDidChange: NSNotification.Name
}
