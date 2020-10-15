
@available(iOS 14.0, *)
extension NSString {
  @available(iOS 14.0, *)
  func appendingPathComponent(_ partialName: String, conformingTo contentType: UTType) -> String
  @available(iOS 14.0, *)
  func appendingPathExtension(for contentType: UTType) -> String
}
@available(iOS 14.0, *)
extension NSURL {
  @available(iOS 14.0, *)
  func appendingPathComponent(_ partialName: String, conformingTo contentType: UTType) -> URL
  @available(iOS 14.0, *)
  func appendingPathExtension(for contentType: UTType) -> URL
}
