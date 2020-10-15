
extension SFSafariViewController {
  @available(iOS 11.0, *)
  class Configuration : NSObject, NSCopying {
    var entersReaderIfAvailable: Bool
    var barCollapsingEnabled: Bool
  }
}
