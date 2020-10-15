
extension NSSegmentedControl {
  enum SwitchTracking : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case selectOne
    case selectAny
    case momentary
    @available(macOS 10.10.3, *)
    case momentaryAccelerator
  }
  @available(macOS 10.5, *)
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case automatic
    case rounded
    case roundRect
    case texturedSquare
    case smallSquare
    @available(macOS 10.10, *)
    case separated
    @available(macOS 10.5, *)
    case texturedRounded
    @available(macOS 10.5, *)
    case capsule
  }
  @available(macOS 10.13, *)
  enum Distribution : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case fit
    case fill
    case fillEqually
    case fillProportionally
  }
}
class NSSegmentedControl : NSControl, NSUserInterfaceCompression {
  var segmentCount: Int
  var selectedSegment: Int
  func selectSegment(withTag tag: Int) -> Bool
  func setWidth(_ width: CGFloat, forSegment segment: Int)
  func width(forSegment segment: Int) -> CGFloat
  func setImage(_ image: NSImage?, forSegment segment: Int)
  func image(forSegment segment: Int) -> NSImage?
  @available(macOS 10.5, *)
  func setImageScaling(_ scaling: NSImageScaling, forSegment segment: Int)
  @available(macOS 10.5, *)
  func imageScaling(forSegment segment: Int) -> NSImageScaling
  func setLabel(_ label: String, forSegment segment: Int)
  func label(forSegment segment: Int) -> String?
  func setMenu(_ menu: NSMenu?, forSegment segment: Int)
  func menu(forSegment segment: Int) -> NSMenu?
  func setSelected(_ selected: Bool, forSegment segment: Int)
  func isSelected(forSegment segment: Int) -> Bool
  func setEnabled(_ enabled: Bool, forSegment segment: Int)
  func isEnabled(forSegment segment: Int) -> Bool
  @available(macOS 10.13, *)
  func setToolTip(_ toolTip: String?, forSegment segment: Int)
  @available(macOS 10.13, *)
  func toolTip(forSegment segment: Int) -> String?
  @available(macOS 10.13, *)
  func setTag(_ tag: Int, forSegment segment: Int)
  @available(macOS 10.13, *)
  func tag(forSegment segment: Int) -> Int
  @available(macOS 10.13, *)
  func setShowsMenuIndicator(_ showsMenuIndicator: Bool, forSegment segment: Int)
  @available(macOS 10.13, *)
  func showsMenuIndicator(forSegment segment: Int) -> Bool
  @available(macOS 10.5, *)
  var segmentStyle: NSSegmentedControl.Style
  @available(macOS 10.10.3, *)
  var isSpringLoaded: Bool
  @available(macOS 10.10.3, *)
  var trackingMode: NSSegmentedControl.SwitchTracking
  @available(macOS 10.10.3, *)
  var doubleValueForSelectedSegment: Double { get }
  @available(macOS 10.12.2, *)
  @NSCopying var selectedSegmentBezelColor: NSColor?
  @available(macOS 10.4, *)
  var indexOfSelectedItem: Int { get }
  @available(macOS 10.13, *)
  func setAlignment(_ alignment: NSTextAlignment, forSegment segment: Int)
  @available(macOS 10.13, *)
  func alignment(forSegment segment: Int) -> NSTextAlignment
  @available(macOS 10.13, *)
  var segmentDistribution: NSSegmentedControl.Distribution
}
extension NSSegmentedControl {
  @available(macOS 10.12, *)
  convenience init(labels: [String], trackingMode: NSSegmentedControl.SwitchTracking, target: Any?, action: Selector?)
  @available(macOS 10.12, *)
  convenience init(images: [NSImage], trackingMode: NSSegmentedControl.SwitchTracking, target: Any?, action: Selector?)
}
