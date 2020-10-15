
@available(iOS 11.0, *)
class UIPasteConfiguration : NSObject, NSSecureCoding, NSCopying {
  var acceptableTypeIdentifiers: [String]
  convenience init(acceptableTypeIdentifiers: [String])
  func addAcceptableTypeIdentifiers(_ acceptableTypeIdentifiers: [String])
  convenience init(forAccepting aClass: NSItemProviderReading.Type)
  func addTypeIdentifiers(forAccepting aClass: NSItemProviderReading.Type)
}

@available(iOS 11.0, *)
extension UIPasteConfiguration {
  @available(iOS 11.0, *)
  convenience init<T>(forAccepting _: T.Type) where T : _ObjectiveCBridgeable, T._ObjectiveCType : NSItemProviderReading
  @available(iOS 11.0, *)
  func addTypeIdentifiers<T>(forAccepting aClass: T.Type) where T : _ObjectiveCBridgeable, T._ObjectiveCType : NSItemProviderReading
}
