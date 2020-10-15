
extension NSSliderAccessory {
  @available(macOS 10.12.2, *)
  struct Width : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: CGFloat)
    init(rawValue: CGFloat)
    let rawValue: CGFloat
  }
}
extension NSSliderAccessory.Width {
  @available(macOS 10.12.2, *)
  static let `default`: NSSliderAccessory.Width
  @available(macOS 10.12.2, *)
  static let wide: NSSliderAccessory.Width
}
@available(macOS 10.12.2, *)
class NSSliderTouchBarItem : NSTouchBarItem {
  var slider: NSSlider
  @available(macOS 10.15, *)
  var doubleValue: Double
  @available(macOS 10.15, *)
  var minimumSliderWidth: CGFloat
  @available(macOS 10.15, *)
  var maximumSliderWidth: CGFloat
  var label: String?
  var minimumValueAccessory: NSSliderAccessory?
  var maximumValueAccessory: NSSliderAccessory?
  var valueAccessoryWidth: NSSliderAccessory.Width
  weak var target: @sil_weak AnyObject?
  var action: Selector?
}
