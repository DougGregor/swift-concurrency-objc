
extension NSScroller {
  enum UsableParts : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case noScrollerParts
    @available(macOS, introduced: 10.0, deprecated: 10.14)
    case onlyScrollerArrows
    case allScrollerParts
  }
  enum Part : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case noPart
    case decrementPage
    case knob
    case incrementPage
    @available(macOS, introduced: 10.0, deprecated: 10.14)
    case decrementLine
    @available(macOS, introduced: 10.0, deprecated: 10.14)
    case incrementLine
    case knobSlot
  }
  @available(macOS 10.7, *)
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case legacy
    case overlay
  }
  @available(macOS 10.7, *)
  enum KnobStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case `default`
    case dark
    case light
  }
  @available(macOS 10.7, *)
  class let preferredScrollerStyleDidChangeNotification: NSNotification.Name
  @available(macOS, introduced: 10.0, deprecated: 10.14)
  enum ArrowPosition : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case scrollerArrowsMaxEnd
    case scrollerArrowsMinEnd
    static var scrollerArrowsDefaultSetting: NSScroller.ArrowPosition { get }
    case scrollerArrowsNone
  }
  @available(macOS, introduced: 10.0, deprecated: 10.14)
  enum Arrow : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case incrementArrow
    case decrementArrow
  }
}
class NSScroller : NSControl {
  @available(macOS 10.7, *)
  class var isCompatibleWithOverlayScrollers: Bool { get }
  @available(macOS 10.7, *)
  class func scrollerWidth(for controlSize: NSControl.ControlSize, scrollerStyle: NSScroller.Style) -> CGFloat
  @available(macOS 10.7, *)
  class var preferredScrollerStyle: NSScroller.Style { get }
  @available(macOS 10.7, *)
  var scrollerStyle: NSScroller.Style
  @available(macOS 10.7, *)
  var knobStyle: NSScroller.KnobStyle
  func rect(for partCode: NSScroller.Part) -> NSRect
  func checkSpaceForParts()
  var usableParts: NSScroller.UsableParts { get }
  func drawKnob()
  func drawKnobSlot(in slotRect: NSRect, highlight flag: Bool)
  func testPart(_ point: NSPoint) -> NSScroller.Part
  func trackKnob(with event: NSEvent)
  var hitPart: NSScroller.Part { get }
  var knobProportion: CGFloat
}
extension NSScroller {
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Has had no effect since 10.7")
  var arrowsPosition: NSScroller.ArrowPosition
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Has had no effect since 10.7")
  var controlTint: NSControlTint
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Has had no effect since 10.7")
  func highlight(_ flag: Bool)
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Not invoked since 10.7")
  func trackScrollButtons(with event: NSEvent)
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Scrollers don't have arrows as of 10.7")
  func drawArrow(_ whichArrow: NSScroller.Arrow, highlight flag: Bool)
}
