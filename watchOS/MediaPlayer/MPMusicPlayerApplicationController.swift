
@available(watchOS 3.3, *)
class MPMusicPlayerControllerQueue : NSObject {
  var items: [MPMediaItem] { get }
}
@available(watchOS 3.3, *)
class MPMusicPlayerControllerMutableQueue : MPMusicPlayerControllerQueue {
  func insert(_ queueDescriptor: MPMusicPlayerQueueDescriptor, after afterItem: MPMediaItem?)
  func remove(_ item: MPMediaItem)
}
@available(watchOS 3.3, *)
class MPMusicPlayerApplicationController : MPMusicPlayerController {
  func perform(queueTransaction: @escaping (MPMusicPlayerControllerMutableQueue) -> Void, completionHandler: @escaping (MPMusicPlayerControllerQueue, Error?) -> Void)
  func perform(queueTransaction: @escaping (MPMusicPlayerControllerMutableQueue) -> Void) async throws -> MPMusicPlayerControllerQueue
}
extension NSNotification.Name {
  @available(watchOS 3.3, *)
  static let MPMusicPlayerControllerQueueDidChange: NSNotification.Name
}
