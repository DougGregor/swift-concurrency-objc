
class ColorSyncTransform : _CFObject {
}
func ColorSyncTransformGetTypeID() -> CFTypeID
func ColorSyncTransformCreate(_ profileSequence: CFArray!, _ options: CFDictionary!) -> Unmanaged<ColorSyncTransform>!
func ColorSyncTransformCopyProperty(_ transform: ColorSyncTransform!, _ key: CFTypeRef!, _ options: CFDictionary!) -> Unmanaged<CFTypeRef>!
func ColorSyncTransformSetProperty(_ transform: ColorSyncTransform!, _ key: CFTypeRef!, _ property: CFTypeRef!)
struct ColorSyncDataDepth : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kColorSync1BitGamut: ColorSyncDataDepth { get }
var kColorSync8BitInteger: ColorSyncDataDepth { get }
var kColorSync16BitInteger: ColorSyncDataDepth { get }
var kColorSync16BitFloat: ColorSyncDataDepth { get }
var kColorSync32BitInteger: ColorSyncDataDepth { get }
var kColorSync32BitNamedColorIndex: ColorSyncDataDepth { get }
var kColorSync32BitFloat: ColorSyncDataDepth { get }
var kColorSync10BitInteger: ColorSyncDataDepth { get }
struct ColorSyncAlphaInfo : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kColorSyncAlphaNone: ColorSyncAlphaInfo { get }
var kColorSyncAlphaPremultipliedLast: ColorSyncAlphaInfo { get }
var kColorSyncAlphaPremultipliedFirst: ColorSyncAlphaInfo { get }
var kColorSyncAlphaLast: ColorSyncAlphaInfo { get }
var kColorSyncAlphaFirst: ColorSyncAlphaInfo { get }
var kColorSyncAlphaNoneSkipLast: ColorSyncAlphaInfo { get }
var kColorSyncAlphaNoneSkipFirst: ColorSyncAlphaInfo { get }
var kColorSyncAlphaInfoMask: Int { get }
var kColorSyncByteOrderMask: Int { get }
var kColorSyncByteOrderDefault: Int { get }
var kColorSyncByteOrder16Little: Int { get }
var kColorSyncByteOrder32Little: Int { get }
var kColorSyncByteOrder16Big: Int { get }
var kColorSyncByteOrder32Big: Int { get }
typealias ColorSyncDataLayout = UInt32
func ColorSyncTransformConvert(_ transform: ColorSyncTransform!, _ width: Int, _ height: Int, _ dst: UnsafeMutableRawPointer!, _ dstDepth: ColorSyncDataDepth, _ dstLayout: ColorSyncDataLayout, _ dstBytesPerRow: Int, _ src: UnsafeRawPointer!, _ srcDepth: ColorSyncDataDepth, _ srcLayout: ColorSyncDataLayout, _ srcBytesPerRow: Int, _ options: CFDictionary!) -> Bool
var kColorSyncProfile: Unmanaged<CFString>!
var kColorSyncRenderingIntent: Unmanaged<CFString>!
var kColorSyncRenderingIntentPerceptual: Unmanaged<CFString>!
var kColorSyncRenderingIntentRelative: Unmanaged<CFString>!
var kColorSyncRenderingIntentSaturation: Unmanaged<CFString>!
var kColorSyncRenderingIntentAbsolute: Unmanaged<CFString>!
var kColorSyncRenderingIntentUseProfileHeader: Unmanaged<CFString>!
var kColorSyncTransformTag: Unmanaged<CFString>!
var kColorSyncTransformDeviceToPCS: Unmanaged<CFString>!
var kColorSyncTransformPCSToPCS: Unmanaged<CFString>!
var kColorSyncTransformPCSToDevice: Unmanaged<CFString>!
var kColorSyncTransformDeviceToDevice: Unmanaged<CFString>!
var kColorSyncTransformGamutCheck: Unmanaged<CFString>!
var kColorSyncBlackPointCompensation: Unmanaged<CFString>!
var kColorSyncExtendedRange: Unmanaged<CFString>!
var kColorSyncPreferredCMM: Unmanaged<CFString>!
var kColorSyncConvertQuality: Unmanaged<CFString>!
var kColorSyncBestQuality: Unmanaged<CFString>!
var kColorSyncNormalQuality: Unmanaged<CFString>!
var kColorSyncDraftQuality: Unmanaged<CFString>!
var kColorSyncConvertUseExtendedRange: Unmanaged<CFString>!
var kColorSyncTranformInfo: Unmanaged<CFString>!
var kColorSyncTransformCreator: Unmanaged<CFString>!
var kColorSyncTransformSrcSpace: Unmanaged<CFString>!
var kColorSyncTransformDstSpace: Unmanaged<CFString>!
var kColorSyncTransformCodeFragmentType: Unmanaged<CFString>!
var kColorSyncTransformCodeFragmentMD5: Unmanaged<CFString>!
var kColorSyncTransformFullConversionData: Unmanaged<CFString>!
var kColorSyncTransformSimplifiedConversionData: Unmanaged<CFString>!
var kColorSyncTransformParametricConversionData: Unmanaged<CFString>!
var kColorSyncConversionMatrix: Unmanaged<CFString>!
var kColorSyncConversionParamCurve0: Unmanaged<CFString>!
var kColorSyncConversionParamCurve1: Unmanaged<CFString>!
var kColorSyncConversionParamCurve2: Unmanaged<CFString>!
var kColorSyncConversionParamCurve3: Unmanaged<CFString>!
var kColorSyncConversionParamCurve4: Unmanaged<CFString>!
var kColorSyncConversion1DLut: Unmanaged<CFString>!
var kColorSyncConversionGridPoints: Unmanaged<CFString>!
var kColorSyncConversionChannelID: Unmanaged<CFString>!
var kColorSyncConversion3DLut: Unmanaged<CFString>!
var kColorSyncConversionNDLut: Unmanaged<CFString>!
var kColorSyncConversionInpChan: Unmanaged<CFString>!
var kColorSyncConversionOutChan: Unmanaged<CFString>!
var kColorSyncConversionBPC: Unmanaged<CFString>!
var kColorSyncFixedPointRange: Unmanaged<CFString>!
