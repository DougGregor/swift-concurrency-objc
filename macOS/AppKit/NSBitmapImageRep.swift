
extension NSBitmapImageRep {
  enum TIFFCompression : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case none
    case ccittfax3
    case ccittfax4
    case lzw
    case jpeg
    case next
    case packBits
    case oldJPEG
  }
  enum FileType : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case tiff
    case bmp
    case gif
    case jpeg
    case png
    case jpeg2000
  }
  enum LoadStatus : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unknownType
    case readingHeader
    case willNeedAllData
    case invalidData
    case unexpectedEOF
    case completed
  }
  struct Format : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var alphaFirst: NSBitmapImageRep.Format { get }
    static var alphaNonpremultiplied: NSBitmapImageRep.Format { get }
    static var floatingPointSamples: NSBitmapImageRep.Format { get }
    @available(macOS 10.10, *)
    static var sixteenBitLittleEndian: NSBitmapImageRep.Format { get }
    @available(macOS 10.10, *)
    static var thirtyTwoBitLittleEndian: NSBitmapImageRep.Format { get }
    @available(macOS 10.10, *)
    static var sixteenBitBigEndian: NSBitmapImageRep.Format { get }
    @available(macOS 10.10, *)
    static var thirtyTwoBitBigEndian: NSBitmapImageRep.Format { get }
  }
  struct PropertyKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension NSBitmapImageRep.PropertyKey {
  static let compressionMethod: NSBitmapImageRep.PropertyKey
  static let compressionFactor: NSBitmapImageRep.PropertyKey
  static let ditherTransparency: NSBitmapImageRep.PropertyKey
  static let rgbColorTable: NSBitmapImageRep.PropertyKey
  static let interlaced: NSBitmapImageRep.PropertyKey
  static let colorSyncProfileData: NSBitmapImageRep.PropertyKey
  static let frameCount: NSBitmapImageRep.PropertyKey
  static let currentFrame: NSBitmapImageRep.PropertyKey
  static let currentFrameDuration: NSBitmapImageRep.PropertyKey
  static let loopCount: NSBitmapImageRep.PropertyKey
  static let gamma: NSBitmapImageRep.PropertyKey
  static let progressive: NSBitmapImageRep.PropertyKey
  static let exifData: NSBitmapImageRep.PropertyKey
  @available(macOS 10.5, *)
  static let fallbackBackgroundColor: NSBitmapImageRep.PropertyKey
}
class NSBitmapImageRep : NSImageRep, NSSecureCoding {
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Use -[NSView cacheDisplayInRect:toBitmapImageRep:] to snapshot a view.")
  init?(focusedViewRect rect: NSRect)
  init?(bitmapDataPlanes planes: UnsafeMutablePointer<UnsafeMutablePointer<UInt8>?>?, pixelsWide width: Int, pixelsHigh height: Int, bitsPerSample bps: Int, samplesPerPixel spp: Int, hasAlpha alpha: Bool, isPlanar: Bool, colorSpaceName: NSColorSpaceName, bytesPerRow rBytes: Int, bitsPerPixel pBits: Int)
  init?(bitmapDataPlanes planes: UnsafeMutablePointer<UnsafeMutablePointer<UInt8>?>?, pixelsWide width: Int, pixelsHigh height: Int, bitsPerSample bps: Int, samplesPerPixel spp: Int, hasAlpha alpha: Bool, isPlanar: Bool, colorSpaceName: NSColorSpaceName, bitmapFormat: NSBitmapImageRep.Format, bytesPerRow rBytes: Int, bitsPerPixel pBits: Int)
  @available(macOS 10.5, *)
  init(cgImage: CGImage)
  @available(macOS 10.5, *)
  init(ciImage: CIImage)
  class func imageReps(with data: Data) -> [NSImageRep]
  init?(data: Data)
  var bitmapData: UnsafeMutablePointer<UInt8>? { get }
  func getBitmapDataPlanes(_ data: UnsafeMutablePointer<UnsafeMutablePointer<UInt8>?>)
  var isPlanar: Bool { get }
  var samplesPerPixel: Int { get }
  var bitsPerPixel: Int { get }
  var bytesPerRow: Int { get }
  var bytesPerPlane: Int { get }
  var numberOfPlanes: Int { get }
  var bitmapFormat: NSBitmapImageRep.Format { get }
  func getCompression(_ compression: UnsafeMutablePointer<NSBitmapImageRep.TIFFCompression>?, factor: UnsafeMutablePointer<Float>?)
  func setCompression(_ compression: NSBitmapImageRep.TIFFCompression, factor: Float)
  var tiffRepresentation: Data? { get }
  func tiffRepresentation(using comp: NSBitmapImageRep.TIFFCompression, factor: Float) -> Data?
  class func tiffRepresentationOfImageReps(in array: [NSImageRep]) -> Data?
  class func tiffRepresentationOfImageReps(in array: [NSImageRep], using comp: NSBitmapImageRep.TIFFCompression, factor: Float) -> Data?
  class func getTIFFCompressionTypes(_ list: UnsafeMutablePointer<UnsafePointer<NSBitmapImageRep.TIFFCompression>?>, count numTypes: UnsafeMutablePointer<Int>)
  class func localizedName(forTIFFCompressionType compression: NSBitmapImageRep.TIFFCompression) -> String?
  func canBeCompressed(using compression: NSBitmapImageRep.TIFFCompression) -> Bool
  func colorize(byMappingGray midPoint: CGFloat, to midPointColor: NSColor?, blackMapping shadowColor: NSColor?, whiteMapping lightColor: NSColor?)
  init(forIncrementalLoad: ())
  func incrementalLoad(from data: Data, complete: Bool) -> Int
  func setColor(_ color: NSColor, atX x: Int, y: Int)
  func colorAt(x: Int, y: Int) -> NSColor?
  func getPixel(_ p: UnsafeMutablePointer<Int>, atX x: Int, y: Int)
  func setPixel(_ p: UnsafeMutablePointer<Int>, atX x: Int, y: Int)
  @available(macOS 10.5, *)
  var cgImage: CGImage? { get }
  @available(macOS 10.6, *)
  var colorSpace: NSColorSpace { get }
  @available(macOS 10.6, *)
  func converting(to targetSpace: NSColorSpace, renderingIntent: NSColorRenderingIntent) -> NSBitmapImageRep?
  @available(macOS 10.6, *)
  func retagging(with newSpace: NSColorSpace) -> NSBitmapImageRep?
}
extension NSBitmapImageRep {
  class func representationOfImageReps(in imageReps: [NSImageRep], using storageType: NSBitmapImageRep.FileType, properties: [NSBitmapImageRep.PropertyKey : Any]) -> Data?
  func representation(using storageType: NSBitmapImageRep.FileType, properties: [NSBitmapImageRep.PropertyKey : Any]) -> Data?
  func setProperty(_ property: NSBitmapImageRep.PropertyKey, withValue value: Any?)
  func value(forProperty property: NSBitmapImageRep.PropertyKey) -> Any?
}
