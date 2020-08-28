
struct NSFontTraitMask : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var italicFontMask: NSFontTraitMask { get }
  static var boldFontMask: NSFontTraitMask { get }
  static var unboldFontMask: NSFontTraitMask { get }
  static var nonStandardCharacterSetFontMask: NSFontTraitMask { get }
  static var narrowFontMask: NSFontTraitMask { get }
  static var expandedFontMask: NSFontTraitMask { get }
  static var condensedFontMask: NSFontTraitMask { get }
  static var smallCapsFontMask: NSFontTraitMask { get }
  static var posterFontMask: NSFontTraitMask { get }
  static var compressedFontMask: NSFontTraitMask { get }
  static var fixedPitchFontMask: NSFontTraitMask { get }
  static var unitalicFontMask: NSFontTraitMask { get }
}
struct NSFontCollectionOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var applicationOnlyMask: NSFontCollectionOptions { get }
}
enum NSFontAction : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case noFontChangeAction
  case viaPanelFontAction
  case addTraitFontAction
  case sizeUpFontAction
  case sizeDownFontAction
  case heavierFontAction
  case lighterFontAction
  case removeTraitFontAction
}
class NSFontManager : NSObject, NSMenuItemValidation {
  class func setFontPanelFactory(_ factoryId: AnyClass?)
  class func setFontManagerFactory(_ factoryId: AnyClass?)
  class var shared: NSFontManager { get }
  var isMultiple: Bool { get }
  var selectedFont: NSFont? { get }
  func setSelectedFont(_ fontObj: NSFont, isMultiple flag: Bool)
  func setFontMenu(_ newMenu: NSMenu)
  func fontMenu(_ create: Bool) -> NSMenu?
  func fontPanel(_ create: Bool) -> NSFontPanel?
  func font(withFamily family: String, traits: NSFontTraitMask, weight: Int, size: CGFloat) -> NSFont?
  func traits(of fontObj: NSFont) -> NSFontTraitMask
  func weight(of fontObj: NSFont) -> Int
  var availableFonts: [String] { get }
  var availableFontFamilies: [String] { get }
  func availableMembers(ofFontFamily fam: String) -> [[Any]]?
  func convert(_ fontObj: NSFont) -> NSFont
  func convert(_ fontObj: NSFont, toSize size: CGFloat) -> NSFont
  func convert(_ fontObj: NSFont, toFace typeface: String) -> NSFont?
  func convert(_ fontObj: NSFont, toFamily family: String) -> NSFont
  func convert(_ fontObj: NSFont, toHaveTrait trait: NSFontTraitMask) -> NSFont
  func convert(_ fontObj: NSFont, toNotHaveTrait trait: NSFontTraitMask) -> NSFont
  func convertWeight(_ upFlag: Bool, of fontObj: NSFont) -> NSFont
  var isEnabled: Bool
  var action: Selector
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "NSFontManager doesn't have any delegate method. This property should not be used.")
  unowned(unsafe) var delegate: @sil_unmanaged AnyObject?
  func sendAction() -> Bool
  func localizedName(forFamily family: String, face faceKey: String?) -> String
  func setSelectedAttributes(_ attributes: [String : Any], isMultiple flag: Bool)
  func convertAttributes(_ attributes: [String : Any] = [:]) -> [String : Any]
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use -[NSFontDescriptor matchingFontDescriptorsWithMandatoryKeys:] instead")
  func availableFontNames(matching descriptor: NSFontDescriptor) -> [Any]?
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use +[NSFontCollection allFontCollectionNames] instead")
  var collectionNames: [Any] { get }
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use -[NSFontCollection matchingDescriptors] instead")
  func fontDescriptors(inCollection collectionNames: String) -> [Any]?
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use +[NSFontCollection showFontCollection:withName:visibility:name:] instead")
  func addCollection(_ collectionName: String, options collectionOptions: NSFontCollectionOptions = []) -> Bool
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use +[NSFontCollection hideFontCollectionWithName:visibility:error:] instead")
  func removeCollection(_ collectionName: String) -> Bool
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use -[NSMutableFontCollection addQueryForDescriptors:] instead")
  func addFontDescriptors(_ descriptors: [Any], toCollection collectionName: String)
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use -[NSMutableFontCollection removeQueryForDescriptors:] instead")
  func removeFontDescriptor(_ descriptor: NSFontDescriptor, fromCollection collection: String)
  @available(macOS 10.5, *)
  var currentFontAction: NSFontAction { get }
  @available(macOS 10.5, *)
  func convertFontTraits(_ traits: NSFontTraitMask) -> NSFontTraitMask
  @available(macOS 10.5, *)
  weak var target: @sil_weak AnyObject?
}
extension NSFontManager {
  func fontNamed(_ fName: String, hasTraits someTraits: NSFontTraitMask) -> Bool
  func availableFontNames(with someTraits: NSFontTraitMask) -> [String]?
  func addFontTrait(_ sender: Any?)
  func removeFontTrait(_ sender: Any?)
  func modifyFontViaPanel(_ sender: Any?)
  func modifyFont(_ sender: Any?)
  func orderFrontFontPanel(_ sender: Any?)
  func orderFrontStylesPanel(_ sender: Any?)
}
extension NSObject {
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use NSFontCollection for providing filtered font lists")
  class func fontManager(_ sender: Any, willIncludeFont fontName: String) -> Bool
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use NSFontCollection for providing filtered font lists")
  func fontManager(_ sender: Any, willIncludeFont fontName: String) -> Bool
}
