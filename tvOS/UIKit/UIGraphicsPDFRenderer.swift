
extension UIGraphicsPDFRenderer {
  @available(tvOS 10.0, *)
  typealias DrawingActions = (UIGraphicsPDFRendererContext) -> Void
}
@available(tvOS 10.0, *)
class UIGraphicsPDFRendererFormat : UIGraphicsRendererFormat {
  var documentInfo: [String : Any]
}
@available(tvOS 10.0, *)
class UIGraphicsPDFRendererContext : UIGraphicsRendererContext {
  var pdfContextBounds: CGRect { get }
  func beginPage()
  func beginPage(withBounds bounds: CGRect, pageInfo: [String : Any])
  func setURL(_ url: URL, for rect: CGRect)
  func addDestination(withName name: String, at point: CGPoint)
  func setDestinationWithName(_ name: String, for rect: CGRect)
}
@available(tvOS 10.0, *)
class UIGraphicsPDFRenderer : UIGraphicsRenderer {
  func writePDF(to url: URL, withActions actions: (UIGraphicsPDFRendererContext) -> Void) throws
  func pdfData(actions: (UIGraphicsPDFRendererContext) -> Void) -> Data
}
