
@available(iOS 10.1, *)
class MPMusicPlayerQueueDescriptor : NSObject {
}
@available(iOS 10.1, *)
class MPMusicPlayerMediaItemQueueDescriptor : MPMusicPlayerQueueDescriptor {
  init(query: MPMediaQuery)
  init(itemCollection: MPMediaItemCollection)
  @NSCopying var query: MPMediaQuery { get }
  var itemCollection: MPMediaItemCollection { get }
  var startItem: MPMediaItem?
  func setStartTime(_ startTime: TimeInterval, for mediaItem: MPMediaItem)
  func setEndTime(_ endTime: TimeInterval, for mediaItem: MPMediaItem)
}
@available(iOS 10.1, *)
class MPMusicPlayerStoreQueueDescriptor : MPMusicPlayerQueueDescriptor {
  init(storeIDs: [String])
  var storeIDs: [String]?
  var startItemID: String?
  func setStartTime(_ startTime: TimeInterval, forItemWithStoreID storeID: String)
  func setEndTime(_ endTime: TimeInterval, forItemWithStoreID storeID: String)
}
@available(iOS 11.0, *)
class MPMusicPlayerPlayParameters : NSObject {
  init?(dictionary: [String : Any])
  var dictionary: [String : Any] { get }
}

@available(iOS 11.0, *)
extension MPMusicPlayerPlayParameters : Codable {
}
@available(iOS 11.0, *)
class MPMusicPlayerPlayParametersQueueDescriptor : MPMusicPlayerQueueDescriptor {
  init(playParametersQueue: [MPMusicPlayerPlayParameters])
  var playParametersQueue: [MPMusicPlayerPlayParameters]
  var startItemPlayParameters: MPMusicPlayerPlayParameters?
  func setStartTime(_ startTime: TimeInterval, forItemWith playParameters: MPMusicPlayerPlayParameters)
  func setEndTime(_ endTime: TimeInterval, forItemWith playParameters: MPMusicPlayerPlayParameters)
}
