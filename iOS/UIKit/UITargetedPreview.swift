
@available(iOS 13.0, *)
class UIPreviewTarget : NSObject, NSCopying {
  init(container: UIView, center: CGPoint, transform: CGAffineTransform)
  convenience init(container: UIView, center: CGPoint)
  var container: UIView { get }
  var center: CGPoint { get }
  var transform: CGAffineTransform { get }
}
@available(iOS 13.0, *)
class UITargetedPreview : NSObject, NSCopying {
  init(view: UIView, parameters: UIPreviewParameters, target: UIPreviewTarget)
  convenience init(view: UIView, parameters: UIPreviewParameters)
  convenience init(view: UIView)
  var target: UIPreviewTarget { get }
  var view: UIView { get }
  @NSCopying var parameters: UIPreviewParameters { get }
  var size: CGSize { get }
  func retargetedPreview(with newTarget: UIPreviewTarget) -> UITargetedPreview
}
