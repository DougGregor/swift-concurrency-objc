
@available(macOS, introduced: 10.4, deprecated: 10.12)
class PDFAnnotationTextWidget : PDFAnnotation, NSCopying {
  func stringValue() -> String!
  func setStringValue(_ value: String!)
  func attributedStringValue() -> NSAttributedString!
  func setAttributedStringValue(_ value: NSAttributedString!)
  func rotation() -> Int
  func setRotation(_ rotation: Int32)
  func setIsMultiline(_ multiline: Bool)
}
