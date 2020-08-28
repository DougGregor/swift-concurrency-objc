
typealias MTLDrawablePresentedHandler = (MTLDrawable) -> Void
@available(macOS 10.11, *)
protocol MTLDrawable : NSObjectProtocol {
  func present()
  func present(at presentationTime: CFTimeInterval)
  @available(macOS 10.15.4, *)
  func present(afterMinimumDuration duration: CFTimeInterval)
  @available(macOS 10.15.4, *)
  func addPresentedHandler(_ block: @escaping MTLDrawablePresentedHandler)
  @available(macOS 10.15.4, *)
  var presentedTime: CFTimeInterval { get }
  @available(macOS 10.15.4, *)
  var drawableID: Int { get }
}
