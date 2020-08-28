
@available(iOS, introduced: 7.1, deprecated: 14.0, message: "Use CarPlay framework")
protocol MPPlayableContentDelegate : NSObjectProtocol {
  @available(iOS, introduced: 7.1, deprecated: 14.0, message: "Use CarPlay framework")
  optional func playableContentManager(_ contentManager: MPPlayableContentManager, initiatePlaybackOfContentItemAt indexPath: IndexPath, completionHandler: @escaping (Error?) -> Void)
  @available(iOS, introduced: 7.1, deprecated: 14.0, message: "Use CarPlay framework")
  optional func playableContentManager(_ contentManager: MPPlayableContentManager, initiatePlaybackOfContentItemAt indexPath: IndexPath) async throws
  @available(iOS, introduced: 9.0, deprecated: 9.3, message: "Use Intents framework for initiating playback queues.")
  optional func playableContentManager(_ contentManager: MPPlayableContentManager, initializePlaybackQueueWithCompletionHandler completionHandler: @escaping (Error?) -> Void)
  @available(iOS, introduced: 9.0, deprecated: 9.3, message: "Use Intents framework for initiating playback queues.")
  optional func playableContentManager(_ contentManager: MPPlayableContentManager) async throws
  @available(iOS, introduced: 9.3, deprecated: 12.0, message: "Use Intents framework for initiating playback queues.")
  optional func playableContentManager(_ contentManager: MPPlayableContentManager, initializePlaybackQueueWithContentItems contentItems: [Any]?, completionHandler: @escaping (Error?) -> Void)
  @available(iOS, introduced: 9.3, deprecated: 12.0, message: "Use Intents framework for initiating playback queues.")
  optional func playableContentManager(_ contentManager: MPPlayableContentManager, initializePlaybackQueueWithContentItems contentItems: [Any]?) async throws
  @available(iOS, introduced: 8.4, deprecated: 14.0, message: "Use CarPlay framework")
  optional func playableContentManager(_ contentManager: MPPlayableContentManager, didUpdate context: MPPlayableContentManagerContext)
}
