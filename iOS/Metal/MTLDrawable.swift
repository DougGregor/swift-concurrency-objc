
typealias MTLDrawablePresentedHandler = (MTLDrawable) -> Void
@available(iOS 8.0, *)
protocol MTLDrawable : NSObjectProtocol {
  func present()
  func present(at presentationTime: CFTimeInterval)
  @available(iOS 10.3, *)
  func present(afterMinimumDuration duration: CFTimeInterval)
  @available(iOS 10.3, *)
  func addPresentedHandler(_ block: @escaping MTLDrawablePresentedHandler)
  @available(iOS 10.3, *)
  var presentedTime: CFTimeInterval { get }
  @available(iOS 10.3, *)
  var drawableID: Int { get }
}
