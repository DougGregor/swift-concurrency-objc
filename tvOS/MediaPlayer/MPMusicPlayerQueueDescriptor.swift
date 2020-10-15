
@available(tvOS 14.0, *)
class MPMusicPlayerQueueDescriptor : NSObject {
}
@available(tvOS 14.0, *)
class MPMusicPlayerStoreQueueDescriptor : MPMusicPlayerQueueDescriptor {
  init(storeIDs: [String])
  var storeIDs: [String]?
  var startItemID: String?
  func setStartTime(_ startTime: TimeInterval, forItemWithStoreID storeID: String)
  func setEndTime(_ endTime: TimeInterval, forItemWithStoreID storeID: String)
}
@available(tvOS 14.0, *)
class MPMusicPlayerPlayParameters : NSObject {
  init?(dictionary: [String : Any])
  var dictionary: [String : Any] { get }
}
@available(tvOS 14.0, *)
class MPMusicPlayerPlayParametersQueueDescriptor : MPMusicPlayerQueueDescriptor {
  init(playParametersQueue: [MPMusicPlayerPlayParameters])
  var playParametersQueue: [MPMusicPlayerPlayParameters]
  var startItemPlayParameters: MPMusicPlayerPlayParameters?
  func setStartTime(_ startTime: TimeInterval, forItemWith playParameters: MPMusicPlayerPlayParameters)
  func setEndTime(_ endTime: TimeInterval, forItemWith playParameters: MPMusicPlayerPlayParameters)
}
