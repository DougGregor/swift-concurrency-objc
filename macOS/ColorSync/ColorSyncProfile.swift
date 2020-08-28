
class ColorSyncProfile : _CFObject {
}
class ColorSyncMutableProfile : ColorSyncProfile, _CFObject {
}
var kColorSyncGenericGrayProfile: Unmanaged<CFString>!
var kColorSyncGenericGrayGamma22Profile: Unmanaged<CFString>!
var kColorSyncGenericRGBProfile: Unmanaged<CFString>!
var kColorSyncGenericCMYKProfile: Unmanaged<CFString>!
var kColorSyncDisplayP3Profile: Unmanaged<CFString>!
var kColorSyncSRGBProfile: Unmanaged<CFString>!
var kColorSyncAdobeRGB1998Profile: Unmanaged<CFString>!
var kColorSyncGenericLabProfile: Unmanaged<CFString>!
var kColorSyncGenericXYZProfile: Unmanaged<CFString>!
var kColorSyncACESCGLinearProfile: Unmanaged<CFString>!
var kColorSyncDCIP3Profile: Unmanaged<CFString>!
var kColorSyncITUR709Profile: Unmanaged<CFString>!
var kColorSyncITUR2020Profile: Unmanaged<CFString>!
var kColorSyncROMMRGBProfile: Unmanaged<CFString>!
var kColorSyncProfileHeader: Unmanaged<CFString>!
var kColorSyncProfileClass: Unmanaged<CFString>!
var kColorSyncProfileColorSpace: Unmanaged<CFString>!
var kColorSyncProfilePCS: Unmanaged<CFString>!
var kColorSyncProfileURL: Unmanaged<CFString>!
var kColorSyncProfileDescription: Unmanaged<CFString>!
var kColorSyncProfileMD5Digest: Unmanaged<CFString>!
var kColorSyncSigAToB0Tag: Unmanaged<CFString>!
var kColorSyncSigAToB1Tag: Unmanaged<CFString>!
var kColorSyncSigAToB2Tag: Unmanaged<CFString>!
var kColorSyncSigBToA0Tag: Unmanaged<CFString>!
var kColorSyncSigBToA1Tag: Unmanaged<CFString>!
var kColorSyncSigBToA2Tag: Unmanaged<CFString>!
var kColorSyncSigCmykData: Unmanaged<CFString>!
var kColorSyncSigGrayData: Unmanaged<CFString>!
var kColorSyncSigLabData: Unmanaged<CFString>!
var kColorSyncSigRgbData: Unmanaged<CFString>!
var kColorSyncSigXYZData: Unmanaged<CFString>!
var kColorSyncSigAbstractClass: Unmanaged<CFString>!
var kColorSyncSigBlueTRCTag: Unmanaged<CFString>!
var kColorSyncSigBlueColorantTag: Unmanaged<CFString>!
var kColorSyncSigMediaBlackPointTag: Unmanaged<CFString>!
var kColorSyncSigCopyrightTag: Unmanaged<CFString>!
var kColorSyncSigProfileDescriptionTag: Unmanaged<CFString>!
var kColorSyncSigDeviceModelDescTag: Unmanaged<CFString>!
var kColorSyncSigDeviceMfgDescTag: Unmanaged<CFString>!
var kColorSyncSigGreenTRCTag: Unmanaged<CFString>!
var kColorSyncSigGreenColorantTag: Unmanaged<CFString>!
var kColorSyncSigGamutTag: Unmanaged<CFString>!
var kColorSyncSigGrayTRCTag: Unmanaged<CFString>!
var kColorSyncSigLinkClass: Unmanaged<CFString>!
var kColorSyncSigDisplayClass: Unmanaged<CFString>!
var kColorSyncSigNamedColor2Tag: Unmanaged<CFString>!
var kColorSyncSigNamedColorClass: Unmanaged<CFString>!
var kColorSyncSigPreview0Tag: Unmanaged<CFString>!
var kColorSyncSigPreview1Tag: Unmanaged<CFString>!
var kColorSyncSigPreview2Tag: Unmanaged<CFString>!
var kColorSyncSigOutputClass: Unmanaged<CFString>!
var kColorSyncSigProfileSequenceDescTag: Unmanaged<CFString>!
var kColorSyncSigRedTRCTag: Unmanaged<CFString>!
var kColorSyncSigRedColorantTag: Unmanaged<CFString>!
var kColorSyncSigInputClass: Unmanaged<CFString>!
var kColorSyncSigColorSpaceClass: Unmanaged<CFString>!
var kColorSyncSigTechnologyTag: Unmanaged<CFString>!
var kColorSyncSigViewingConditionsTag: Unmanaged<CFString>!
var kColorSyncSigViewingCondDescTag: Unmanaged<CFString>!
var kColorSyncSigMediaWhitePointTag: Unmanaged<CFString>!
var kColorSyncProfileComputerDomain: Unmanaged<CFString>!
var kColorSyncProfileUserDomain: Unmanaged<CFString>!
var COLORSYNC_PROFILE_INSTALL_ENTITLEMENT: String { get }
func ColorSyncProfileGetTypeID() -> CFTypeID
func ColorSyncProfileCreate(_ data: CFData!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>!) -> Unmanaged<ColorSyncProfile>!
func ColorSyncProfileCreateWithURL(_ url: CFURL!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>!) -> Unmanaged<ColorSyncProfile>!
func ColorSyncProfileCreateWithName(_ name: CFString!) -> Unmanaged<ColorSyncProfile>!
func ColorSyncProfileCreateWithDisplayID(_ displayID: UInt32) -> Unmanaged<ColorSyncProfile>!
func ColorSyncProfileCreateDeviceProfile(_ deviceClass: CFString!, _ deviceID: CFUUID!, _ profileID: CFTypeRef!) -> Unmanaged<ColorSyncProfile>!
func ColorSyncProfileCreateMutable() -> Unmanaged<ColorSyncMutableProfile>!
func ColorSyncProfileCreateMutableCopy(_ prof: ColorSyncProfile!) -> Unmanaged<ColorSyncMutableProfile>!
func ColorSyncProfileCreateLink(_ profileInfo: CFArray!, _ options: CFDictionary!) -> Unmanaged<ColorSyncProfile>!
func ColorSyncProfileVerify(_ prof: ColorSyncProfile!, _ errors: UnsafeMutablePointer<Unmanaged<CFError>?>!, _ warnings: UnsafeMutablePointer<Unmanaged<CFError>?>!) -> Bool
func ColorSyncProfileIsWideGamut(_: ColorSyncProfile!) -> Bool
func ColorSyncProfileIsMatrixBased(_: ColorSyncProfile!) -> Bool
func ColorSyncProfileEstimateGammaWithDisplayID(_ displayID: Int32, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>!) -> Float
func ColorSyncProfileEstimateGamma(_ prof: ColorSyncProfile!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>!) -> Float
var COLORSYNC_MD5_LENGTH: Int32 { get }
struct ColorSyncMD5 {
  var digest: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(digest: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
func ColorSyncProfileGetMD5(_ prof: ColorSyncProfile!) -> ColorSyncMD5
func ColorSyncProfileCopyData(_ prof: ColorSyncProfile!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>!) -> Unmanaged<CFData>!
func ColorSyncProfileGetURL(_ prof: ColorSyncProfile!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>!) -> Unmanaged<CFURL>!
func ColorSyncProfileCopyHeader(_ prof: ColorSyncProfile!) -> Unmanaged<CFData>!
func ColorSyncProfileSetHeader(_ prof: ColorSyncMutableProfile!, _ header: CFData!)
func ColorSyncProfileCopyDescriptionString(_ prof: ColorSyncProfile!) -> Unmanaged<CFString>!
func ColorSyncProfileCopyTagSignatures(_ prof: ColorSyncProfile!) -> Unmanaged<CFArray>!
func ColorSyncProfileContainsTag(_ prof: ColorSyncProfile!, _ signature: CFString!) -> Bool
func ColorSyncProfileCopyTag(_ prof: ColorSyncProfile!, _ signature: CFString!) -> Unmanaged<CFData>!
func ColorSyncProfileSetTag(_ prof: ColorSyncMutableProfile!, _ signature: CFString!, _ data: CFData!)
func ColorSyncProfileRemoveTag(_ prof: ColorSyncMutableProfile!, _ signature: CFString!)
func ColorSyncProfileGetDisplayTransferFormulaFromVCGT(_ profile: ColorSyncProfile!, _ redMin: UnsafeMutablePointer<Float>!, _ redMax: UnsafeMutablePointer<Float>!, _ redGamma: UnsafeMutablePointer<Float>!, _ greenMin: UnsafeMutablePointer<Float>!, _ greenMax: UnsafeMutablePointer<Float>!, _ greenGamma: UnsafeMutablePointer<Float>!, _ blueMin: UnsafeMutablePointer<Float>!, _ blueMax: UnsafeMutablePointer<Float>!, _ blueGamma: UnsafeMutablePointer<Float>!) -> Bool
func ColorSyncProfileCreateDisplayTransferTablesFromVCGT(_ profile: ColorSyncProfile!, _ nSamplesPerChannel: UnsafeMutablePointer<Int>!) -> Unmanaged<CFData>!
typealias ColorSyncProfileIterateCallback = @convention(c) (CFDictionary?, UnsafeMutableRawPointer?) -> Bool
var kColorSyncProfileCacheSeed: Unmanaged<CFString>!
func ColorSyncIterateInstalledProfiles(_ callBack: ColorSyncProfileIterateCallback?, _ seed: UnsafeMutablePointer<UInt32>?, _ userInfo: UnsafeMutableRawPointer?, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?)
var kColorSyncWaitForCacheReply: Unmanaged<CFString>!
func ColorSyncIterateInstalledProfilesWithOptions(_ callBack: ColorSyncProfileIterateCallback?, _ seed: UnsafeMutablePointer<UInt32>?, _ userInfo: UnsafeMutableRawPointer?, _ options: CFDictionary?, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?)
func ColorSyncProfileInstall(_ profile: ColorSyncProfile!, _ domain: CFString!, _ subpath: CFString!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>!) -> Bool
func ColorSyncProfileUninstall(_ profile: ColorSyncProfile!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>!) -> Bool
