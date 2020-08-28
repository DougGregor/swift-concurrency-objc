
class NSColorPanel : NSPanel {
  class var shared: NSColorPanel { get }
  class var sharedColorPanelExists: Bool { get }
  class func dragColor(_ color: NSColor, with event: NSEvent, from sourceView: NSView) -> Bool
  class func setPickerMask(_ mask: NSColorPanel.Options)
  class func setPickerMode(_ mode: NSColorPanel.Mode)
  var accessoryView: NSView?
  var isContinuous: Bool
  var showsAlpha: Bool
  var mode: NSColorPanel.Mode
  @NSCopying var color: NSColor
  var alpha: CGFloat { get }
  func setAction(_ selector: Selector?)
  func setTarget(_ target: Any?)
  func attachColorList(_ colorList: NSColorList)
  func detachColorList(_ colorList: NSColorList)
}
extension NSApplication {
  func orderFrontColorPanel(_ sender: Any?)
}
protocol NSColorChanging : NSObjectProtocol {
  func changeColor(_ sender: NSColorPanel?)
}
extension NSColorPanel {
  class let colorDidChangeNotification: NSNotification.Name
  enum Mode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    @available(macOS 10.5, *)
    case none
    case gray
    case RGB
    case CMYK
    case HSB
    case customPalette
    case colorList
    case wheel
    case crayon
  }
  struct Options : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var grayModeMask: NSColorPanel.Options { get }
    static var rgbModeMask: NSColorPanel.Options { get }
    static var cmykModeMask: NSColorPanel.Options { get }
    static var hsbModeMask: NSColorPanel.Options { get }
    static var customPaletteModeMask: NSColorPanel.Options { get }
    static var colorListModeMask: NSColorPanel.Options { get }
    static var wheelModeMask: NSColorPanel.Options { get }
    static var crayonModeMask: NSColorPanel.Options { get }
    static var allModesMask: NSColorPanel.Options { get }
  }
}
