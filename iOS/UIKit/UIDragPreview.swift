
@available(iOS 11.0, *)
class UIDragPreview : NSObject, NSCopying {
  init(view: UIView, parameters: UIDragPreviewParameters)
  convenience init(view: UIView)
  var view: UIView { get }
  @NSCopying var parameters: UIDragPreviewParameters { get }
}
