
var NSIMAGE_UNAVAILABLE_MACCATALYST: Int32 { get }
extension NSImageRep.HintKey {
  @available(macOS 10.6, *)
  static let ctm: NSImageRep.HintKey
  @available(macOS 10.6, *)
  static let interpolation: NSImageRep.HintKey
  @available(macOS 10.12, *)
  static let userInterfaceLayoutDirection: NSImageRep.HintKey
}
class NSImage : NSObject {
  /*not inherited*/ init?(named name: NSImage.Name)
  @available(macOS 11.0, *)
  convenience init?(systemSymbolName symbolName: String, accessibilityDescription description: String?)
  init(size: NSSize)
  init(coder: NSCoder)
  convenience init?(data: Data)
  convenience init?(contentsOfFile fileName: String)
  convenience init?(contentsOf url: URL)
  convenience init?(byReferencingFile fileName: String)
  convenience init(byReferencing url: URL)
  convenience init?(pasteboard: NSPasteboard)
  @available(macOS 10.6, *)
  convenience init?(dataIgnoringOrientation data: Data)
  @available(macOS 10.8, *)
  convenience init(size: NSSize, flipped drawingHandlerShouldBeCalledWithFlippedContext: Bool, drawingHandler: @escaping (NSRect) -> Bool)
  var size: NSSize
  func setName(_ string: NSImage.Name?) -> Bool
  func name() -> NSImage.Name?
  @NSCopying var backgroundColor: NSColor
  var usesEPSOnResolutionMismatch: Bool
  var prefersColorMatch: Bool
  var matchesOnMultipleResolution: Bool
  @available(macOS 10.7, *)
  var matchesOnlyOnBestFittingAxis: Bool
  func draw(at point: NSPoint, from fromRect: NSRect, operation op: NSCompositingOperation, fraction delta: CGFloat)
  func draw(in rect: NSRect, from fromRect: NSRect, operation op: NSCompositingOperation, fraction delta: CGFloat)
  @available(macOS 10.6, *)
  func draw(in dstSpacePortionRect: NSRect, from srcSpacePortionRect: NSRect, operation op: NSCompositingOperation, fraction requestedAlpha: CGFloat, respectFlipped respectContextIsFlipped: Bool, hints: [NSImageRep.HintKey : Any]?)
  func drawRepresentation(_ imageRep: NSImageRep, in rect: NSRect) -> Bool
  @available(macOS 10.9, *)
  func draw(in rect: NSRect)
  func recache()
  var tiffRepresentation: Data? { get }
  func tiffRepresentation(using comp: NSBitmapImageRep.TIFFCompression, factor: Float) -> Data?
  var representations: [NSImageRep] { get }
  func addRepresentations(_ imageReps: [NSImageRep])
  func addRepresentation(_ imageRep: NSImageRep)
  func removeRepresentation(_ imageRep: NSImageRep)
  var isValid: Bool { get }
  func lockFocus()
  @available(macOS 10.6, *)
  func lockFocusFlipped(_ flipped: Bool)
  func unlockFocus()
  weak var delegate: @sil_weak NSImageDelegate?
  @available(macOS 10.5, *)
  class var imageTypes: [String] { get }
  @available(macOS 10.5, *)
  class var imageUnfilteredTypes: [String] { get }
  class func canInit(with pasteboard: NSPasteboard) -> Bool
  func cancelIncrementalLoad()
  var cacheMode: NSImage.CacheMode
  @available(macOS 10.5, *)
  var alignmentRect: NSRect
  @available(macOS 10.5, *)
  var isTemplate: Bool
  @available(macOS 10.6, *)
  var accessibilityDescription: String?
  @available(macOS 10.6, *)
  convenience init(cgImage: CGImage, size: NSSize)
  @available(macOS 10.6, *)
  func cgImage(forProposedRect proposedDestRect: UnsafeMutablePointer<NSRect>?, context referenceContext: NSGraphicsContext?, hints: [NSImageRep.HintKey : Any]?) -> CGImage?
  @available(macOS 10.6, *)
  func bestRepresentation(for rect: NSRect, context referenceContext: NSGraphicsContext?, hints: [NSImageRep.HintKey : Any]?) -> NSImageRep?
  @available(macOS 10.6, *)
  func hitTest(_ testRectDestSpace: NSRect, withDestinationRect imageRectDestSpace: NSRect, context: NSGraphicsContext?, hints: [NSImageRep.HintKey : Any]?, flipped: Bool) -> Bool
  @available(macOS 10.7, *)
  func recommendedLayerContentsScale(_ preferredContentsScale: CGFloat) -> CGFloat
  @available(macOS 10.7, *)
  func layerContents(forContentsScale layerContentsScale: CGFloat) -> Any
  @available(macOS 10.10, *)
  var capInsets: NSEdgeInsets
  @available(macOS 10.10, *)
  var resizingMode: NSImage.ResizingMode
  @available(macOS 11.0, *)
  func withSymbolConfiguration(_ configuration: NSImage.SymbolConfiguration) -> NSImage?
}

extension NSImage : _ExpressibleByImageLiteral {
}
extension NSImage : NSCopying, NSSecureCoding, NSPasteboardReading, NSPasteboardWriting {
}
protocol NSImageDelegate : NSObjectProtocol {
  optional func imageDidNotDraw(_ sender: NSImage, in rect: NSRect) -> NSImage?
  optional func image(_ image: NSImage, willLoadRepresentation rep: NSImageRep)
  @asyncHandler optional func image(_ image: NSImage, didLoadRepresentationHeader rep: NSImageRep)
  @asyncHandler optional func image(_ image: NSImage, didLoadPartOfRepresentation rep: NSImageRep, withValidRows rows: Int)
  @asyncHandler optional func image(_ image: NSImage, didLoadRepresentation rep: NSImageRep, with status: NSImage.LoadStatus)
}
extension Bundle {
  @available(macOS 10.7, *)
  func image(forResource name: NSImage.Name) -> NSImage?
  func pathForImageResource(_ name: NSImage.Name) -> String?
  @available(macOS 10.6, *)
  func urlForImageResource(_ name: NSImage.Name) -> URL?
}
extension NSImage {
  @available(macOS, introduced: 10.0, deprecated: 10.10, message: "Use +imageUnfilteredTypes instead")
  class func imageUnfilteredFileTypes() -> [String]
  @available(macOS, introduced: 10.0, deprecated: 10.10, message: "Use +imageUnfilteredTypes instead")
  class func imageUnfilteredPasteboardTypes() -> [NSPasteboard.PasteboardType]
  @available(macOS, introduced: 10.0, deprecated: 10.10, message: "Use +imageTypes instead")
  class func imageFileTypes() -> [String]
  @available(macOS, introduced: 10.0, deprecated: 10.10, message: "Use +imageTypes instead")
  class func imagePasteboardTypes() -> [NSPasteboard.PasteboardType]
  @available(macOS, introduced: 10.5, deprecated: 11.0, message: "Use -[NSWorkspace iconForFile:], -[NSWorkspace iconForFiles:], -[NSWorkspace iconForFileType:], or +[NSImage imageNamed:] instead.")
  convenience init(iconRef: IconRef)
}
extension NSImage {
  @available(macOS 11.0, *)
  class SymbolConfiguration : NSObject, NSCopying {
    /*not inherited*/ init(pointSize: CGFloat, weight: NSFont.Weight, scale: NSImage.SymbolScale)
    /*not inherited*/ init(pointSize: CGFloat, weight: NSFont.Weight)
    /*not inherited*/ init(textStyle style: NSFont.TextStyle, scale: NSImage.SymbolScale)
    /*not inherited*/ init(textStyle style: NSFont.TextStyle)
    /*not inherited*/ init(scale: NSImage.SymbolScale)
  }
  typealias Name = String
  enum LoadStatus : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case completed
    case cancelled
    case invalidData
    case unexpectedEOF
    case readError
  }
  enum CacheMode : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case `default`
    case always
    case bySize
    case never
  }
  @available(macOS 10.10, *)
  enum ResizingMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case stretch
    case tile
  }
  @available(macOS 10.5, *)
  class let addTemplateName: String
  @available(macOS 10.5, *)
  class let bluetoothTemplateName: String
  @available(macOS 10.5, *)
  class let bonjourName: String
  @available(macOS 10.6, *)
  class let bookmarksTemplateName: String
  @available(macOS 10.6, *)
  class let cautionName: String
  @available(macOS 10.5, *)
  class let computerName: String
  @available(macOS 10.5, *)
  class let enterFullScreenTemplateName: String
  @available(macOS 10.5, *)
  class let exitFullScreenTemplateName: String
  @available(macOS 10.6, *)
  class let folderName: String
  @available(macOS 10.5, *)
  class let folderBurnableName: String
  @available(macOS 10.5, *)
  class let folderSmartName: String
  @available(macOS 10.5, *)
  class let followLinkFreestandingTemplateName: String
  @available(macOS 10.6, *)
  class let homeTemplateName: String
  @available(macOS 10.5, *)
  class let iChatTheaterTemplateName: String
  @available(macOS 10.5, *)
  class let lockLockedTemplateName: String
  @available(macOS 10.5, *)
  class let lockUnlockedTemplateName: String
  @available(macOS 10.5, *)
  class let networkName: String
  @available(macOS 10.5, *)
  class let pathTemplateName: String
  @available(macOS 10.5, *)
  class let quickLookTemplateName: String
  @available(macOS 10.5, *)
  class let refreshFreestandingTemplateName: String
  @available(macOS 10.5, *)
  class let refreshTemplateName: String
  @available(macOS 10.5, *)
  class let removeTemplateName: String
  @available(macOS 10.5, *)
  class let revealFreestandingTemplateName: String
  @available(macOS 10.8, *)
  class let shareTemplateName: String
  @available(macOS 10.5, *)
  class let slideshowTemplateName: String
  @available(macOS 10.6, *)
  class let statusAvailableName: String
  @available(macOS 10.6, *)
  class let statusNoneName: String
  @available(macOS 10.6, *)
  class let statusPartiallyAvailableName: String
  @available(macOS 10.6, *)
  class let statusUnavailableName: String
  @available(macOS 10.5, *)
  class let stopProgressFreestandingTemplateName: String
  @available(macOS 10.5, *)
  class let stopProgressTemplateName: String
  @available(macOS 10.6, *)
  class let trashEmptyName: String
  @available(macOS 10.6, *)
  class let trashFullName: String
  @available(macOS 10.5, *)
  class let actionTemplateName: String
  @available(macOS 10.5, *)
  class let smartBadgeTemplateName: String
  @available(macOS 10.5, *)
  class let iconViewTemplateName: String
  @available(macOS 10.5, *)
  class let listViewTemplateName: String
  @available(macOS 10.5, *)
  class let columnViewTemplateName: String
  @available(macOS 10.5, *)
  class let flowViewTemplateName: String
  @available(macOS 10.5, *)
  class let invalidDataFreestandingTemplateName: String
  @available(macOS 10.12, *)
  class let goForwardTemplateName: String
  @available(macOS 10.12, *)
  class let goBackTemplateName: String
  @available(macOS 10.5, *)
  class let goRightTemplateName: String
  @available(macOS 10.5, *)
  class let goLeftTemplateName: String
  @available(macOS 10.5, *)
  class let rightFacingTriangleTemplateName: String
  @available(macOS 10.5, *)
  class let leftFacingTriangleTemplateName: String
  @available(macOS 10.6, *)
  class let mobileMeName: String
  @available(macOS 10.5, *)
  class let multipleDocumentsName: String
  @available(macOS 10.5, *)
  class let userAccountsName: String
  @available(macOS 10.5, *)
  class let preferencesGeneralName: String
  @available(macOS 10.5, *)
  class let advancedName: String
  @available(macOS 10.5, *)
  class let infoName: String
  @available(macOS 10.5, *)
  class let fontPanelName: String
  @available(macOS 10.5, *)
  class let colorPanelName: String
  @available(macOS 10.5, *)
  class let userName: String
  @available(macOS 10.5, *)
  class let userGroupName: String
  @available(macOS 10.5, *)
  class let everyoneName: String
  @available(macOS 10.6, *)
  class let userGuestName: String
  @available(macOS 10.6, *)
  class let menuOnStateTemplateName: String
  @available(macOS 10.6, *)
  class let menuMixedStateTemplateName: String
  @available(macOS 10.6, *)
  class let applicationIconName: String
  @available(macOS 10.12.2, *)
  class let touchBarAddDetailTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarAddTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarAlarmTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarAudioInputMuteTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarAudioInputTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarAudioOutputMuteTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarAudioOutputVolumeHighTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarAudioOutputVolumeLowTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarAudioOutputVolumeMediumTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarAudioOutputVolumeOffTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarBookmarksTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarColorPickerFillName: String
  @available(macOS 10.12.2, *)
  class let touchBarColorPickerFontName: String
  @available(macOS 10.12.2, *)
  class let touchBarColorPickerStrokeName: String
  @available(macOS 10.12.2, *)
  class let touchBarCommunicationAudioTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarCommunicationVideoTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarComposeTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarDeleteTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarDownloadTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarEnterFullScreenTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarExitFullScreenTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarFastForwardTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarFolderCopyToTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarFolderMoveToTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarFolderTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarGetInfoTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarGoBackTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarGoDownTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarGoForwardTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarGoUpTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarHistoryTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarIconViewTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarListViewTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarMailTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarNewFolderTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarNewMessageTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarOpenInBrowserTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarPauseTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarPlayPauseTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarPlayTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarQuickLookTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarRecordStartTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarRecordStopTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarRefreshTemplateName: String
  @available(macOS 10.13, *)
  class let touchBarRemoveTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarRewindTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarRotateLeftTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarRotateRightTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarSearchTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarShareTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarSidebarTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarSkipAhead15SecondsTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarSkipAhead30SecondsTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarSkipAheadTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarSkipBack15SecondsTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarSkipBack30SecondsTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarSkipBackTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarSkipToEndTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarSkipToStartTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarSlideshowTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarTagIconTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarTextBoldTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarTextBoxTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarTextCenterAlignTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarTextItalicTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarTextJustifiedAlignTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarTextLeftAlignTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarTextListTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarTextRightAlignTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarTextStrikethroughTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarTextUnderlineTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarUserAddTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarUserGroupTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarUserTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarVolumeDownTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarVolumeUpTemplateName: String
  @available(macOS 10.12.2, *)
  class let touchBarPlayheadTemplateName: String
  @available(macOS 11.0, *)
  enum SymbolScale : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case small
    case medium
    case large
  }
}
