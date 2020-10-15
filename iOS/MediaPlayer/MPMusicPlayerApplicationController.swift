
@available(iOS 10.3, *)
class MPMusicPlayerControllerQueue : NSObject {
  var items: [MPMediaItem] { get }
}
@available(iOS 10.3, *)
class MPMusicPlayerControllerMutableQueue : MPMusicPlayerControllerQueue {
  func insert(_ queueDescriptor: MPMusicPlayerQueueDescriptor, after afterItem: MPMediaItem?)
  func remove(_ item: MPMediaItem)
}
@available(iOS 10.3, *)
class MPMusicPlayerApplicationController : MPMusicPlayerController {
  func perform(queueTransaction: @escaping (MPMusicPlayerControllerMutableQueue) -> Void, completionHandler: @escaping (MPMusicPlayerControllerQueue, Error?) -> Void)
}
extension NSNotification.Name {
  @available(iOS 10.3, *)
  static let MPMusicPlayerControllerQueueDidChange: NSNotification.Name
}
