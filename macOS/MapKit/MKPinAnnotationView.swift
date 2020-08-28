
@available(macOS, introduced: 10.9, deprecated: 10.11, message: "Use MKPinAnnotationView's pinTintColor instead")
enum MKPinAnnotationColor : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case red
  case green
  case purple
}
@available(macOS 10.9, *)
class MKPinAnnotationView : MKAnnotationView {
  @available(macOS 10.11, *)
  class func redPinColor() -> NSColor
  @available(macOS 10.11, *)
  class func greenPinColor() -> NSColor
  @available(macOS 10.11, *)
  class func purplePinColor() -> NSColor
  @available(macOS 10.11, *)
  var pinTintColor: NSColor!
  var animatesDrop: Bool
  @available(macOS, introduced: 10.9, deprecated: 10.11, message: "Use pinTintColor instead")
  var pinColor: MKPinAnnotationColor
}
