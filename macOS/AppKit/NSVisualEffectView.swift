
extension NSVisualEffectView {
  @available(macOS 10.10, *)
  enum Material : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case titlebar
    case selection
    @available(macOS 10.11, *)
    case menu
    @available(macOS 10.11, *)
    case popover
    @available(macOS 10.11, *)
    case sidebar
    @available(macOS 10.14, *)
    case headerView
    @available(macOS 10.14, *)
    case sheet
    @available(macOS 10.14, *)
    case windowBackground
    @available(macOS 10.14, *)
    case hudWindow
    @available(macOS 10.14, *)
    case fullScreenUI
    @available(macOS 10.14, *)
    case toolTip
    @available(macOS 10.14, *)
    case contentBackground
    @available(macOS 10.14, *)
    case underWindowBackground
    @available(macOS 10.14, *)
    case underPageBackground
    @available(macOS, introduced: 10.10, deprecated: 10.14, message: "Use a specific semantic material instead.")
    case appearanceBased
    @available(macOS, introduced: 10.10, deprecated: 10.14, message: "Use a semantic material instead.  To force the appearance of a view hierarchy, set the `appearance` property to an appropriate NSAppearance value.")
    case light
    @available(macOS, introduced: 10.10, deprecated: 10.14, message: "Use a semantic material instead.  To force the appearance of a view hierarchy, set the `appearance` property to an appropriate NSAppearance value.")
    case dark
    @available(macOS, introduced: 10.11, deprecated: 10.14, message: "Use a semantic material instead.  To force the appearance of a view hierarchy, set the `appearance` property to an appropriate NSAppearance value.")
    case mediumLight
    @available(macOS, introduced: 10.11, deprecated: 10.14, message: "Use a semantic material instead.  To force the appearance of a view hierarchy, set the `appearance` property to an appropriate NSAppearance value.")
    case ultraDark
  }
  @available(macOS 10.10, *)
  enum BlendingMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case behindWindow
    case withinWindow
  }
  @available(macOS 10.10, *)
  enum State : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case followsWindowActiveState
    case active
    case inactive
  }
}
@available(macOS 10.10, *)
class NSVisualEffectView : NSView {
  var material: NSVisualEffectView.Material
  var interiorBackgroundStyle: NSView.BackgroundStyle { get }
  var blendingMode: NSVisualEffectView.BlendingMode
  var state: NSVisualEffectView.State
  var maskImage: NSImage?
  @available(macOS 10.12, *)
  var isEmphasized: Bool
}
