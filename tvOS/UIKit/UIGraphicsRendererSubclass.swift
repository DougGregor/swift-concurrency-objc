
@available(tvOS 10.0, *)
typealias UIGraphicsDrawingActions = (UIGraphicsRendererContext) -> Void
extension UIGraphicsRenderer {
  @available(tvOS 10.0, *)
  class func rendererContextClass() -> AnyClass
  @available(tvOS 10.0, *)
  class func context(with format: UIGraphicsRendererFormat) -> CGContext?
  @available(tvOS 10.0, *)
  class func prepare(_ context: CGContext, with rendererContext: UIGraphicsRendererContext)
  @available(tvOS 10.0, *)
  func runDrawingActions(_ drawingActions: (UIGraphicsRendererContext) -> Void, completionActions: ((UIGraphicsRendererContext) -> Void)? = nil) throws
}
