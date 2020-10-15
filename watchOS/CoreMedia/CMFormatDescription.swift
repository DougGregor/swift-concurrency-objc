
var kCMFormatDescriptionError_InvalidParameter: OSStatus { get }
var kCMFormatDescriptionError_AllocationFailed: OSStatus { get }
var kCMFormatDescriptionError_ValueNotAvailable: OSStatus { get }
@available(watchOS 6.0, *)
class CMFormatDescription : _CFObject {
}

@available(watchOS 6.0, *)
extension CMFormatDescription {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct Extensions {
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    struct Key : _CMObjectiveCBridgeableWithRawValue {
      static let originalCompressionSettings: CMFormatDescription.Extensions.Key
      static let sampleDescriptionExtensionAtoms: CMFormatDescription.Extensions.Key
      static let verbatimSampleDescription: CMFormatDescription.Extensions.Key
      static let verbatimISOSampleEntry: CMFormatDescription.Extensions.Key
      static let formatName: CMFormatDescription.Extensions.Key
      static let depth: CMFormatDescription.Extensions.Key
      static let cleanAperture: CMFormatDescription.Extensions.Key
      static let fieldCount: CMFormatDescription.Extensions.Key
      static let fieldDetail: CMFormatDescription.Extensions.Key
      static let pixelAspectRatio: CMFormatDescription.Extensions.Key
      static let colorPrimaries: CMFormatDescription.Extensions.Key
      static let transferFunction: CMFormatDescription.Extensions.Key
      static let gammaLevel: CMFormatDescription.Extensions.Key
      static let yCbCrMatrix: CMFormatDescription.Extensions.Key
      static let fullRangeVideo: CMFormatDescription.Extensions.Key
      static let iccProfile: CMFormatDescription.Extensions.Key
      static let bytesPerRow: CMFormatDescription.Extensions.Key
      static let chromaLocationTopField: CMFormatDescription.Extensions.Key
      static let chromaLocationBottomField: CMFormatDescription.Extensions.Key
      static let conformsToMPEG2VideoProfile: CMFormatDescription.Extensions.Key
      static let temporalQuality: CMFormatDescription.Extensions.Key
      static let spatialQuality: CMFormatDescription.Extensions.Key
      static let version: CMFormatDescription.Extensions.Key
      static let revisionLevel: CMFormatDescription.Extensions.Key
      static let vendor: CMFormatDescription.Extensions.Key
      static let masteringDisplayColorVolume: CMFormatDescription.Extensions.Key
      static let contentLightLevelInfo: CMFormatDescription.Extensions.Key
      static let alternativeTransferCharacteristics: CMFormatDescription.Extensions.Key
      static let auxiliaryTypeInfo: CMFormatDescription.Extensions.Key
      static let alphaChannelMode: CMFormatDescription.Extensions.Key
      static let containsAlphaChannel: CMFormatDescription.Extensions.Key
      static let displayFlags: CMFormatDescription.Extensions.Key
      static let backgroundColor: CMFormatDescription.Extensions.Key
      static let defaultTextBox: CMFormatDescription.Extensions.Key
      static let defaultStyle: CMFormatDescription.Extensions.Key
      static let horizontalJustification: CMFormatDescription.Extensions.Key
      static let verticalJustification: CMFormatDescription.Extensions.Key
      static let fontTable: CMFormatDescription.Extensions.Key
      static let textJustification: CMFormatDescription.Extensions.Key
      static let defaultFontName: CMFormatDescription.Extensions.Key
      static let sourceReferenceName: CMFormatDescription.Extensions.Key
      static let metadataKeyTable: CMFormatDescription.Extensions.Key
    }
    struct Value {
      var propertyListRepresentation: CFPropertyList
      init(_ plist: CFPropertyList)
      static func number<T>(_ value: T) -> CMFormatDescription.Extensions.Value where T : Numeric
      static func string(_ value: String) -> CMFormatDescription.Extensions.Value
      static func string(_ value: CFString) -> CMFormatDescription.Extensions.Value
      static func cleanAperture<Width, Height, Horizontal, Vertical>(width: Width, height: Height, horizontalOffet: Horizontal, verticalOffset: Vertical) -> CMFormatDescription.Extensions.Value where Width : Numeric, Height : Numeric, Horizontal : Numeric, Vertical : Numeric
      static func cleanAperture(width: (numerator: Int, denominator: Int), height: (numerator: Int, denominator: Int), horizontalOffet: (numerator: Int, denominator: Int), verticalOffset: (numerator: Int, denominator: Int)) -> CMFormatDescription.Extensions.Value
      struct FieldDetail : _CMObjectiveCBridgeableWithRawValue {
        static let temporalTopFirst: CMFormatDescription.Extensions.Value.FieldDetail
        static let temporalBottomFirst: CMFormatDescription.Extensions.Value.FieldDetail
        static let spatialFirstLineEarly: CMFormatDescription.Extensions.Value.FieldDetail
        static let spatialFirstLineLate: CMFormatDescription.Extensions.Value.FieldDetail
      }
      static func fieldDetail(_ fieldDetail: CMFormatDescription.Extensions.Value.FieldDetail) -> CMFormatDescription.Extensions.Value
      static func pixelAspectRatio<Horizontal, Vertical>(horizontalSpacing: Horizontal, verticalSpacing: Vertical) -> CMFormatDescription.Extensions.Value where Horizontal : Numeric, Vertical : Numeric
      struct ColorPrimaries : _CMObjectiveCBridgeableWithRawValue {
        static let itu_R_709_2: CMFormatDescription.Extensions.Value.ColorPrimaries
        static let ebu_3213: CMFormatDescription.Extensions.Value.ColorPrimaries
        static let smpte_C: CMFormatDescription.Extensions.Value.ColorPrimaries
        static let dci_P3: CMFormatDescription.Extensions.Value.ColorPrimaries
        static let p3_D65: CMFormatDescription.Extensions.Value.ColorPrimaries
        static let itu_R_2020: CMFormatDescription.Extensions.Value.ColorPrimaries
        static let p22: CMFormatDescription.Extensions.Value.ColorPrimaries
      }
      static func colorPrimaries(_ colorPrimaries: CMFormatDescription.Extensions.Value.ColorPrimaries) -> CMFormatDescription.Extensions.Value
      struct TransferFunction : _CMObjectiveCBridgeableWithRawValue {
        static let itu_R_709_2: CMFormatDescription.Extensions.Value.TransferFunction
        static let smpte_240M_1995: CMFormatDescription.Extensions.Value.TransferFunction
        static let useGamma: CMFormatDescription.Extensions.Value.TransferFunction
        static let itu_R_2020: CMFormatDescription.Extensions.Value.TransferFunction
        static let smpte_ST_428_1: CMFormatDescription.Extensions.Value.TransferFunction
        static let smpte_ST_2084_PQ: CMFormatDescription.Extensions.Value.TransferFunction
        static let itu_R_2100_HLG: CMFormatDescription.Extensions.Value.TransferFunction
        static let linear: CMFormatDescription.Extensions.Value.TransferFunction
        static let sRGB: CMFormatDescription.Extensions.Value.TransferFunction
      }
      static func transferFunction(_ transferFunction: CMFormatDescription.Extensions.Value.TransferFunction) -> CMFormatDescription.Extensions.Value
      struct YCbCrMatrix : _CMObjectiveCBridgeableWithRawValue {
        static let itu_R_709_2: CMFormatDescription.Extensions.Value.YCbCrMatrix
        static let itu_R_601_4: CMFormatDescription.Extensions.Value.YCbCrMatrix
        static let smpted_240M_1995: CMFormatDescription.Extensions.Value.YCbCrMatrix
        static let itu_R_2020: CMFormatDescription.Extensions.Value.YCbCrMatrix
      }
      static func yCbCrMatrix(_ yCbCrMatrix: CMFormatDescription.Extensions.Value.YCbCrMatrix) -> CMFormatDescription.Extensions.Value
      struct ChromaLocation : _CMObjectiveCBridgeableWithRawValue {
        static let left: CMFormatDescription.Extensions.Value.ChromaLocation
        static let center: CMFormatDescription.Extensions.Value.ChromaLocation
        static let topLeft: CMFormatDescription.Extensions.Value.ChromaLocation
        static let top: CMFormatDescription.Extensions.Value.ChromaLocation
        static let bottomLeft: CMFormatDescription.Extensions.Value.ChromaLocation
        static let bottom: CMFormatDescription.Extensions.Value.ChromaLocation
        static let dv420: CMFormatDescription.Extensions.Value.ChromaLocation
      }
      static func chromaLocation(_ chromaLocation: CMFormatDescription.Extensions.Value.ChromaLocation) -> CMFormatDescription.Extensions.Value
      struct MPEG2VideoProfile : _CMFormatDescriptionFourCCConvertible {
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        init(rawValue: Int32)
        static let hdv_720p30: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let hdv_1080i60: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let hdv_1080i50: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let hdv_720p24: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let hdv_720p25: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let hdv_1080p24: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let hdv_1080p25: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let hdv_1080p30: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let hdv_720p60: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let hdv_720p50: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_HD_1080i60_VBR35: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_HD_1080i50_VBR35: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_HD_1080p24_VBR35: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_HD_1080p25_VBR35: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_HD_1080p30_VBR35: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_EX_720p24_VBR35: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_EX_720p25_VBR35: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_EX_720p30_VBR35: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_EX_720p50_VBR35: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_EX_720p60_VBR35: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_EX_1080i60_VBR35: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_EX_1080i50_VBR35: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_EX_1080p24_VBR35: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_EX_1080p25_VBR35: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_EX_1080p30_VBR35: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_HD422_720p50_CBR50: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_HD422_720p60_CBR50: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_HD422_1080i60_CBR50: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_HD422_1080i50_CBR50: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_HD422_1080p24_CBR50: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_HD422_1080p25_CBR50: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_HD422_1080p30_CBR50: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_HD_540p: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_HD422_540p: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_HD422_720p24_CBR50: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_HD422_720p25_CBR50: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_HD422_720p30_CBR50: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xf: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
      }
      static func mpeg2VideoProfile(_ mpeg2VideoProfile: CMFormatDescription.Extensions.Value.MPEG2VideoProfile) -> CMFormatDescription.Extensions.Value
      struct Vendor : _CMObjectiveCBridgeableWithRawValue {
        static let apple: CMFormatDescription.Extensions.Value.Vendor
      }
      static func vendor(_ vendor: CMFormatDescription.Extensions.Value.Vendor) -> CMFormatDescription.Extensions.Value
      static func vendor(_ fourCC: String) -> CMFormatDescription.Extensions.Value
      struct AlphaChannelMode : _CMObjectiveCBridgeableWithRawValue {
        static let straightAlpha: CMFormatDescription.Extensions.Value.AlphaChannelMode
        static let premultipliedAlpha: CMFormatDescription.Extensions.Value.AlphaChannelMode
      }
      static func alphaChannelMode(_ alphaChannelMode: CMFormatDescription.Extensions.Value.AlphaChannelMode) -> CMFormatDescription.Extensions.Value
      static func qtTextColor(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> CMFormatDescription.Extensions.Value
      static func mobile3GPPTextColor(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> CMFormatDescription.Extensions.Value
      static func fontTable(_ fontTable: [Int : String]) -> CMFormatDescription.Extensions.Value
      struct FontFace : OptionSet, _CMObjectiveCBridgeableWithRawValue {
        static let bold: CMFormatDescription.Extensions.Value.FontFace
        static let italic: CMFormatDescription.Extensions.Value.FontFace
        static let underline: CMFormatDescription.Extensions.Value.FontFace
        static let all: CMFormatDescription.Extensions.Value.FontFace
      }
      static func qtTextDefaultStyle(startChar: Int, height: Int, ascent: Int, localFontID: Int, fontFace: CMFormatDescription.Extensions.Value.FontFace, fontSize: Int, foregroundColor: CMFormatDescription.Extensions.Value, defaultFontName: String?) -> CMFormatDescription.Extensions.Value
      static func mobile3GPPTextDefaultStyle(startChar: Int, endChar: Int, localFontID: Int, fontFace: CMFormatDescription.Extensions.Value.FontFace, fontSize: Int, foregroundColor: CMFormatDescription.Extensions.Value) -> CMFormatDescription.Extensions.Value
      static func textRect(top: Int, left: Int, bottom: Int, right: Int) -> CMFormatDescription.Extensions.Value
      struct TextDisplayFlags : _CMObjectiveCBridgeableWithRawValue {
        static let scrollIn: CMFormatDescription.Extensions.Value.TextDisplayFlags
        static let scrollOut: CMFormatDescription.Extensions.Value.TextDisplayFlags
        static let scrollDirectionMask: CMFormatDescription.Extensions.Value.TextDisplayFlags
        static let scrollDirection_bottomToTop: CMFormatDescription.Extensions.Value.TextDisplayFlags
        static let scrollDirection_rightToLeft: CMFormatDescription.Extensions.Value.TextDisplayFlags
        static let scrollDirection_topToBottom: CMFormatDescription.Extensions.Value.TextDisplayFlags
        static let scrollDirection_leftToRight: CMFormatDescription.Extensions.Value.TextDisplayFlags
        static let continuousKaraoke: CMFormatDescription.Extensions.Value.TextDisplayFlags
        static let writeTextVertically: CMFormatDescription.Extensions.Value.TextDisplayFlags
        static let fillTextRegion: CMFormatDescription.Extensions.Value.TextDisplayFlags
        static let obeySubtitleFormatting: CMFormatDescription.Extensions.Value.TextDisplayFlags
        static let forcedSubtitlesPresent: CMFormatDescription.Extensions.Value.TextDisplayFlags
        static let allSubtitlesForced: CMFormatDescription.Extensions.Value.TextDisplayFlags
        var scrollDirection: CMFormatDescription.Extensions.Value.TextDisplayFlags { get }
      }
      static func textDisplayFlags(_ textDisplayFlags: Set<CMFormatDescription.Extensions.Value.TextDisplayFlags>) -> CMFormatDescription.Extensions.Value
      struct TextJustification : _CMObjectiveCBridgeableWithRawValue {
        static let left: CMFormatDescription.Extensions.Value.TextJustification
        static let top: CMFormatDescription.Extensions.Value.TextJustification
        static let centered: CMFormatDescription.Extensions.Value.TextJustification
        static let bottom: CMFormatDescription.Extensions.Value.TextJustification
        static let right: CMFormatDescription.Extensions.Value.TextJustification
      }
      static func textJustification(_ textJustification: CMFormatDescription.Extensions.Value.TextJustification) -> CMFormatDescription.Extensions.Value
      static func sourceReferenceName(value: String, langCode: Int) -> CMFormatDescription.Extensions.Value
    }
    init()
    init(base: [CFString : CFPropertyList]?)
    subscript(key: CMFormatDescription.Extensions.Key) -> CMFormatDescription.Extensions.Value?
    subscript(key: CFString) -> CFPropertyList?
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMFormatDescription : _CMFormatDescriptionInitTrampoline {
}

@available(watchOS 6.0, *)
extension CMFormatDescription {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct Error {
    static let invalidParameter: NSError
    static let allocationFailed: NSError
    static let valueNotAvailable: NSError
  }
}

@available(watchOS 6.0, *)
extension CMFormatDescription {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct MediaType : _CMFormatDescriptionFourCCConvertible {
    static let video: CMFormatDescription.MediaType
    static let audio: CMFormatDescription.MediaType
    static let muxed: CMFormatDescription.MediaType
    static let text: CMFormatDescription.MediaType
    static let closedCaption: CMFormatDescription.MediaType
    static let subtitle: CMFormatDescription.MediaType
    static let timeCode: CMFormatDescription.MediaType
    static let metadata: CMFormatDescription.MediaType
  }
}

@available(watchOS 6.0, *)
extension CMFormatDescription {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct MediaSubType : _CMFormatDescriptionFourCCConvertible {
    static let linearPCM: CMFormatDescription.MediaSubType
    static let ac3: CMFormatDescription.MediaSubType
    static let iec60958AC3: CMFormatDescription.MediaSubType
    static let appleIMA4: CMFormatDescription.MediaSubType
    static let mpeg4AAC: CMFormatDescription.MediaSubType
    static let mpeg4CELP: CMFormatDescription.MediaSubType
    static let mpeg4HVXC: CMFormatDescription.MediaSubType
    static let mpeg4TwinVQ: CMFormatDescription.MediaSubType
    static let mace3: CMFormatDescription.MediaSubType
    static let mace6: CMFormatDescription.MediaSubType
    static let uLaw: CMFormatDescription.MediaSubType
    static let aLaw: CMFormatDescription.MediaSubType
    static let qDesign: CMFormatDescription.MediaSubType
    static let qDesign2: CMFormatDescription.MediaSubType
    static let qualcomm: CMFormatDescription.MediaSubType
    static let mpegLayer1: CMFormatDescription.MediaSubType
    static let mpegLayer2: CMFormatDescription.MediaSubType
    static let mpegLayer3: CMFormatDescription.MediaSubType
    static let timeCode: CMFormatDescription.MediaSubType
    static let midiStream: CMFormatDescription.MediaSubType
    static let parameterValueStream: CMFormatDescription.MediaSubType
    static let appleLossless: CMFormatDescription.MediaSubType
    static let mpeg4AAC_HE: CMFormatDescription.MediaSubType
    static let mpeg4AAC_LD: CMFormatDescription.MediaSubType
    static let mpeg4AAC_ELD: CMFormatDescription.MediaSubType
    static let mpeg4AAC_ELD_SBR: CMFormatDescription.MediaSubType
    static let mpeg4AAC_ELD_V2: CMFormatDescription.MediaSubType
    static let mpeg4AAC_HE_V2: CMFormatDescription.MediaSubType
    static let mpeg4AAC_Spatial: CMFormatDescription.MediaSubType
    static let mpegD_USAC: CMFormatDescription.MediaSubType
    static let amr: CMFormatDescription.MediaSubType
    static let amr_WB: CMFormatDescription.MediaSubType
    static let audible: CMFormatDescription.MediaSubType
    static let iLBC: CMFormatDescription.MediaSubType
    static let dviIntelIMA: CMFormatDescription.MediaSubType
    static let microsoftGSM: CMFormatDescription.MediaSubType
    static let aes3: CMFormatDescription.MediaSubType
    static let enhancedAC3: CMFormatDescription.MediaSubType
    static let flac: CMFormatDescription.MediaSubType
    static let opus: CMFormatDescription.MediaSubType
    static let aacLCProtected: CMFormatDescription.MediaSubType
    static let aacAudibleProtected: CMFormatDescription.MediaSubType
    static let pixelFormat_32ARGB: CMFormatDescription.MediaSubType
    static let pixelFormat_32BGRA: CMFormatDescription.MediaSubType
    static let pixelFormat_24RGB: CMFormatDescription.MediaSubType
    static let pixelFormat_16BE555: CMFormatDescription.MediaSubType
    static let pixelFormat_16BE565: CMFormatDescription.MediaSubType
    static let pixelFormat_16LE555: CMFormatDescription.MediaSubType
    static let pixelFormat_16LE565: CMFormatDescription.MediaSubType
    static let pixelFormat_16LE5551: CMFormatDescription.MediaSubType
    static let pixelFormat_422YpCbCr8: CMFormatDescription.MediaSubType
    static let pixelFormat_422YpCbCr8_yuvs: CMFormatDescription.MediaSubType
    static let pixelFormat_444YpCbCr8: CMFormatDescription.MediaSubType
    static let pixelFormat_4444YpCbCrA8: CMFormatDescription.MediaSubType
    static let pixelFormat_422YpCbCr16: CMFormatDescription.MediaSubType
    static let pixelFormat_422YpCbCr10: CMFormatDescription.MediaSubType
    static let pixelFormat_444YpCbCr10: CMFormatDescription.MediaSubType
    static let pixelFormat_8IndexedGray_WhiteIsZero: CMFormatDescription.MediaSubType
    static let animation: CMFormatDescription.MediaSubType
    static let cinepak: CMFormatDescription.MediaSubType
    static let jpeg: CMFormatDescription.MediaSubType
    static let jpeg_OpenDML: CMFormatDescription.MediaSubType
    static let sorensonVideo: CMFormatDescription.MediaSubType
    static let sorensonVideo3: CMFormatDescription.MediaSubType
    static let h263: CMFormatDescription.MediaSubType
    static let h264: CMFormatDescription.MediaSubType
    static let hevc: CMFormatDescription.MediaSubType
    static let hevcWithAlpha: CMFormatDescription.MediaSubType
    static let mpeg4Video: CMFormatDescription.MediaSubType
    static let mpeg2Video: CMFormatDescription.MediaSubType
    static let mpeg1Video: CMFormatDescription.MediaSubType
    static let dvcNTSC: CMFormatDescription.MediaSubType
    static let dvcPAL: CMFormatDescription.MediaSubType
    static let dvcProPAL: CMFormatDescription.MediaSubType
    static let dvcPro50NTSC: CMFormatDescription.MediaSubType
    static let dvcPro50PAL: CMFormatDescription.MediaSubType
    static let dvcPROHD720p60: CMFormatDescription.MediaSubType
    static let dvcPROHD720p50: CMFormatDescription.MediaSubType
    static let dvcPROHD1080i60: CMFormatDescription.MediaSubType
    static let dvcPROHD1080i50: CMFormatDescription.MediaSubType
    static let dvcPROHD1080p30: CMFormatDescription.MediaSubType
    static let dvcPROHD1080p25: CMFormatDescription.MediaSubType
    static let proRes4444XQ: CMFormatDescription.MediaSubType
    static let proRes4444: CMFormatDescription.MediaSubType
    static let proRes422HQ: CMFormatDescription.MediaSubType
    static let proRes422: CMFormatDescription.MediaSubType
    static let proRes422LT: CMFormatDescription.MediaSubType
    static let proRes422Proxy: CMFormatDescription.MediaSubType
    static let proResRAW: CMFormatDescription.MediaSubType
    static let proResRAWHQ: CMFormatDescription.MediaSubType
    static let mpeg1System: CMFormatDescription.MediaSubType
    static let mpeg2Transport: CMFormatDescription.MediaSubType
    static let mpeg2Program: CMFormatDescription.MediaSubType
    static let dv: CMFormatDescription.MediaSubType
    static let cea608: CMFormatDescription.MediaSubType
    static let cea708: CMFormatDescription.MediaSubType
    static let atsc: CMFormatDescription.MediaSubType
    static let qt: CMFormatDescription.MediaSubType
    static let mobile3GPP: CMFormatDescription.MediaSubType
    static let webVTT: CMFormatDescription.MediaSubType
    static let timeCode32: CMFormatDescription.MediaSubType
    static let timeCode64: CMFormatDescription.MediaSubType
    static let counter32: CMFormatDescription.MediaSubType
    static let counter64: CMFormatDescription.MediaSubType
    static let icy: CMFormatDescription.MediaSubType
    static let id3: CMFormatDescription.MediaSubType
    static let boxed: CMFormatDescription.MediaSubType
    static let emsg: CMFormatDescription.MediaSubType
  }
}

@available(watchOS 6.0, *)
extension CMFormatDescription {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  static var typeID: CFTypeID { get }
}

@available(watchOS 6.0, *)
extension CMFormatDescription {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func equalTo(_ otherFormatDescription: CMFormatDescription, extensionKeysToIgnore: [CMFormatDescription.Extensions.Key] = [], sampleDescriptionExtensionAtomKeysToIgnore: [String] = []) -> Bool
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var mediaType: CMFormatDescription.MediaType { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var mediaSubType: CMFormatDescription.MediaSubType { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var extensions: CMFormatDescription.Extensions { get }
}

@available(watchOS 6.0, *)
extension CMFormatDescription {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  static func == (lhs: CMFormatDescription, rhs: CMFormatDescription) -> Bool
}

@available(watchOS 6.0, *)
extension CMFormatDescription {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var audioStreamBasicDescription: AudioStreamBasicDescription? { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func withMagicCookie<R>(_ body: (UnsafeRawBufferPointer?) throws -> R) rethrows -> R
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var magicCookie: Data? { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var audioChannelLayout: ManagedAudioChannelLayout? { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var audioFormatList: [AudioFormatListItem] { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var richestDecodableFormat: AudioFormatListItem? { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var mostCompatibleFormat: AudioFormatListItem? { get }
}

@available(watchOS 6.0, *)
extension CMFormatDescription {
  struct EqualityMask : OptionSet {
    static let streamBasicDescription: CMFormatDescription.EqualityMask
    static let magicCookie: CMFormatDescription.EqualityMask
    static let channelLayout: CMFormatDescription.EqualityMask
    static let extensions: CMFormatDescription.EqualityMask
    static let all: CMFormatDescription.EqualityMask
  }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func equalTo(_ otherFormatDescription: CMAudioFormatDescription, equalityMask: CMFormatDescription.EqualityMask = .all) -> (Bool, equalityMask: CMFormatDescription.EqualityMask)
}

@available(watchOS 6.0, *)
extension CMFormatDescription {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct ParameterSetCollection : RandomAccessCollection {
  }
}

@available(watchOS 6.0, *)
extension CMFormatDescription {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var nalUnitHeaderLength: Int? { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var parameterSets: CMFormatDescription.ParameterSetCollection { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var dimensions: CMVideoDimensions { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func presentationDimensions(usePixelAspectRatio: Bool = true, useCleanAperture: Bool = true) -> CGSize
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func cleanAperture(originIsAtTopLeft: Bool) -> CGRect
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  static var extensionKeysCommonWithImageBuffers: [CMFormatDescription.Extensions.Key] { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func matchesImageBuffer(_ imageBuffer: CVImageBuffer) -> Bool
}

@available(watchOS 6.0, *)
extension CMFormatDescription {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func displayFlags() throws -> CMFormatDescription.Extensions.Value.TextDisplayFlags
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func justification() throws -> (horizontal: CMFormatDescription.Extensions.Value.TextJustification, vertical: CMFormatDescription.Extensions.Value.TextJustification)
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func defaultTextBox(originIsAtTopLeft: Bool, heightOfTextTrack: CGFloat) throws -> CGRect
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func defaultStyle() throws -> (localFontID: Int, bold: Bool, italic: Bool, underline: Bool, fontSize: CGFloat, colorComponents: [CGFloat])
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func fontName(localFontID: Int) throws -> String
}

@available(watchOS 6.0, *)
extension CMFormatDescription {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct TimeCode {
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    struct Flag : OptionSet {
      static let dropFrame: CMFormatDescription.TimeCode.Flag
      static let twentyFourHourMax: CMFormatDescription.TimeCode.Flag
      static let negTimesOK: CMFormatDescription.TimeCode.Flag
    }
  }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var frameDuration: CMTime { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var frameQuanta: UInt32 { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var timeCodeFlags: CMFormatDescription.TimeCode.Flag { get }
}

@available(watchOS 6.0, *)
extension CMFormatDescription {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func keyWithLocalID(_ localKeyID: OSType) -> [String : CFPropertyList]?
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var identifiers: [String] { get }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMFormatDescription.Extensions : Collection {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMFormatDescription.Extensions : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMFormatDescription.Extensions : Hashable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMFormatDescription.Extensions.Value : Hashable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMFormatDescription.Extensions.Index : Comparable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMFormatDescription.Extensions.Index : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMFormatDescription.Extensions.Index : Hashable {
}
@available(watchOS 6.0, *)
typealias CMMediaType = FourCharCode
var kCMMediaType_Video: CMMediaType { get }
var kCMMediaType_Audio: CMMediaType { get }
var kCMMediaType_Muxed: CMMediaType { get }
var kCMMediaType_Text: CMMediaType { get }
var kCMMediaType_ClosedCaption: CMMediaType { get }
var kCMMediaType_Subtitle: CMMediaType { get }
var kCMMediaType_TimeCode: CMMediaType { get }
var kCMMediaType_Metadata: CMMediaType { get }
@available(watchOS 6.0, *)
func CMFormatDescriptionCreate(allocator: CFAllocator?, mediaType: CMMediaType, mediaSubType: FourCharCode, extensions: CFDictionary?, formatDescriptionOut: UnsafeMutablePointer<CMFormatDescription?>) -> OSStatus
@available(watchOS 6.0, *)
func CMFormatDescriptionGetTypeID() -> CFTypeID
@available(watchOS 6.0, *)
func CMFormatDescriptionEqual(_ formatDescription: CMFormatDescription?, otherFormatDescription: CMFormatDescription?) -> Bool
@available(watchOS 6.0, *)
func CMFormatDescriptionEqualIgnoringExtensionKeys(_ formatDescription: CMFormatDescription?, otherFormatDescription: CMFormatDescription?, extensionKeysToIgnore formatDescriptionExtensionKeysToIgnore: CFTypeRef?, sampleDescriptionExtensionAtomKeysToIgnore: CFTypeRef?) -> Bool
@available(watchOS 6.0, *)
func CMFormatDescriptionGetMediaType(_ desc: CMFormatDescription) -> CMMediaType
@available(watchOS 6.0, *)
func CMFormatDescriptionGetMediaSubType(_ desc: CMFormatDescription) -> FourCharCode
@available(watchOS 6.0, *)
func CMFormatDescriptionGetExtensions(_ desc: CMFormatDescription) -> CFDictionary?
@available(watchOS 6.0, *)
let kCMFormatDescriptionExtension_OriginalCompressionSettings: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionExtension_SampleDescriptionExtensionAtoms: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionExtension_VerbatimSampleDescription: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionExtension_VerbatimISOSampleEntry: CFString
@available(watchOS 6.0, *)
func CMFormatDescriptionGetExtension(_ desc: CMFormatDescription, extensionKey: CFString) -> CFPropertyList?
@available(watchOS 6.0, *)
typealias CMAudioCodecType = FourCharCode
var kCMAudioCodecType_AAC_LCProtected: CMAudioCodecType { get }
var kCMAudioCodecType_AAC_AudibleProtected: CMAudioCodecType { get }
@available(watchOS 6.0, *)
typealias CMAudioFormatDescription = CMFormatDescription
@available(watchOS 6.0, *)
func CMAudioFormatDescriptionCreate(allocator: CFAllocator?, asbd: UnsafePointer<AudioStreamBasicDescription>, layoutSize: Int, layout: UnsafePointer<AudioChannelLayout>?, magicCookieSize: Int, magicCookie: UnsafeRawPointer?, extensions: CFDictionary?, formatDescriptionOut: UnsafeMutablePointer<CMAudioFormatDescription?>) -> OSStatus
@available(watchOS 6.0, *)
func CMAudioFormatDescriptionGetStreamBasicDescription(_ desc: CMAudioFormatDescription) -> UnsafePointer<AudioStreamBasicDescription>?
@available(watchOS 6.0, *)
func CMAudioFormatDescriptionGetMagicCookie(_ desc: CMAudioFormatDescription, sizeOut: UnsafeMutablePointer<Int>?) -> UnsafeRawPointer?
@available(watchOS 6.0, *)
func CMAudioFormatDescriptionGetChannelLayout(_ desc: CMAudioFormatDescription, sizeOut: UnsafeMutablePointer<Int>?) -> UnsafePointer<AudioChannelLayout>?
@available(watchOS 6.0, *)
func CMAudioFormatDescriptionGetFormatList(_ desc: CMAudioFormatDescription, sizeOut: UnsafeMutablePointer<Int>?) -> UnsafePointer<AudioFormatListItem>?
@available(watchOS 6.0, *)
func CMAudioFormatDescriptionGetRichestDecodableFormat(_ desc: CMAudioFormatDescription) -> UnsafePointer<AudioFormatListItem>?
@available(watchOS 6.0, *)
func CMAudioFormatDescriptionGetMostCompatibleFormat(_ desc: CMAudioFormatDescription) -> UnsafePointer<AudioFormatListItem>?
@available(watchOS 6.0, *)
func CMAudioFormatDescriptionCreateSummary(allocator: CFAllocator?, formatDescriptionArray: CFArray, flags: UInt32, formatDescriptionOut: UnsafeMutablePointer<CMAudioFormatDescription?>) -> OSStatus
@available(watchOS 6.0, *)
typealias CMAudioFormatDescriptionMask = UInt32
var kCMAudioFormatDescriptionMask_StreamBasicDescription: CMAudioFormatDescriptionMask { get }
var kCMAudioFormatDescriptionMask_MagicCookie: CMAudioFormatDescriptionMask { get }
var kCMAudioFormatDescriptionMask_ChannelLayout: CMAudioFormatDescriptionMask { get }
var kCMAudioFormatDescriptionMask_Extensions: CMAudioFormatDescriptionMask { get }
var kCMAudioFormatDescriptionMask_All: CMAudioFormatDescriptionMask { get }
@available(watchOS 6.0, *)
func CMAudioFormatDescriptionEqual(_ formatDescription: CMAudioFormatDescription, otherFormatDescription: CMAudioFormatDescription, equalityMask: CMAudioFormatDescriptionMask, equalityMaskOut: UnsafeMutablePointer<CMAudioFormatDescriptionMask>?) -> Bool
@available(watchOS 6.0, *)
typealias CMVideoFormatDescription = CMFormatDescription
@available(watchOS 6.0, *)
typealias CMPixelFormatType = FourCharCode
var kCMPixelFormat_32ARGB: CMPixelFormatType { get }
var kCMPixelFormat_32BGRA: CMPixelFormatType { get }
var kCMPixelFormat_24RGB: CMPixelFormatType { get }
var kCMPixelFormat_16BE555: CMPixelFormatType { get }
var kCMPixelFormat_16BE565: CMPixelFormatType { get }
var kCMPixelFormat_16LE555: CMPixelFormatType { get }
var kCMPixelFormat_16LE565: CMPixelFormatType { get }
var kCMPixelFormat_16LE5551: CMPixelFormatType { get }
var kCMPixelFormat_422YpCbCr8: CMPixelFormatType { get }
var kCMPixelFormat_422YpCbCr8_yuvs: CMPixelFormatType { get }
var kCMPixelFormat_444YpCbCr8: CMPixelFormatType { get }
var kCMPixelFormat_4444YpCbCrA8: CMPixelFormatType { get }
var kCMPixelFormat_422YpCbCr16: CMPixelFormatType { get }
var kCMPixelFormat_422YpCbCr10: CMPixelFormatType { get }
var kCMPixelFormat_444YpCbCr10: CMPixelFormatType { get }
var kCMPixelFormat_8IndexedGray_WhiteIsZero: CMPixelFormatType { get }
@available(watchOS 6.0, *)
typealias CMVideoCodecType = FourCharCode
var kCMVideoCodecType_422YpCbCr8: CMVideoCodecType { get }
var kCMVideoCodecType_Animation: CMVideoCodecType { get }
var kCMVideoCodecType_Cinepak: CMVideoCodecType { get }
var kCMVideoCodecType_JPEG: CMVideoCodecType { get }
var kCMVideoCodecType_JPEG_OpenDML: CMVideoCodecType { get }
var kCMVideoCodecType_SorensonVideo: CMVideoCodecType { get }
var kCMVideoCodecType_SorensonVideo3: CMVideoCodecType { get }
var kCMVideoCodecType_H263: CMVideoCodecType { get }
var kCMVideoCodecType_H264: CMVideoCodecType { get }
var kCMVideoCodecType_HEVC: CMVideoCodecType { get }
var kCMVideoCodecType_HEVCWithAlpha: CMVideoCodecType { get }
var kCMVideoCodecType_MPEG4Video: CMVideoCodecType { get }
var kCMVideoCodecType_MPEG2Video: CMVideoCodecType { get }
var kCMVideoCodecType_MPEG1Video: CMVideoCodecType { get }
var kCMVideoCodecType_VP9: CMVideoCodecType { get }
var kCMVideoCodecType_DVCNTSC: CMVideoCodecType { get }
var kCMVideoCodecType_DVCPAL: CMVideoCodecType { get }
var kCMVideoCodecType_DVCProPAL: CMVideoCodecType { get }
var kCMVideoCodecType_DVCPro50NTSC: CMVideoCodecType { get }
var kCMVideoCodecType_DVCPro50PAL: CMVideoCodecType { get }
var kCMVideoCodecType_DVCPROHD720p60: CMVideoCodecType { get }
var kCMVideoCodecType_DVCPROHD720p50: CMVideoCodecType { get }
var kCMVideoCodecType_DVCPROHD1080i60: CMVideoCodecType { get }
var kCMVideoCodecType_DVCPROHD1080i50: CMVideoCodecType { get }
var kCMVideoCodecType_DVCPROHD1080p30: CMVideoCodecType { get }
var kCMVideoCodecType_DVCPROHD1080p25: CMVideoCodecType { get }
var kCMVideoCodecType_AppleProRes4444XQ: CMVideoCodecType { get }
var kCMVideoCodecType_AppleProRes4444: CMVideoCodecType { get }
var kCMVideoCodecType_AppleProRes422HQ: CMVideoCodecType { get }
var kCMVideoCodecType_AppleProRes422: CMVideoCodecType { get }
var kCMVideoCodecType_AppleProRes422LT: CMVideoCodecType { get }
var kCMVideoCodecType_AppleProRes422Proxy: CMVideoCodecType { get }
var kCMVideoCodecType_AppleProResRAW: CMVideoCodecType { get }
var kCMVideoCodecType_AppleProResRAWHQ: CMVideoCodecType { get }
@available(watchOS 6.0, *)
struct CMVideoDimensions {
  var width: Int32
  var height: Int32
  init()
  init(width: Int32, height: Int32)
}
@available(watchOS 6.0, *)
let kCMFormatDescriptionExtension_FormatName: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionExtension_Depth: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionExtension_CleanAperture: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionKey_CleanApertureWidth: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionKey_CleanApertureHeight: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionKey_CleanApertureHorizontalOffset: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionKey_CleanApertureVerticalOffset: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionKey_CleanApertureWidthRational: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionKey_CleanApertureHeightRational: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionKey_CleanApertureHorizontalOffsetRational: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionKey_CleanApertureVerticalOffsetRational: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionExtension_FieldCount: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionExtension_FieldDetail: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionFieldDetail_TemporalTopFirst: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionFieldDetail_TemporalBottomFirst: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionFieldDetail_SpatialFirstLineEarly: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionFieldDetail_SpatialFirstLineLate: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionExtension_PixelAspectRatio: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionKey_PixelAspectRatioHorizontalSpacing: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionKey_PixelAspectRatioVerticalSpacing: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionExtension_ColorPrimaries: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionColorPrimaries_ITU_R_709_2: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionColorPrimaries_EBU_3213: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionColorPrimaries_SMPTE_C: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionColorPrimaries_DCI_P3: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionColorPrimaries_P3_D65: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionColorPrimaries_ITU_R_2020: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionColorPrimaries_P22: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionExtension_TransferFunction: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionTransferFunction_ITU_R_709_2: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionTransferFunction_SMPTE_240M_1995: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionTransferFunction_UseGamma: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionTransferFunction_ITU_R_2020: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionTransferFunction_SMPTE_ST_428_1: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionTransferFunction_SMPTE_ST_2084_PQ: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionTransferFunction_ITU_R_2100_HLG: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionTransferFunction_Linear: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionTransferFunction_sRGB: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionExtension_GammaLevel: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionExtension_YCbCrMatrix: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionYCbCrMatrix_ITU_R_709_2: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionYCbCrMatrix_ITU_R_601_4: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionYCbCrMatrix_SMPTE_240M_1995: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionYCbCrMatrix_ITU_R_2020: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionExtension_FullRangeVideo: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionExtension_ICCProfile: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionExtension_BytesPerRow: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionExtension_ChromaLocationTopField: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionExtension_ChromaLocationBottomField: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionChromaLocation_Left: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionChromaLocation_Center: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionChromaLocation_TopLeft: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionChromaLocation_Top: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionChromaLocation_BottomLeft: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionChromaLocation_Bottom: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionChromaLocation_DV420: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionConformsToMPEG2VideoProfile: CFString
@available(watchOS 7.0, *)
let kCMFormatDescriptionExtension_ProtectedContentOriginalFormat: CFString
var kCMMPEG2VideoProfile_HDV_720p30: Int32 { get }
var kCMMPEG2VideoProfile_HDV_1080i60: Int32 { get }
var kCMMPEG2VideoProfile_HDV_1080i50: Int32 { get }
var kCMMPEG2VideoProfile_HDV_720p24: Int32 { get }
var kCMMPEG2VideoProfile_HDV_720p25: Int32 { get }
var kCMMPEG2VideoProfile_HDV_1080p24: Int32 { get }
var kCMMPEG2VideoProfile_HDV_1080p25: Int32 { get }
var kCMMPEG2VideoProfile_HDV_1080p30: Int32 { get }
var kCMMPEG2VideoProfile_HDV_720p60: Int32 { get }
var kCMMPEG2VideoProfile_HDV_720p50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD_1080i60_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD_1080i50_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD_1080p24_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD_1080p25_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD_1080p30_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_720p24_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_720p25_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_720p30_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_720p50_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_720p60_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_1080i60_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_1080i50_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_1080p24_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_1080p25_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_EX_1080p30_VBR35: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_720p50_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_720p60_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_1080i60_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_1080i50_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_1080p24_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_1080p25_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_1080p30_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD_540p: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_540p: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_720p24_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_720p25_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XDCAM_HD422_720p30_CBR50: Int32 { get }
var kCMMPEG2VideoProfile_XF: Int32 { get }
@available(watchOS 6.0, *)
let kCMFormatDescriptionExtension_TemporalQuality: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionExtension_SpatialQuality: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionExtension_VerbatimImageDescription: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionExtension_Version: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionExtension_RevisionLevel: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionExtension_Vendor: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionVendor_Apple: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionExtension_MasteringDisplayColorVolume: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionExtension_ContentLightLevelInfo: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionExtension_AlternativeTransferCharacteristics: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionExtension_AuxiliaryTypeInfo: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionExtension_AlphaChannelMode: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionAlphaChannelMode_StraightAlpha: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionAlphaChannelMode_PremultipliedAlpha: CFString
@available(watchOS 6.0, *)
let kCMFormatDescriptionExtension_ContainsAlphaChannel: CFString
@available(watchOS 6.0, *)
func CMVideoFormatDescriptionCreate(allocator: CFAllocator?, codecType: CMVideoCodecType, width: Int32, height: Int32, extensions: CFDictionary?, formatDescriptionOut: UnsafeMutablePointer<CMVideoFormatDescription?>) -> OSStatus
@available(watchOS 6.0, *)
func CMVideoFormatDescriptionCreateForImageBuffer(allocator: CFAllocator?, imageBuffer: CVImageBuffer, formatDescriptionOut: UnsafeMutablePointer<CMVideoFormatDescription?>) -> OSStatus
@available(watchOS 6.0, *)
func CMVideoFormatDescriptionCreateFromH264ParameterSets(allocator: CFAllocator?, parameterSetCount: Int, parameterSetPointers: UnsafePointer<UnsafePointer<UInt8>>, parameterSetSizes: UnsafePointer<Int>, nalUnitHeaderLength NALUnitHeaderLength: Int32, formatDescriptionOut: UnsafeMutablePointer<CMFormatDescription?>) -> OSStatus
@available(watchOS 6.0, *)
func CMVideoFormatDescriptionCreateFromHEVCParameterSets(allocator: CFAllocator?, parameterSetCount: Int, parameterSetPointers: UnsafePointer<UnsafePointer<UInt8>>, parameterSetSizes: UnsafePointer<Int>, nalUnitHeaderLength NALUnitHeaderLength: Int32, extensions: CFDictionary?, formatDescriptionOut: UnsafeMutablePointer<CMFormatDescription?>) -> OSStatus
@available(watchOS 6.0, *)
func CMVideoFormatDescriptionGetH264ParameterSetAtIndex(_ videoDesc: CMFormatDescription, parameterSetIndex: Int, parameterSetPointerOut: UnsafeMutablePointer<UnsafePointer<UInt8>?>?, parameterSetSizeOut: UnsafeMutablePointer<Int>?, parameterSetCountOut: UnsafeMutablePointer<Int>?, nalUnitHeaderLengthOut NALUnitHeaderLengthOut: UnsafeMutablePointer<Int32>?) -> OSStatus
@available(watchOS 6.0, *)
func CMVideoFormatDescriptionGetHEVCParameterSetAtIndex(_ videoDesc: CMFormatDescription, parameterSetIndex: Int, parameterSetPointerOut: UnsafeMutablePointer<UnsafePointer<UInt8>?>?, parameterSetSizeOut: UnsafeMutablePointer<Int>?, parameterSetCountOut: UnsafeMutablePointer<Int>?, nalUnitHeaderLengthOut NALUnitHeaderLengthOut: UnsafeMutablePointer<Int32>?) -> OSStatus
@available(watchOS 6.0, *)
func CMVideoFormatDescriptionGetDimensions(_ videoDesc: CMVideoFormatDescription) -> CMVideoDimensions
@available(watchOS 6.0, *)
func CMVideoFormatDescriptionGetPresentationDimensions(_ videoDesc: CMVideoFormatDescription, usePixelAspectRatio: Bool, useCleanAperture: Bool) -> CGSize
@available(watchOS 6.0, *)
func CMVideoFormatDescriptionGetCleanAperture(_ videoDesc: CMVideoFormatDescription, originIsAtTopLeft: Bool) -> CGRect
@available(watchOS 6.0, *)
func CMVideoFormatDescriptionGetExtensionKeysCommonWithImageBuffers() -> CFArray
@available(watchOS 6.0, *)
func CMVideoFormatDescriptionMatchesImageBuffer(_ desc: CMVideoFormatDescription, imageBuffer: CVImageBuffer) -> Bool
@available(watchOS 6.0, *)
typealias CMMuxedFormatDescription = CMFormatDescription
@available(watchOS 6.0, *)
typealias CMMuxedStreamType = FourCharCode
var kCMMuxedStreamType_MPEG1System: CMMuxedStreamType { get }
var kCMMuxedStreamType_MPEG2Transport: CMMuxedStreamType { get }
var kCMMuxedStreamType_MPEG2Program: CMMuxedStreamType { get }
var kCMMuxedStreamType_DV: CMMuxedStreamType { get }
@available(watchOS 6.0, *)
func CMMuxedFormatDescriptionCreate(allocator: CFAllocator?, muxType: CMMuxedStreamType, extensions: CFDictionary?, formatDescriptionOut: UnsafeMutablePointer<CMMuxedFormatDescription?>) -> OSStatus
@available(watchOS 6.0, *)
typealias CMClosedCaptionFormatDescription = CMFormatDescription
@available(watchOS 6.0, *)
typealias CMClosedCaptionFormatType = FourCharCode
var kCMClosedCaptionFormatType_CEA608: CMClosedCaptionFormatType { get }
var kCMClosedCaptionFormatType_CEA708: CMClosedCaptionFormatType { get }
var kCMClosedCaptionFormatType_ATSC: CMClosedCaptionFormatType { get }
@available(watchOS 6.0, *)
typealias CMTextFormatDescription = CMFormatDescription
@available(watchOS 6.0, *)
typealias CMTextFormatType = FourCharCode
var kCMTextFormatType_QTText: CMTextFormatType { get }
var kCMTextFormatType_3GText: CMTextFormatType { get }
@available(watchOS 6.0, *)
typealias CMTextDisplayFlags = UInt32
var kCMTextDisplayFlag_scrollIn: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_scrollOut: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_scrollDirectionMask: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_scrollDirection_bottomToTop: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_scrollDirection_rightToLeft: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_scrollDirection_topToBottom: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_scrollDirection_leftToRight: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_continuousKaraoke: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_writeTextVertically: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_fillTextRegion: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_obeySubtitleFormatting: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_forcedSubtitlesPresent: CMTextDisplayFlags { get }
var kCMTextDisplayFlag_allSubtitlesForced: CMTextDisplayFlags { get }
@available(watchOS 6.0, *)
typealias CMTextJustificationValue = Int8
var kCMTextJustification_left_top: CMTextJustificationValue { get }
var kCMTextJustification_centered: CMTextJustificationValue { get }
var kCMTextJustification_bottom_right: CMTextJustificationValue { get }
@available(watchOS 6.0, *)
let kCMTextFormatDescriptionExtension_DisplayFlags: CFString
@available(watchOS 6.0, *)
let kCMTextFormatDescriptionExtension_BackgroundColor: CFString
@available(watchOS 6.0, *)
let kCMTextFormatDescriptionColor_Red: CFString
@available(watchOS 6.0, *)
let kCMTextFormatDescriptionColor_Green: CFString
@available(watchOS 6.0, *)
let kCMTextFormatDescriptionColor_Blue: CFString
@available(watchOS 6.0, *)
let kCMTextFormatDescriptionColor_Alpha: CFString
@available(watchOS 6.0, *)
let kCMTextFormatDescriptionExtension_DefaultTextBox: CFString
@available(watchOS 6.0, *)
let kCMTextFormatDescriptionRect_Top: CFString
@available(watchOS 6.0, *)
let kCMTextFormatDescriptionRect_Left: CFString
@available(watchOS 6.0, *)
let kCMTextFormatDescriptionRect_Bottom: CFString
@available(watchOS 6.0, *)
let kCMTextFormatDescriptionRect_Right: CFString
@available(watchOS 6.0, *)
let kCMTextFormatDescriptionExtension_DefaultStyle: CFString
@available(watchOS 6.0, *)
let kCMTextFormatDescriptionStyle_StartChar: CFString
@available(watchOS 6.0, *)
let kCMTextFormatDescriptionStyle_Font: CFString
@available(watchOS 6.0, *)
let kCMTextFormatDescriptionStyle_FontFace: CFString
@available(watchOS 6.0, *)
let kCMTextFormatDescriptionStyle_ForegroundColor: CFString
@available(watchOS 6.0, *)
let kCMTextFormatDescriptionStyle_FontSize: CFString
@available(watchOS 6.0, *)
let kCMTextFormatDescriptionExtension_HorizontalJustification: CFString
@available(watchOS 6.0, *)
let kCMTextFormatDescriptionExtension_VerticalJustification: CFString
@available(watchOS 6.0, *)
let kCMTextFormatDescriptionStyle_EndChar: CFString
@available(watchOS 6.0, *)
let kCMTextFormatDescriptionExtension_FontTable: CFString
@available(watchOS 6.0, *)
let kCMTextFormatDescriptionExtension_TextJustification: CFString
@available(watchOS 6.0, *)
let kCMTextFormatDescriptionStyle_Height: CFString
@available(watchOS 6.0, *)
let kCMTextFormatDescriptionStyle_Ascent: CFString
@available(watchOS 6.0, *)
let kCMTextFormatDescriptionExtension_DefaultFontName: CFString
@available(watchOS 6.0, *)
func CMTextFormatDescriptionGetDisplayFlags(_ desc: CMFormatDescription, displayFlagsOut: UnsafeMutablePointer<CMTextDisplayFlags>) -> OSStatus
@available(watchOS 6.0, *)
func CMTextFormatDescriptionGetJustification(_ desc: CMFormatDescription, horizontalOut horizontaJustificationlOut: UnsafeMutablePointer<CMTextJustificationValue>?, verticalOut verticalJustificationOut: UnsafeMutablePointer<CMTextJustificationValue>?) -> OSStatus
@available(watchOS 6.0, *)
func CMTextFormatDescriptionGetDefaultTextBox(_ desc: CMFormatDescription, originIsAtTopLeft: Bool, heightOfTextTrack: CGFloat, defaultTextBoxOut: UnsafeMutablePointer<CGRect>) -> OSStatus
@available(watchOS 6.0, *)
func CMTextFormatDescriptionGetDefaultStyle(_ desc: CMFormatDescription, localFontIDOut: UnsafeMutablePointer<UInt16>?, boldOut: UnsafeMutablePointer<DarwinBoolean>?, italicOut: UnsafeMutablePointer<DarwinBoolean>?, underlineOut: UnsafeMutablePointer<DarwinBoolean>?, fontSizeOut: UnsafeMutablePointer<CGFloat>?, colorComponentsOut: UnsafeMutablePointer<CGFloat>?) -> OSStatus
@available(watchOS 6.0, *)
func CMTextFormatDescriptionGetFontName(_ desc: CMFormatDescription, localFontID: UInt16, fontNameOut: AutoreleasingUnsafeMutablePointer<CFString?>) -> OSStatus
@available(watchOS 6.0, *)
typealias CMSubtitleFormatType = FourCharCode
var kCMSubtitleFormatType_3GText: CMSubtitleFormatType { get }
var kCMSubtitleFormatType_WebVTT: CMSubtitleFormatType { get }
@available(watchOS 6.0, *)
typealias CMTimeCodeFormatDescription = CMFormatDescription
@available(watchOS 6.0, *)
typealias CMTimeCodeFormatType = FourCharCode
var kCMTimeCodeFormatType_TimeCode32: CMTimeCodeFormatType { get }
var kCMTimeCodeFormatType_TimeCode64: CMTimeCodeFormatType { get }
var kCMTimeCodeFormatType_Counter32: CMTimeCodeFormatType { get }
var kCMTimeCodeFormatType_Counter64: CMTimeCodeFormatType { get }
var kCMTimeCodeFlag_DropFrame: UInt32 { get }
var kCMTimeCodeFlag_24HourMax: UInt32 { get }
var kCMTimeCodeFlag_NegTimesOK: UInt32 { get }
@available(watchOS 6.0, *)
func CMTimeCodeFormatDescriptionCreate(allocator: CFAllocator?, timeCodeFormatType: CMTimeCodeFormatType, frameDuration: CMTime, frameQuanta: UInt32, flags: UInt32, extensions: CFDictionary?, formatDescriptionOut: UnsafeMutablePointer<CMTimeCodeFormatDescription?>) -> OSStatus
@available(watchOS 6.0, *)
func CMTimeCodeFormatDescriptionGetFrameDuration(_ timeCodeFormatDescription: CMTimeCodeFormatDescription) -> CMTime
@available(watchOS 6.0, *)
func CMTimeCodeFormatDescriptionGetFrameQuanta(_ timeCodeFormatDescription: CMTimeCodeFormatDescription) -> UInt32
@available(watchOS 6.0, *)
func CMTimeCodeFormatDescriptionGetTimeCodeFlags(_ desc: CMTimeCodeFormatDescription) -> UInt32
@available(watchOS 6.0, *)
let kCMTimeCodeFormatDescriptionExtension_SourceReferenceName: CFString
@available(watchOS 6.0, *)
let kCMTimeCodeFormatDescriptionKey_Value: CFString
@available(watchOS 6.0, *)
let kCMTimeCodeFormatDescriptionKey_LangCode: CFString
@available(watchOS 6.0, *)
typealias CMMetadataFormatDescription = CMFormatDescription
@available(watchOS 6.0, *)
typealias CMMetadataFormatType = FourCharCode
var kCMMetadataFormatType_ICY: CMMetadataFormatType { get }
var kCMMetadataFormatType_ID3: CMMetadataFormatType { get }
var kCMMetadataFormatType_Boxed: CMMetadataFormatType { get }
var kCMMetadataFormatType_EMSG: CMMetadataFormatType { get }
@available(watchOS 6.0, *)
let kCMFormatDescriptionExtensionKey_MetadataKeyTable: CFString
@available(watchOS 6.0, *)
let kCMMetadataFormatDescriptionKey_Namespace: CFString
@available(watchOS 6.0, *)
let kCMMetadataFormatDescriptionKey_Value: CFString
@available(watchOS 6.0, *)
let kCMMetadataFormatDescriptionKey_LocalID: CFString
@available(watchOS 6.0, *)
let kCMMetadataFormatDescriptionKey_DataType: CFString
@available(watchOS 6.0, *)
let kCMMetadataFormatDescriptionKey_DataTypeNamespace: CFString
@available(watchOS 6.0, *)
let kCMMetadataFormatDescriptionKey_ConformingDataTypes: CFString
@available(watchOS 6.0, *)
let kCMMetadataFormatDescriptionKey_LanguageTag: CFString
@available(watchOS 6.0, *)
let kCMMetadataFormatDescriptionKey_StructuralDependency: CFString
@available(watchOS 6.0, *)
let kCMMetadataFormatDescriptionKey_SetupData: CFString
@available(watchOS 6.0, *)
let kCMMetadataFormatDescription_StructuralDependencyKey_DependencyIsInvalidFlag: CFString
@available(watchOS 6.0, *)
let kCMMetadataFormatDescriptionMetadataSpecificationKey_Identifier: CFString
@available(watchOS 6.0, *)
let kCMMetadataFormatDescriptionMetadataSpecificationKey_DataType: CFString
@available(watchOS 6.0, *)
let kCMMetadataFormatDescriptionMetadataSpecificationKey_ExtendedLanguageTag: CFString
@available(watchOS 6.0, *)
let kCMMetadataFormatDescriptionMetadataSpecificationKey_StructuralDependency: CFString
@available(watchOS 6.0, *)
let kCMMetadataFormatDescriptionMetadataSpecificationKey_SetupData: CFString
@available(watchOS 6.0, *)
func CMMetadataFormatDescriptionCreateWithKeys(allocator: CFAllocator?, metadataType: CMMetadataFormatType, keys: CFArray?, formatDescriptionOut: UnsafeMutablePointer<CMMetadataFormatDescription?>) -> OSStatus
@available(watchOS 6.0, *)
func CMMetadataFormatDescriptionCreateWithMetadataSpecifications(allocator: CFAllocator?, metadataType: CMMetadataFormatType, metadataSpecifications: CFArray, formatDescriptionOut: UnsafeMutablePointer<CMMetadataFormatDescription?>) -> OSStatus
@available(watchOS 6.0, *)
func CMMetadataFormatDescriptionCreateWithMetadataFormatDescriptionAndMetadataSpecifications(allocator: CFAllocator?, sourceDescription: CMMetadataFormatDescription, metadataSpecifications: CFArray, formatDescriptionOut: UnsafeMutablePointer<CMMetadataFormatDescription?>) -> OSStatus
@available(watchOS 6.0, *)
func CMMetadataFormatDescriptionCreateByMergingMetadataFormatDescriptions(allocator: CFAllocator?, sourceDescription: CMMetadataFormatDescription, otherSourceDescription: CMMetadataFormatDescription, formatDescriptionOut: UnsafeMutablePointer<CMMetadataFormatDescription?>) -> OSStatus
@available(watchOS 6.0, *)
func CMMetadataFormatDescriptionGetKeyWithLocalID(_ desc: CMMetadataFormatDescription, localKeyID: OSType) -> CFDictionary?
@available(watchOS 6.0, *)
func CMMetadataFormatDescriptionGetIdentifiers(_ desc: CMMetadataFormatDescription) -> CFArray?
