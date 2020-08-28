
@available(macOS 11.0, *)
class WKPDFConfiguration : NSObject, NSCopying {
  var __rect: CGRect
}

@available(iOS 14.0, macOS 11.0, *)
extension WKPDFConfiguration {
  var rect: CGRect?
}
