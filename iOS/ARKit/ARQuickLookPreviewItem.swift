
@available(iOS 13.0, *)
class ARQuickLookPreviewItem : NSObject, QLPreviewItem {
  init(fileAt url: URL)
  var canonicalWebPageURL: URL?
  var allowsContentScaling: Bool
}
