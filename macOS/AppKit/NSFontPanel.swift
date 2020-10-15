
extension NSFontPanel {
  struct ModeMask : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var face: NSFontPanel.ModeMask { get }
    static var size: NSFontPanel.ModeMask { get }
    static var collection: NSFontPanel.ModeMask { get }
    static var underlineEffect: NSFontPanel.ModeMask { get }
    static var strikethroughEffect: NSFontPanel.ModeMask { get }
    static var textColorEffect: NSFontPanel.ModeMask { get }
    static var documentColorEffect: NSFontPanel.ModeMask { get }
    static var shadowEffect: NSFontPanel.ModeMask { get }
    static var allEffects: NSFontPanel.ModeMask { get }
    static var standardModes: NSFontPanel.ModeMask { get }
    static var allModes: NSFontPanel.ModeMask { get }
  }
}
protocol NSFontChanging : NSObjectProtocol {
  optional func changeFont(_ sender: NSFontManager?)
  optional func validModesForFontPanel(_ fontPanel: NSFontPanel) -> NSFontPanel.ModeMask
}
class NSFontPanel : NSPanel {
  class var shared: NSFontPanel { get }
  class var sharedFontPanelExists: Bool { get }
  var accessoryView: NSView?
  func setPanelFont(_ fontObj: NSFont, isMultiple flag: Bool)
  func convert(_ fontObj: NSFont) -> NSFont
  var isEnabled: Bool
  func reloadDefaultFontFamilies()
}
var NSFontPanelFaceModeMask: UInt32 { get }
var NSFontPanelSizeModeMask: UInt32 { get }
var NSFontPanelCollectionModeMask: UInt32 { get }
var NSFontPanelUnderlineEffectModeMask: UInt32 { get }
var NSFontPanelStrikethroughEffectModeMask: UInt32 { get }
var NSFontPanelTextColorEffectModeMask: UInt32 { get }
var NSFontPanelDocumentColorEffectModeMask: UInt32 { get }
var NSFontPanelShadowEffectModeMask: UInt32 { get }
var NSFontPanelAllEffectsModeMask: UInt32 { get }
var NSFontPanelStandardModesMask: UInt32 { get }
var NSFontPanelAllModesMask: UInt32 { get }
