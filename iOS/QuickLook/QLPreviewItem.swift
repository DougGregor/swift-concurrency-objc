
protocol QLPreviewItem : NSObjectProtocol {
  var previewItemURL: URL? { get }
  optional var previewItemTitle: String? { get }
}
extension NSURL : QLPreviewItem {
}
