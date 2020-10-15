
typealias CGDisplayConfigRef = OpaquePointer
@available(macOS 10.0, *)
func CGBeginDisplayConfiguration(_ config: UnsafeMutablePointer<CGDisplayConfigRef?>?) -> CGError
@available(macOS 10.0, *)
func CGConfigureDisplayOrigin(_ config: CGDisplayConfigRef?, _ display: CGDirectDisplayID, _ x: Int32, _ y: Int32) -> CGError
@available(macOS 10.6, *)
func CGConfigureDisplayWithDisplayMode(_ config: CGDisplayConfigRef?, _ display: CGDirectDisplayID, _ mode: CGDisplayMode?, _ options: CFDictionary?) -> CGError
@available(macOS 10.4, *)
func CGConfigureDisplayStereoOperation(_ config: CGDisplayConfigRef?, _ display: CGDirectDisplayID, _ stereo: boolean_t, _ forceBlueLine: boolean_t) -> CGError
@available(macOS 10.2, *)
func CGConfigureDisplayMirrorOfDisplay(_ config: CGDisplayConfigRef?, _ display: CGDirectDisplayID, _ master: CGDirectDisplayID) -> CGError
@available(macOS 10.0, *)
func CGCancelDisplayConfiguration(_ config: CGDisplayConfigRef?) -> CGError
struct CGConfigureOption : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var forAppOnly: CGConfigureOption { get }
  static var forSession: CGConfigureOption { get }
  static var permanently: CGConfigureOption { get }
}
@available(macOS 10.0, *)
func CGCompleteDisplayConfiguration(_ config: CGDisplayConfigRef?, _ option: CGConfigureOption) -> CGError
@available(macOS 10.2, *)
func CGRestorePermanentDisplayConfiguration()
struct CGDisplayChangeSummaryFlags : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var beginConfigurationFlag: CGDisplayChangeSummaryFlags { get }
  static var movedFlag: CGDisplayChangeSummaryFlags { get }
  static var setMainFlag: CGDisplayChangeSummaryFlags { get }
  static var setModeFlag: CGDisplayChangeSummaryFlags { get }
  static var addFlag: CGDisplayChangeSummaryFlags { get }
  static var removeFlag: CGDisplayChangeSummaryFlags { get }
  static var enabledFlag: CGDisplayChangeSummaryFlags { get }
  static var disabledFlag: CGDisplayChangeSummaryFlags { get }
  static var mirrorFlag: CGDisplayChangeSummaryFlags { get }
  static var unMirrorFlag: CGDisplayChangeSummaryFlags { get }
  static var desktopShapeChangedFlag: CGDisplayChangeSummaryFlags { get }
}
typealias CGDisplayReconfigurationCallBack = @convention(c) (CGDirectDisplayID, CGDisplayChangeSummaryFlags, UnsafeMutableRawPointer?) -> Void
@available(macOS 10.3, *)
func CGDisplayRegisterReconfigurationCallback(_ callback: CGDisplayReconfigurationCallBack?, _ userInfo: UnsafeMutableRawPointer?) -> CGError
@available(macOS 10.3, *)
func CGDisplayRemoveReconfigurationCallback(_ callback: CGDisplayReconfigurationCallBack?, _ userInfo: UnsafeMutableRawPointer?) -> CGError
@available(macOS 10.4, *)
func CGDisplaySetStereoOperation(_ display: CGDirectDisplayID, _ stereo: boolean_t, _ forceBlueLine: boolean_t, _ option: CGConfigureOption) -> CGError
@available(macOS 10.2, *)
func CGDisplayIsActive(_ display: CGDirectDisplayID) -> boolean_t
@available(macOS 10.2, *)
func CGDisplayIsAsleep(_ display: CGDirectDisplayID) -> boolean_t
@available(macOS 10.2, *)
func CGDisplayIsOnline(_ display: CGDirectDisplayID) -> boolean_t
@available(macOS 10.2, *)
func CGDisplayIsMain(_ display: CGDirectDisplayID) -> boolean_t
@available(macOS 10.2, *)
func CGDisplayIsBuiltin(_ display: CGDirectDisplayID) -> boolean_t
@available(macOS 10.2, *)
func CGDisplayIsInMirrorSet(_ display: CGDirectDisplayID) -> boolean_t
@available(macOS 10.2, *)
func CGDisplayIsAlwaysInMirrorSet(_ display: CGDirectDisplayID) -> boolean_t
@available(macOS 10.2, *)
func CGDisplayIsInHWMirrorSet(_ display: CGDirectDisplayID) -> boolean_t
@available(macOS 10.2, *)
func CGDisplayMirrorsDisplay(_ display: CGDirectDisplayID) -> CGDirectDisplayID
@available(macOS 10.2, *)
func CGDisplayUsesOpenGLAcceleration(_ display: CGDirectDisplayID) -> boolean_t
@available(macOS 10.4, *)
func CGDisplayIsStereo(_ display: CGDirectDisplayID) -> boolean_t
@available(macOS 10.2, *)
func CGDisplayPrimaryDisplay(_ display: CGDirectDisplayID) -> CGDirectDisplayID
@available(macOS 10.2, *)
func CGDisplayUnitNumber(_ display: CGDirectDisplayID) -> UInt32
@available(macOS 10.2, *)
func CGDisplayVendorNumber(_ display: CGDirectDisplayID) -> UInt32
@available(macOS 10.2, *)
func CGDisplayModelNumber(_ display: CGDirectDisplayID) -> UInt32
@available(macOS 10.2, *)
func CGDisplaySerialNumber(_ display: CGDirectDisplayID) -> UInt32
@available(macOS 10.3, *)
func CGDisplayScreenSize(_ display: CGDirectDisplayID) -> CGSize
@available(macOS 10.5, *)
func CGDisplayRotation(_ display: CGDirectDisplayID) -> Double
@available(macOS 10.5, *)
func CGDisplayCopyColorSpace(_ display: CGDirectDisplayID) -> CGColorSpace
