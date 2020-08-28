
@available(iOS, introduced: 7.1, deprecated: 14.0, message: "Use CarPlay framework")
protocol MPPlayableContentDataSource : NSObjectProtocol {
  optional func beginLoadingChildItems(at indexPath: IndexPath, completionHandler: @escaping (Error?) -> Void)
  optional func beginLoadingChildItems(at indexPath: IndexPath) async throws
  optional func childItemsDisplayPlaybackProgress(at indexPath: IndexPath) -> Bool
  @available(iOS, introduced: 10.0, deprecated: 14.0, message: "Use CarPlay framework")
  optional func contentItem(forIdentifier identifier: String, completionHandler: @escaping (MPContentItem?, Error?) -> Void)
  @available(iOS, introduced: 10.0, deprecated: 14.0, message: "Use CarPlay framework")
  optional func contentItem(forIdentifier identifier: String) async throws -> MPContentItem?
  func numberOfChildItems(at indexPath: IndexPath) -> Int
  func contentItem(at indexPath: IndexPath) -> MPContentItem?
}
