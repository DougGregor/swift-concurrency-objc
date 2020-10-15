
extension NSGradient {
  struct DrawingOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var drawsBeforeStartingLocation: NSGradient.DrawingOptions { get }
    static var drawsAfterEndingLocation: NSGradient.DrawingOptions { get }
  }
}
@available(macOS 10.5, *)
class NSGradient : NSObject, NSCopying, NSSecureCoding {
  convenience init?(starting startingColor: NSColor, ending endingColor: NSColor)
  convenience init?(colors colorArray: [NSColor])
  init?(colors colorArray: [NSColor], atLocations locations: UnsafePointer<CGFloat>?, colorSpace: NSColorSpace)
  func draw(from startingPoint: NSPoint, to endingPoint: NSPoint, options: NSGradient.DrawingOptions = [])
  func draw(in rect: NSRect, angle: CGFloat)
  func draw(in path: NSBezierPath, angle: CGFloat)
  func draw(fromCenter startCenter: NSPoint, radius startRadius: CGFloat, toCenter endCenter: NSPoint, radius endRadius: CGFloat, options: NSGradient.DrawingOptions = [])
  func draw(in rect: NSRect, relativeCenterPosition: NSPoint)
  func draw(in path: NSBezierPath, relativeCenterPosition: NSPoint)
  var colorSpace: NSColorSpace { get }
  var numberOfColorStops: Int { get }
  func getColor(_ color: AutoreleasingUnsafeMutablePointer<NSColor>?, location: UnsafeMutablePointer<CGFloat>?, at index: Int)
  func interpolatedColor(atLocation location: CGFloat) -> NSColor
}

extension NSGradient {
  convenience init?(colorsAndLocations objects: (NSColor, CGFloat)...)
}
