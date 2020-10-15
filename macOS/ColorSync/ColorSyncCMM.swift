
class ColorSyncCMM : _CFObject {
}
func ColorSyncCMMGetTypeID() -> CFTypeID
func ColorSyncCMMCreate(_ cmmBundle: CFBundle!) -> Unmanaged<ColorSyncCMM>!
func ColorSyncCMMGetBundle(_: ColorSyncCMM!) -> Unmanaged<CFBundle>!
func ColorSyncCMMCopyLocalizedName(_: ColorSyncCMM!) -> Unmanaged<CFString>!
func ColorSyncCMMCopyCMMIdentifier(_: ColorSyncCMM!) -> Unmanaged<CFString>!
typealias ColorSyncCMMIterateCallback = @convention(c) (ColorSyncCMM?, UnsafeMutableRawPointer?) -> Bool
func ColorSyncIterateInstalledCMMs(_ callBack: ColorSyncCMMIterateCallback!, _ userInfo: UnsafeMutableRawPointer!)
typealias CMMInitializeLinkProfileProc = @convention(c) (ColorSyncMutableProfile?, CFArray?, CFDictionary?) -> Bool
typealias CMMInitializeTransformProc = @convention(c) (ColorSyncTransform?, CFArray?, CFDictionary?) -> Bool
typealias CMMApplyTransformProc = @convention(c) (ColorSyncTransform?, Int, Int, Int, UnsafeMutablePointer<UnsafeMutableRawPointer?>?, ColorSyncDataDepth, ColorSyncDataLayout, Int, Int, UnsafeMutablePointer<UnsafeRawPointer?>?, ColorSyncDataDepth, ColorSyncDataLayout, Int, CFDictionary?) -> Bool
typealias CMMCreateTransformPropertyProc = @convention(c) (ColorSyncTransform?, CFTypeRef?, CFDictionary?) -> Unmanaged<CFTypeRef>?
var kCMMInitializeLinkProfileProcName: Unmanaged<CFString>!
var kCMMInitializeTransformProcName: Unmanaged<CFString>!
var kCMMApplyTransformProcName: Unmanaged<CFString>!
var kCMMCreateTransformPropertyProcName: Unmanaged<CFString>!
