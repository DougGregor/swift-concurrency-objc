
@available(macOS 10.12, *)
class NSSliderAccessory : NSObject, NSCoding {
  /*not inherited*/ init(image: NSImage)
  @NSCopying var behavior: NSSliderAccessoryBehavior
  var isEnabled: Bool
}
extension NSSliderAccessory : NSAccessibilityProtocol, NSAccessibilityElementProtocol {
}
@available(macOS 10.12, *)
class NSSliderAccessoryBehavior : NSObject, NSCoding, NSCopying {
  @NSCopying class var automatic: NSSliderAccessoryBehavior { get }
  @NSCopying class var valueStep: NSSliderAccessoryBehavior { get }
  @NSCopying class var valueReset: NSSliderAccessoryBehavior { get }
  /*not inherited*/ init(target: Any?, action: Selector)
  /*not inherited*/ init(handler: @escaping (NSSliderAccessory) -> Void)
  func handleAction(_ sender: NSSliderAccessory)
}
