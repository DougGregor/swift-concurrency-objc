
enum CGWindowLevelKey : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case baseWindow
  case minimumWindow
  case desktopWindow
  case backstopMenu
  case normalWindow
  case floatingWindow
  case tornOffMenuWindow
  case dockWindow
  case mainMenuWindow
  case statusWindow
  case modalPanelWindow
  case popUpMenuWindow
  case draggingWindow
  case screenSaverWindow
  case maximumWindow
  case overlayWindow
  case helpWindow
  case utilityWindow
  case desktopIconWindow
  case cursorWindow
  case assistiveTechHighWindow
  case numberOfWindowLevelKeys
}
typealias CGWindowLevel = Int32
@available(macOS 10.0, *)
func CGWindowLevelForKey(_ key: CGWindowLevelKey) -> CGWindowLevel
var kCGNumReservedWindowLevels: Int32 { get }
var kCGNumReservedBaseWindowLevels: Int32 { get }
var kCGBackstopMenuLevel: CGWindowLevel { get }
var kCGNormalWindowLevel: CGWindowLevel { get }
var kCGFloatingWindowLevel: CGWindowLevel { get }
var kCGTornOffMenuWindowLevel: CGWindowLevel { get }
var kCGModalPanelWindowLevel: CGWindowLevel { get }
var kCGUtilityWindowLevel: CGWindowLevel { get }
var kCGDockWindowLevel: CGWindowLevel { get }
var kCGMainMenuWindowLevel: CGWindowLevel { get }
var kCGStatusWindowLevel: CGWindowLevel { get }
var kCGPopUpMenuWindowLevel: CGWindowLevel { get }
var kCGOverlayWindowLevel: CGWindowLevel { get }
var kCGHelpWindowLevel: CGWindowLevel { get }
var kCGDraggingWindowLevel: CGWindowLevel { get }
var kCGScreenSaverWindowLevel: CGWindowLevel { get }
var kCGAssistiveTechHighWindowLevel: CGWindowLevel { get }
