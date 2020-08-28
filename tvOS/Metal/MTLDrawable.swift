
typealias MTLDrawablePresentedHandler = (MTLDrawable) -> Void
@available(tvOS 8.0, *)
protocol MTLDrawable : NSObjectProtocol {
  func present()
  func present(at presentationTime: CFTimeInterval)
  @available(tvOS 10.3, *)
  func present(afterMinimumDuration duration: CFTimeInterval)
  @available(tvOS 10.3, *)
  func addPresentedHandler(_ block: @escaping MTLDrawablePresentedHandler)
  @available(tvOS 10.3, *)
  var presentedTime: CFTimeInterval { get }
  @available(tvOS 10.3, *)
  var drawableID: Int { get }
}
