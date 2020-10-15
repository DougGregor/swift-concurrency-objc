
@available(iOS, introduced: 7.1, deprecated: 14.0, message: "Use CarPlay framework")
class MPPlayableContentManager : NSObject {
  weak var dataSource: @sil_weak MPPlayableContentDataSource?
  weak var delegate: @sil_weak MPPlayableContentDelegate?
  @available(iOS, introduced: 8.4, deprecated: 14.0, message: "Use CarPlay framework")
  var context: MPPlayableContentManagerContext { get }
  @available(iOS, introduced: 10.0, deprecated: 14.0, message: "Use CarPlay framework")
  var nowPlayingIdentifiers: [String]
  class func shared() -> Self
  func reloadData()
  func beginUpdates()
  func endUpdates()
}
