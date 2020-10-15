
extension UIDragPreview {
  @available(iOS 11.0, *)
  convenience init(for url: URL)
  @available(iOS 11.0, *)
  convenience init(for url: URL, title: String?)
}
extension UITargetedDragPreview {
  @available(iOS 11.0, *)
  convenience init(for url: URL, target: UIDragPreviewTarget)
  @available(iOS 11.0, *)
  convenience init(for url: URL, title: String?, target: UIDragPreviewTarget)
}
