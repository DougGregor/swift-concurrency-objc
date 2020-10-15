
var XP_MACOSX: Int32 { get }
var NP_VERSION_MAJOR: Int32 { get }
var NP_VERSION_MINOR: Int32 { get }
var NP_INFO_ProductVersion: Int32 { get }
var NP_INFO_MIMEType: Int32 { get }
var NP_INFO_FileOpenName: Int32 { get }
var NP_INFO_FileExtents: Int32 { get }
var NP_INFO_FileDescription: Int32 { get }
var NP_INFO_ProductName: Int32 { get }
var NP_INFO_CompanyName: Int32 { get }
var NP_INFO_FileVersion: Int32 { get }
var NP_INFO_InternalName: Int32 { get }
var NP_INFO_LegalCopyright: Int32 { get }
var NP_INFO_OriginalFilename: Int32 { get }
typealias NPBool = UInt8
typealias NPError = Int16
typealias NPReason = Int16
typealias NPMIMEType = UnsafeMutablePointer<CChar>
struct _NPP {
  var pdata: UnsafeMutableRawPointer!
  var ndata: UnsafeMutableRawPointer!
  init()
  init(pdata: UnsafeMutableRawPointer!, ndata: UnsafeMutableRawPointer!)
}
typealias NPP_t = _NPP
typealias NPP = UnsafeMutablePointer<NPP_t>
struct _NPStream {
  var pdata: UnsafeMutableRawPointer!
  var ndata: UnsafeMutableRawPointer!
  var url: UnsafePointer<CChar>!
  var end: UInt32
  var lastmodified: UInt32
  var notifyData: UnsafeMutableRawPointer!
  var headers: UnsafePointer<CChar>!
  init()
  init(pdata: UnsafeMutableRawPointer!, ndata: UnsafeMutableRawPointer!, url: UnsafePointer<CChar>!, end: UInt32, lastmodified: UInt32, notifyData: UnsafeMutableRawPointer!, headers: UnsafePointer<CChar>!)
}
typealias NPStream = _NPStream
struct _NPByteRange {
  var offset: Int32
  var length: UInt32
  var next: UnsafeMutablePointer<_NPByteRange>!
  init()
  init(offset: Int32, length: UInt32, next: UnsafeMutablePointer<_NPByteRange>!)
}
typealias NPByteRange = _NPByteRange
struct _NPSavedData {
  var len: Int32
  var buf: UnsafeMutableRawPointer!
  init()
  init(len: Int32, buf: UnsafeMutableRawPointer!)
}
typealias NPSavedData = _NPSavedData
struct _NPRect {
  var top: UInt16
  var left: UInt16
  var bottom: UInt16
  var right: UInt16
  init()
  init(top: UInt16, left: UInt16, bottom: UInt16, right: UInt16)
}
typealias NPRect = _NPRect
struct _NPSize {
  var width: Int32
  var height: Int32
  init()
  init(width: Int32, height: Int32)
}
typealias NPSize = _NPSize
struct NPFocusDirection : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var NPFocusNext: NPFocusDirection { get }
var NPFocusPrevious: NPFocusDirection { get }
var kNPEventNotHandled: Int32 { get }
var kNPEventHandled: Int32 { get }
var kNPEventStartIME: Int32 { get }
struct NPDrawingModel : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var NPDrawingModelCoreGraphics: NPDrawingModel { get }
var NPDrawingModelOpenGL: NPDrawingModel { get }
var NPDrawingModelCoreAnimation: NPDrawingModel { get }
struct NPEventModel : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var NPEventModelCocoa: NPEventModel { get }
var NP_ABI_GCC3_MASK: Int32 { get }
var _NP_ABI_MIXIN_FOR_GCC3: Int32 { get }
var NP_ABI_MACHO_MASK: Int32 { get }
var _NP_ABI_MIXIN_FOR_MACHO: Int32 { get }
struct NPPVariable : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var NPPVpluginNameString: NPPVariable { get }
var NPPVpluginDescriptionString: NPPVariable { get }
var NPPVpluginWindowBool: NPPVariable { get }
var NPPVpluginTransparentBool: NPPVariable { get }
var NPPVjavaClass: NPPVariable { get }
var NPPVpluginWindowSize: NPPVariable { get }
var NPPVpluginTimerInterval: NPPVariable { get }
var NPPVpluginScriptableInstance: NPPVariable { get }
var NPPVpluginScriptableIID: NPPVariable { get }
var NPPVjavascriptPushCallerBool: NPPVariable { get }
var NPPVpluginKeepLibraryInMemory: NPPVariable { get }
var NPPVpluginNeedsXEmbed: NPPVariable { get }
var NPPVpluginScriptableNPObject: NPPVariable { get }
var NPPVformValue: NPPVariable { get }
var NPPVpluginUrlRequestsDisplayedBool: NPPVariable { get }
var NPPVpluginWantsAllNetworkStreams: NPPVariable { get }
var NPPVpluginNativeAccessibleAtkPlugId: NPPVariable { get }
var NPPVpluginCancelSrcStream: NPPVariable { get }
var NPPVpluginDrawingModel: NPPVariable { get }
var NPPVpluginEventModel: NPPVariable { get }
var NPPVpluginCoreAnimationLayer: NPPVariable { get }
var NPPVpluginIsPlayingAudio: NPPVariable { get }
struct NPNVariable : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var NPNVxDisplay: NPNVariable { get }
var NPNVxtAppContext: NPNVariable { get }
var NPNVnetscapeWindow: NPNVariable { get }
var NPNVjavascriptEnabledBool: NPNVariable { get }
var NPNVasdEnabledBool: NPNVariable { get }
var NPNVisOfflineBool: NPNVariable { get }
var NPNVserviceManager: NPNVariable { get }
var NPNVDOMElement: NPNVariable { get }
var NPNVDOMWindow: NPNVariable { get }
var NPNVToolkit: NPNVariable { get }
var NPNVSupportsXEmbedBool: NPNVariable { get }
var NPNVWindowNPObject: NPNVariable { get }
var NPNVPluginElementNPObject: NPNVariable { get }
var NPNVSupportsWindowless: NPNVariable { get }
var NPNVprivateModeBool: NPNVariable { get }
var NPNVsupportsAdvancedKeyHandling: NPNVariable { get }
var NPNVpluginDrawingModel: NPNVariable { get }
var NPNVcontentsScaleFactor: NPNVariable { get }
var NPNVsupportsCoreGraphicsBool: NPNVariable { get }
var NPNVsupportsOpenGLBool: NPNVariable { get }
var NPNVsupportsCoreAnimationBool: NPNVariable { get }
var NPNVsupportsCocoaBool: NPNVariable { get }
var NPNVsupportsUpdatedCocoaTextInputBool: NPNVariable { get }
var NPNVsupportsCompositingCoreAnimationPluginsBool: NPNVariable { get }
var NPNVmuteAudioBool: NPNVariable { get }
struct NPNURLVariable : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var NPNURLVCookie: NPNURLVariable { get }
var NPNURLVProxy: NPNURLVariable { get }
struct NPNToolkitType : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var NPNVGtk12: NPNToolkitType { get }
var NPNVGtk2: NPNToolkitType { get }
struct NPWindowType : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var NPWindowTypeWindow: NPWindowType { get }
var NPWindowTypeDrawable: NPWindowType { get }
struct _NPWindow {
  var window: UnsafeMutableRawPointer!
  var x: Int32
  var y: Int32
  var width: UInt32
  var height: UInt32
  var clipRect: NPRect
  var type: NPWindowType
  init()
  init(window: UnsafeMutableRawPointer!, x: Int32, y: Int32, width: UInt32, height: UInt32, clipRect: NPRect, type: NPWindowType)
}
typealias NPWindow = _NPWindow
struct _NPFullPrint {
  var pluginPrinted: NPBool
  var printOne: NPBool
  var platformPrint: UnsafeMutableRawPointer!
  init()
  init(pluginPrinted: NPBool, printOne: NPBool, platformPrint: UnsafeMutableRawPointer!)
}
typealias NPFullPrint = _NPFullPrint
struct _NPEmbedPrint {
  var window: NPWindow
  var platformPrint: UnsafeMutableRawPointer!
  init()
  init(window: NPWindow, platformPrint: UnsafeMutableRawPointer!)
}
typealias NPEmbedPrint = _NPEmbedPrint
struct _NPPrint {
  struct __Unnamed_union_print {
    var fullPrint: NPFullPrint
    var embedPrint: NPEmbedPrint
    init(fullPrint: NPFullPrint)
    init(embedPrint: NPEmbedPrint)
    init()
  }
  var mode: UInt16
  var print: _NPPrint.__Unnamed_union_print
  init()
  init(mode: UInt16, print: _NPPrint.__Unnamed_union_print)
}
typealias NPPrint = _NPPrint
typealias NPEvent = UnsafeMutableRawPointer
typealias NPRegion = UnsafeMutableRawPointer
typealias NPCGRegion = CGPath
struct NPCoordinateSpace : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var NPCoordinateSpacePlugin: NPCoordinateSpace { get }
var NPCoordinateSpaceWindow: NPCoordinateSpace { get }
var NPCoordinateSpaceFlippedWindow: NPCoordinateSpace { get }
var NPCoordinateSpaceScreen: NPCoordinateSpace { get }
var NPCoordinateSpaceFlippedScreen: NPCoordinateSpace { get }
struct NP_CGContext {
  var context: Unmanaged<CGContext>!
  var window: OpaquePointer!
  init()
  init(context: Unmanaged<CGContext>!, window: OpaquePointer!)
}
struct NPCocoaEventType : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var NPCocoaEventDrawRect: NPCocoaEventType { get }
var NPCocoaEventMouseDown: NPCocoaEventType { get }
var NPCocoaEventMouseUp: NPCocoaEventType { get }
var NPCocoaEventMouseMoved: NPCocoaEventType { get }
var NPCocoaEventMouseEntered: NPCocoaEventType { get }
var NPCocoaEventMouseExited: NPCocoaEventType { get }
var NPCocoaEventMouseDragged: NPCocoaEventType { get }
var NPCocoaEventKeyDown: NPCocoaEventType { get }
var NPCocoaEventKeyUp: NPCocoaEventType { get }
var NPCocoaEventFlagsChanged: NPCocoaEventType { get }
var NPCocoaEventFocusChanged: NPCocoaEventType { get }
var NPCocoaEventWindowFocusChanged: NPCocoaEventType { get }
var NPCocoaEventScrollWheel: NPCocoaEventType { get }
var NPCocoaEventTextInput: NPCocoaEventType { get }
struct _NPCocoaEvent {
  struct __Unnamed_union_data {
    struct __Unnamed_struct_mouse {
      var modifierFlags: UInt32
      var pluginX: Double
      var pluginY: Double
      var buttonNumber: Int32
      var clickCount: Int32
      var deltaX: Double
      var deltaY: Double
      var deltaZ: Double
      init()
      init(modifierFlags: UInt32, pluginX: Double, pluginY: Double, buttonNumber: Int32, clickCount: Int32, deltaX: Double, deltaY: Double, deltaZ: Double)
    }
    struct __Unnamed_struct_key {
      var modifierFlags: UInt32
      var characters: OpaquePointer!
      var charactersIgnoringModifiers: OpaquePointer!
      var isARepeat: NPBool
      var keyCode: UInt16
      init()
      init(modifierFlags: UInt32, characters: OpaquePointer!, charactersIgnoringModifiers: OpaquePointer!, isARepeat: NPBool, keyCode: UInt16)
    }
    struct __Unnamed_struct_draw {
      var context: Unmanaged<CGContext>!
      var x: Double
      var y: Double
      var width: Double
      var height: Double
      init()
      init(context: Unmanaged<CGContext>!, x: Double, y: Double, width: Double, height: Double)
    }
    struct __Unnamed_struct_focus {
      var hasFocus: NPBool
      init()
      init(hasFocus: NPBool)
    }
    struct __Unnamed_struct_text {
      var text: OpaquePointer!
      init()
      init(text: OpaquePointer!)
    }
    var mouse: _NPCocoaEvent.__Unnamed_union_data.__Unnamed_struct_mouse
    var key: _NPCocoaEvent.__Unnamed_union_data.__Unnamed_struct_key
    var draw: _NPCocoaEvent.__Unnamed_union_data.__Unnamed_struct_draw
    var focus: _NPCocoaEvent.__Unnamed_union_data.__Unnamed_struct_focus
    var text: _NPCocoaEvent.__Unnamed_union_data.__Unnamed_struct_text
    init(mouse: _NPCocoaEvent.__Unnamed_union_data.__Unnamed_struct_mouse)
    init(key: _NPCocoaEvent.__Unnamed_union_data.__Unnamed_struct_key)
    init(draw: _NPCocoaEvent.__Unnamed_union_data.__Unnamed_struct_draw)
    init(focus: _NPCocoaEvent.__Unnamed_union_data.__Unnamed_struct_focus)
    init(text: _NPCocoaEvent.__Unnamed_union_data.__Unnamed_struct_text)
    init()
  }
  var type: NPCocoaEventType
  var version: UInt32
  var data: _NPCocoaEvent.__Unnamed_union_data
  init()
  init(type: NPCocoaEventType, version: UInt32, data: _NPCocoaEvent.__Unnamed_union_data)
}
typealias NPCocoaEvent = _NPCocoaEvent
var NP_EMBED: Int32 { get }
var NP_FULL: Int32 { get }
var NP_NORMAL: Int32 { get }
var NP_SEEK: Int32 { get }
var NP_ASFILE: Int32 { get }
var NP_ASFILEONLY: Int32 { get }
var NP_CLEAR_ALL: Int32 { get }
var NP_CLEAR_CACHE: Int32 { get }
var NPERR_BASE: Int32 { get }
var NPERR_NO_ERROR: Int32 { get }
var NPERR_GENERIC_ERROR: Int32 { get }
var NPERR_INVALID_INSTANCE_ERROR: Int32 { get }
var NPERR_INVALID_FUNCTABLE_ERROR: Int32 { get }
var NPERR_MODULE_LOAD_FAILED_ERROR: Int32 { get }
var NPERR_OUT_OF_MEMORY_ERROR: Int32 { get }
var NPERR_INVALID_PLUGIN_ERROR: Int32 { get }
var NPERR_INVALID_PLUGIN_DIR_ERROR: Int32 { get }
var NPERR_INCOMPATIBLE_VERSION_ERROR: Int32 { get }
var NPERR_INVALID_PARAM: Int32 { get }
var NPERR_INVALID_URL: Int32 { get }
var NPERR_FILE_NOT_FOUND: Int32 { get }
var NPERR_NO_DATA: Int32 { get }
var NPERR_STREAM_NOT_SEEKABLE: Int32 { get }
var NPRES_BASE: Int32 { get }
var NPRES_DONE: Int32 { get }
var NPRES_NETWORK_ERR: Int32 { get }
var NPRES_USER_BREAK: Int32 { get }
var NPVERS_HAS_STREAMOUTPUT: Int32 { get }
var NPVERS_HAS_NOTIFICATION: Int32 { get }
var NPVERS_HAS_LIVECONNECT: Int32 { get }
var NPVERS_WIN16_HAS_LIVECONNECT: Int32 { get }
var NPVERS_68K_HAS_LIVECONNECT: Int32 { get }
var NPVERS_HAS_WINDOWLESS: Int32 { get }
var NPVERS_HAS_XPCONNECT_SCRIPTING: Int32 { get }
var NPVERS_HAS_NPRUNTIME_SCRIPTING: Int32 { get }
var NPVERS_HAS_FORM_VALUES: Int32 { get }
var NPVERS_HAS_POPUPS_ENABLED_STATE: Int32 { get }
var NPVERS_HAS_RESPONSE_HEADERS: Int32 { get }
var NPVERS_HAS_NPOBJECT_ENUM: Int32 { get }
var NPVERS_HAS_PLUGIN_THREAD_ASYNC_CALL: Int32 { get }
var NPVERS_HAS_ALL_NETWORK_STREAMS: Int32 { get }
var NPVERS_HAS_URL_AND_AUTH_INFO: Int32 { get }
var NPVERS_HAS_PRIVATE_MODE: Int32 { get }
var NPVERS_MACOSX_HAS_EVENT_MODELS: Int32 { get }
var NPVERS_HAS_CANCEL_SRC_STREAM: Int32 { get }
var NPVERS_HAS_ADVANCED_KEY_HANDLING: Int32 { get }
var NPVERS_HAS_URL_REDIRECT_HANDLING: Int32 { get }
var NPVERS_HAS_CLEAR_SITE_DATA: Int32 { get }
func NPP_Initialize() -> NPError
func NPP_Shutdown()
func NPP_New(_ pluginType: NPMIMEType!, _ instance: NPP!, _ mode: UInt16, _ argc: Int16, _ argn: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!, _ argv: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!, _ saved: UnsafeMutablePointer<NPSavedData>!) -> NPError
func NPP_Destroy(_ instance: NPP!, _ save: UnsafeMutablePointer<UnsafeMutablePointer<NPSavedData>?>!) -> NPError
func NPP_SetWindow(_ instance: NPP!, _ window: UnsafeMutablePointer<NPWindow>!) -> NPError
func NPP_NewStream(_ instance: NPP!, _ type: NPMIMEType!, _ stream: UnsafeMutablePointer<NPStream>!, _ seekable: NPBool, _ stype: UnsafeMutablePointer<UInt16>!) -> NPError
func NPP_DestroyStream(_ instance: NPP!, _ stream: UnsafeMutablePointer<NPStream>!, _ reason: NPReason) -> NPError
func NPP_WriteReady(_ instance: NPP!, _ stream: UnsafeMutablePointer<NPStream>!) -> Int32
func NPP_Write(_ instance: NPP!, _ stream: UnsafeMutablePointer<NPStream>!, _ offset: Int32, _ len: Int32, _ buffer: UnsafeMutableRawPointer!) -> Int32
func NPP_StreamAsFile(_ instance: NPP!, _ stream: UnsafeMutablePointer<NPStream>!, _ fname: UnsafePointer<CChar>!)
func NPP_Print(_ instance: NPP!, _ platformPrint: UnsafeMutablePointer<NPPrint>!)
func NPP_HandleEvent(_ instance: NPP!, _ event: UnsafeMutableRawPointer!) -> Int16
func NPP_URLNotify(_ instance: NPP!, _ url: UnsafePointer<CChar>!, _ reason: NPReason, _ notifyData: UnsafeMutableRawPointer!)
func NPP_GetJavaClass() -> UnsafeMutableRawPointer!
func NPP_GetValue(_ instance: NPP!, _ variable: NPPVariable, _ value: UnsafeMutableRawPointer!) -> NPError
func NPP_SetValue(_ instance: NPP!, _ variable: NPNVariable, _ value: UnsafeMutableRawPointer!) -> NPError
func NPP_GotFocus(_ instance: NPP!, _ direction: NPFocusDirection) -> NPBool
func NPP_LostFocus(_ instance: NPP!)
func NPP_URLRedirectNotify(_ instance: NPP!, _ url: UnsafePointer<CChar>!, _ status: Int32, _ notifyData: UnsafeMutableRawPointer!)
func NPP_ClearSiteData(_ site: UnsafePointer<CChar>!, _ flags: UInt64, _ maxAge: UInt64) -> NPError
func NPP_GetSitesWithData() -> UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!
func NPN_Version(_ plugin_major: UnsafeMutablePointer<Int32>!, _ plugin_minor: UnsafeMutablePointer<Int32>!, _ netscape_major: UnsafeMutablePointer<Int32>!, _ netscape_minor: UnsafeMutablePointer<Int32>!)
func NPN_GetURLNotify(_ instance: NPP!, _ url: UnsafePointer<CChar>!, _ target: UnsafePointer<CChar>!, _ notifyData: UnsafeMutableRawPointer!) -> NPError
func NPN_GetURL(_ instance: NPP!, _ url: UnsafePointer<CChar>!, _ target: UnsafePointer<CChar>!) -> NPError
func NPN_PostURLNotify(_ instance: NPP!, _ url: UnsafePointer<CChar>!, _ target: UnsafePointer<CChar>!, _ len: UInt32, _ buf: UnsafePointer<CChar>!, _ file: NPBool, _ notifyData: UnsafeMutableRawPointer!) -> NPError
func NPN_PostURL(_ instance: NPP!, _ url: UnsafePointer<CChar>!, _ target: UnsafePointer<CChar>!, _ len: UInt32, _ buf: UnsafePointer<CChar>!, _ file: NPBool) -> NPError
func NPN_RequestRead(_ stream: UnsafeMutablePointer<NPStream>!, _ rangeList: UnsafeMutablePointer<NPByteRange>!) -> NPError
func NPN_NewStream(_ instance: NPP!, _ type: NPMIMEType!, _ target: UnsafePointer<CChar>!, _ stream: UnsafeMutablePointer<UnsafeMutablePointer<NPStream>?>!) -> NPError
func NPN_Write(_ instance: NPP!, _ stream: UnsafeMutablePointer<NPStream>!, _ len: Int32, _ buffer: UnsafeMutableRawPointer!) -> Int32
func NPN_DestroyStream(_ instance: NPP!, _ stream: UnsafeMutablePointer<NPStream>!, _ reason: NPReason) -> NPError
func NPN_Status(_ instance: NPP!, _ message: UnsafePointer<CChar>!)
func NPN_UserAgent(_ instance: NPP!) -> UnsafePointer<CChar>!
func NPN_MemAlloc(_ size: UInt32) -> UnsafeMutableRawPointer!
func NPN_MemFree(_ ptr: UnsafeMutableRawPointer!)
func NPN_MemFlush(_ size: UInt32) -> UInt32
func NPN_ReloadPlugins(_ reloadPages: NPBool)
func NPN_GetJavaEnv() -> UnsafeMutableRawPointer!
func NPN_GetJavaPeer(_ instance: NPP!) -> UnsafeMutableRawPointer!
func NPN_GetValue(_ instance: NPP!, _ variable: NPNVariable, _ value: UnsafeMutableRawPointer!) -> NPError
func NPN_SetValue(_ instance: NPP!, _ variable: NPPVariable, _ value: UnsafeMutableRawPointer!) -> NPError
func NPN_InvalidateRect(_ instance: NPP!, _ invalidRect: UnsafeMutablePointer<NPRect>!)
func NPN_InvalidateRegion(_ instance: NPP!, _ invalidRegion: NPRegion!)
func NPN_ForceRedraw(_ instance: NPP!)
func NPN_PushPopupsEnabledState(_ instance: NPP!, _ enabled: NPBool)
func NPN_PopPopupsEnabledState(_ instance: NPP!)
func NPN_PluginThreadAsyncCall(_ instance: NPP!, _ func: (@convention(c) (UnsafeMutableRawPointer?) -> Void)!, _ userData: UnsafeMutableRawPointer!)
func NPN_GetValueForURL(_ instance: NPP!, _ variable: NPNURLVariable, _ url: UnsafePointer<CChar>!, _ value: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!, _ len: UnsafeMutablePointer<UInt32>!) -> NPError
func NPN_SetValueForURL(_ instance: NPP!, _ variable: NPNURLVariable, _ url: UnsafePointer<CChar>!, _ value: UnsafePointer<CChar>!, _ len: UInt32) -> NPError
func NPN_GetAuthenticationInfo(_ instance: NPP!, _ protocol: UnsafePointer<CChar>!, _ host: UnsafePointer<CChar>!, _ port: Int32, _ scheme: UnsafePointer<CChar>!, _ realm: UnsafePointer<CChar>!, _ username: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!, _ ulen: UnsafeMutablePointer<UInt32>!, _ password: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>!, _ plen: UnsafeMutablePointer<UInt32>!) -> NPError
func NPN_ScheduleTimer(_ instance: NPP!, _ interval: UInt32, _ repeat: NPBool, _ timerFunc: (@convention(c) (NPP?, UInt32) -> Void)!) -> UInt32
func NPN_UnscheduleTimer(_ instance: NPP!, _ timerID: UInt32)
func NPN_PopUpContextMenu(_ instance: NPP!, _ menu: OpaquePointer!) -> NPError
func NPN_ConvertPoint(_ instance: NPP!, _ sourceX: Double, _ sourceY: Double, _ sourceSpace: NPCoordinateSpace, _ destX: UnsafeMutablePointer<Double>!, _ destY: UnsafeMutablePointer<Double>!, _ destSpace: NPCoordinateSpace) -> NPBool
func NPN_HandleEvent(_ instance: NPP!, _ event: UnsafeMutableRawPointer!, _ handled: NPBool) -> NPBool
func NPN_UnfocusInstance(_ instance: NPP!, _ direction: NPFocusDirection) -> NPBool
func NPN_URLRedirectResponse(_ instance: NPP!, _ notifyData: UnsafeMutableRawPointer!, _ allow: NPBool)
typealias NPUTF8 = CChar
struct _NPString {
  var UTF8Characters: UnsafePointer<NPUTF8>!
  var UTF8Length: UInt32
  init()
  init(UTF8Characters: UnsafePointer<NPUTF8>!, UTF8Length: UInt32)
}
typealias NPString = _NPString
struct NPVariantType : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var NPVariantType_Void: NPVariantType { get }
var NPVariantType_Null: NPVariantType { get }
var NPVariantType_Bool: NPVariantType { get }
var NPVariantType_Int32: NPVariantType { get }
var NPVariantType_Double: NPVariantType { get }
var NPVariantType_String: NPVariantType { get }
var NPVariantType_Object: NPVariantType { get }
struct _NPVariant {
  struct __Unnamed_union_value {
    var boolValue: Bool
    var intValue: Int32
    var doubleValue: Double
    var stringValue: NPString
    var objectValue: UnsafeMutablePointer<NPObject>!
    init(boolValue: Bool)
    init(intValue: Int32)
    init(doubleValue: Double)
    init(stringValue: NPString)
    init(objectValue: UnsafeMutablePointer<NPObject>!)
    init()
  }
  var type: NPVariantType
  var value: _NPVariant.__Unnamed_union_value
  init()
  init(type: NPVariantType, value: _NPVariant.__Unnamed_union_value)
}
typealias NPVariant = _NPVariant
func NPN_ReleaseVariantValue(_ variant: UnsafeMutablePointer<NPVariant>!)
typealias NPIdentifier = UnsafeMutableRawPointer
func NPN_GetStringIdentifier(_ name: UnsafePointer<NPUTF8>!) -> NPIdentifier!
func NPN_GetStringIdentifiers(_ names: UnsafeMutablePointer<UnsafePointer<NPUTF8>?>!, _ nameCount: Int32, _ identifiers: UnsafeMutablePointer<NPIdentifier?>!)
func NPN_GetIntIdentifier(_ intid: Int32) -> NPIdentifier!
func NPN_IdentifierIsString(_ identifier: NPIdentifier!) -> Bool
func NPN_UTF8FromIdentifier(_ identifier: NPIdentifier!) -> UnsafeMutablePointer<NPUTF8>!
func NPN_IntFromIdentifier(_ identifier: NPIdentifier!) -> Int32
typealias NPAllocateFunctionPtr = @convention(c) (NPP?, UnsafeMutablePointer<NPClass>?) -> UnsafeMutablePointer<NPObject>?
typealias NPDeallocateFunctionPtr = @convention(c) (UnsafeMutablePointer<NPObject>?) -> Void
typealias NPInvalidateFunctionPtr = @convention(c) (UnsafeMutablePointer<NPObject>?) -> Void
typealias NPHasMethodFunctionPtr = @convention(c) (UnsafeMutablePointer<NPObject>?, NPIdentifier?) -> Bool
typealias NPInvokeFunctionPtr = @convention(c) (UnsafeMutablePointer<NPObject>?, NPIdentifier?, UnsafePointer<NPVariant>?, UInt32, UnsafeMutablePointer<NPVariant>?) -> Bool
typealias NPInvokeDefaultFunctionPtr = @convention(c) (UnsafeMutablePointer<NPObject>?, UnsafePointer<NPVariant>?, UInt32, UnsafeMutablePointer<NPVariant>?) -> Bool
typealias NPHasPropertyFunctionPtr = @convention(c) (UnsafeMutablePointer<NPObject>?, NPIdentifier?) -> Bool
typealias NPGetPropertyFunctionPtr = @convention(c) (UnsafeMutablePointer<NPObject>?, NPIdentifier?, UnsafeMutablePointer<NPVariant>?) -> Bool
typealias NPSetPropertyFunctionPtr = @convention(c) (UnsafeMutablePointer<NPObject>?, NPIdentifier?, UnsafePointer<NPVariant>?) -> Bool
typealias NPRemovePropertyFunctionPtr = @convention(c) (UnsafeMutablePointer<NPObject>?, NPIdentifier?) -> Bool
typealias NPEnumerationFunctionPtr = @convention(c) (UnsafeMutablePointer<NPObject>?, UnsafeMutablePointer<UnsafeMutablePointer<NPIdentifier?>?>?, UnsafeMutablePointer<UInt32>?) -> Bool
typealias NPConstructFunctionPtr = @convention(c) (UnsafeMutablePointer<NPObject>?, UnsafePointer<NPVariant>?, UInt32, UnsafeMutablePointer<NPVariant>?) -> Bool
struct NPClass {
  var structVersion: UInt32
  var allocate: NPAllocateFunctionPtr!
  var deallocate: NPDeallocateFunctionPtr!
  var invalidate: NPInvalidateFunctionPtr!
  var hasMethod: NPHasMethodFunctionPtr!
  var invoke: NPInvokeFunctionPtr!
  var invokeDefault: NPInvokeDefaultFunctionPtr!
  var hasProperty: NPHasPropertyFunctionPtr!
  var getProperty: NPGetPropertyFunctionPtr!
  var setProperty: NPSetPropertyFunctionPtr!
  var removeProperty: NPRemovePropertyFunctionPtr!
  var enumerate: NPEnumerationFunctionPtr!
  var construct: NPConstructFunctionPtr!
  init()
  init(structVersion: UInt32, allocate: NPAllocateFunctionPtr!, deallocate: NPDeallocateFunctionPtr!, invalidate: NPInvalidateFunctionPtr!, hasMethod: NPHasMethodFunctionPtr!, invoke: NPInvokeFunctionPtr!, invokeDefault: NPInvokeDefaultFunctionPtr!, hasProperty: NPHasPropertyFunctionPtr!, getProperty: NPGetPropertyFunctionPtr!, setProperty: NPSetPropertyFunctionPtr!, removeProperty: NPRemovePropertyFunctionPtr!, enumerate: NPEnumerationFunctionPtr!, construct: NPConstructFunctionPtr!)
}
var NP_CLASS_STRUCT_VERSION: Int32 { get }
var NP_CLASS_STRUCT_VERSION_ENUM: Int32 { get }
var NP_CLASS_STRUCT_VERSION_CTOR: Int32 { get }
struct NPObject {
  var _class: UnsafeMutablePointer<NPClass>!
  var referenceCount: UInt32
  init()
  init(_class: UnsafeMutablePointer<NPClass>!, referenceCount: UInt32)
}
func NPN_CreateObject(_ npp: NPP!, _ aClass: UnsafeMutablePointer<NPClass>!) -> UnsafeMutablePointer<NPObject>!
func NPN_RetainObject(_ npobj: UnsafeMutablePointer<NPObject>!) -> UnsafeMutablePointer<NPObject>!
func NPN_ReleaseObject(_ npobj: UnsafeMutablePointer<NPObject>!)
func NPN_Invoke(_ npp: NPP!, _ npobj: UnsafeMutablePointer<NPObject>!, _ methodName: NPIdentifier!, _ args: UnsafePointer<NPVariant>!, _ argCount: UInt32, _ result: UnsafeMutablePointer<NPVariant>!) -> Bool
func NPN_InvokeDefault(_ npp: NPP!, _ npobj: UnsafeMutablePointer<NPObject>!, _ args: UnsafePointer<NPVariant>!, _ argCount: UInt32, _ result: UnsafeMutablePointer<NPVariant>!) -> Bool
func NPN_Evaluate(_ npp: NPP!, _ npobj: UnsafeMutablePointer<NPObject>!, _ script: UnsafeMutablePointer<NPString>!, _ result: UnsafeMutablePointer<NPVariant>!) -> Bool
func NPN_GetProperty(_ npp: NPP!, _ npobj: UnsafeMutablePointer<NPObject>!, _ propertyName: NPIdentifier!, _ result: UnsafeMutablePointer<NPVariant>!) -> Bool
func NPN_SetProperty(_ npp: NPP!, _ npobj: UnsafeMutablePointer<NPObject>!, _ propertyName: NPIdentifier!, _ value: UnsafePointer<NPVariant>!) -> Bool
func NPN_RemoveProperty(_ npp: NPP!, _ npobj: UnsafeMutablePointer<NPObject>!, _ propertyName: NPIdentifier!) -> Bool
func NPN_HasProperty(_ npp: NPP!, _ npobj: UnsafeMutablePointer<NPObject>!, _ propertyName: NPIdentifier!) -> Bool
func NPN_HasMethod(_ npp: NPP!, _ npobj: UnsafeMutablePointer<NPObject>!, _ methodName: NPIdentifier!) -> Bool
func NPN_Enumerate(_ npp: NPP!, _ npobj: UnsafeMutablePointer<NPObject>!, _ identifier: UnsafeMutablePointer<UnsafeMutablePointer<NPIdentifier?>?>!, _ count: UnsafeMutablePointer<UInt32>!) -> Bool
func NPN_Construct(_ npp: NPP!, _ npobj: UnsafeMutablePointer<NPObject>!, _ args: UnsafePointer<NPVariant>!, _ argCount: UInt32, _ result: UnsafeMutablePointer<NPVariant>!) -> Bool
func NPN_SetException(_ npobj: UnsafeMutablePointer<NPObject>!, _ message: UnsafePointer<NPUTF8>!)
typealias NPN_GetURLNotifyProcPtr = @convention(c) (NPP?, UnsafePointer<CChar>?, UnsafePointer<CChar>?, UnsafeMutableRawPointer?) -> NPError
typealias NPN_PostURLNotifyProcPtr = @convention(c) (NPP?, UnsafePointer<CChar>?, UnsafePointer<CChar>?, UInt32, UnsafePointer<CChar>?, NPBool, UnsafeMutableRawPointer?) -> NPError
typealias NPN_RequestReadProcPtr = @convention(c) (UnsafeMutablePointer<NPStream>?, UnsafeMutablePointer<NPByteRange>?) -> NPError
typealias NPN_NewStreamProcPtr = @convention(c) (NPP?, NPMIMEType?, UnsafePointer<CChar>?, UnsafeMutablePointer<UnsafeMutablePointer<NPStream>?>?) -> NPError
typealias NPN_WriteProcPtr = @convention(c) (NPP?, UnsafeMutablePointer<NPStream>?, Int32, UnsafeMutableRawPointer?) -> Int32
typealias NPN_DestroyStreamProcPtr = @convention(c) (NPP?, UnsafeMutablePointer<NPStream>?, NPReason) -> NPError
typealias NPN_StatusProcPtr = @convention(c) (NPP?, UnsafePointer<CChar>?) -> Void
typealias NPN_UserAgentProcPtr = @convention(c) (NPP?) -> UnsafePointer<CChar>?
typealias NPN_MemAllocProcPtr = @convention(c) (UInt32) -> UnsafeMutableRawPointer?
typealias NPN_MemFreeProcPtr = @convention(c) (UnsafeMutableRawPointer?) -> Void
typealias NPN_MemFlushProcPtr = @convention(c) (UInt32) -> UInt32
typealias NPN_ReloadPluginsProcPtr = @convention(c) (NPBool) -> Void
typealias NPN_GetValueProcPtr = @convention(c) (NPP?, NPNVariable, UnsafeMutableRawPointer?) -> NPError
typealias NPN_SetValueProcPtr = @convention(c) (NPP?, NPPVariable, UnsafeMutableRawPointer?) -> NPError
typealias NPN_InvalidateRectProcPtr = @convention(c) (NPP?, UnsafeMutablePointer<NPRect>?) -> Void
typealias NPN_InvalidateRegionProcPtr = @convention(c) (NPP?, NPRegion?) -> Void
typealias NPN_ForceRedrawProcPtr = @convention(c) (NPP?) -> Void
typealias NPN_GetURLProcPtr = @convention(c) (NPP?, UnsafePointer<CChar>?, UnsafePointer<CChar>?) -> NPError
typealias NPN_PostURLProcPtr = @convention(c) (NPP?, UnsafePointer<CChar>?, UnsafePointer<CChar>?, UInt32, UnsafePointer<CChar>?, NPBool) -> NPError
typealias NPN_GetJavaEnvProcPtr = @convention(c) () -> UnsafeMutableRawPointer?
typealias NPN_GetJavaPeerProcPtr = @convention(c) (NPP?) -> UnsafeMutableRawPointer?
typealias NPN_PushPopupsEnabledStateProcPtr = @convention(c) (NPP?, NPBool) -> Void
typealias NPN_PopPopupsEnabledStateProcPtr = @convention(c) (NPP?) -> Void
typealias NPN_PluginThreadAsyncCallProcPtr = @convention(c) (NPP?, (@convention(c) (UnsafeMutableRawPointer?) -> Void)?, UnsafeMutableRawPointer?) -> Void
typealias NPN_GetValueForURLProcPtr = @convention(c) (NPP?, NPNURLVariable, UnsafePointer<CChar>?, UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>?, UnsafeMutablePointer<UInt32>?) -> NPError
typealias NPN_SetValueForURLProcPtr = @convention(c) (NPP?, NPNURLVariable, UnsafePointer<CChar>?, UnsafePointer<CChar>?, UInt32) -> NPError
typealias NPN_GetAuthenticationInfoProcPtr = @convention(c) (NPP?, UnsafePointer<CChar>?, UnsafePointer<CChar>?, Int32, UnsafePointer<CChar>?, UnsafePointer<CChar>?, UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>?, UnsafeMutablePointer<UInt32>?) -> NPError
typealias NPN_ScheduleTimerProcPtr = @convention(c) (NPP?, UInt32, NPBool, (@convention(c) (NPP?, UInt32) -> Void)?) -> UInt32
typealias NPN_UnscheduleTimerProcPtr = @convention(c) (NPP?, UInt32) -> Void
typealias NPN_PopUpContextMenuProcPtr = @convention(c) (NPP?, OpaquePointer?) -> NPError
typealias NPN_ConvertPointProcPtr = @convention(c) (NPP?, Double, Double, NPCoordinateSpace, UnsafeMutablePointer<Double>?, UnsafeMutablePointer<Double>?, NPCoordinateSpace) -> NPBool
typealias NPN_HandleEventPtr = @convention(c) (NPP?, UnsafeMutableRawPointer?, NPBool) -> NPBool
typealias NPN_UnfocusInstancePtr = @convention(c) (NPP?, NPFocusDirection) -> NPBool
typealias NPN_URLRedirectResponsePtr = @convention(c) (NPP?, UnsafeMutableRawPointer?, NPBool) -> Void
typealias NPN_ReleaseVariantValueProcPtr = @convention(c) (UnsafeMutablePointer<NPVariant>?) -> Void
typealias NPN_GetStringIdentifierProcPtr = @convention(c) (UnsafePointer<NPUTF8>?) -> NPIdentifier?
typealias NPN_GetStringIdentifiersProcPtr = @convention(c) (UnsafeMutablePointer<UnsafePointer<NPUTF8>?>?, Int32, UnsafeMutablePointer<NPIdentifier?>?) -> Void
typealias NPN_GetIntIdentifierProcPtr = @convention(c) (Int32) -> NPIdentifier?
typealias NPN_IntFromIdentifierProcPtr = @convention(c) (NPIdentifier?) -> Int32
typealias NPN_IdentifierIsStringProcPtr = @convention(c) (NPIdentifier?) -> Bool
typealias NPN_UTF8FromIdentifierProcPtr = @convention(c) (NPIdentifier?) -> UnsafeMutablePointer<NPUTF8>?
typealias NPN_CreateObjectProcPtr = @convention(c) (NPP?, UnsafeMutablePointer<NPClass>?) -> UnsafeMutablePointer<NPObject>?
typealias NPN_RetainObjectProcPtr = @convention(c) (UnsafeMutablePointer<NPObject>?) -> UnsafeMutablePointer<NPObject>?
typealias NPN_ReleaseObjectProcPtr = @convention(c) (UnsafeMutablePointer<NPObject>?) -> Void
typealias NPN_InvokeProcPtr = @convention(c) (NPP?, UnsafeMutablePointer<NPObject>?, NPIdentifier?, UnsafePointer<NPVariant>?, UInt32, UnsafeMutablePointer<NPVariant>?) -> Bool
typealias NPN_InvokeDefaultProcPtr = @convention(c) (NPP?, UnsafeMutablePointer<NPObject>?, UnsafePointer<NPVariant>?, UInt32, UnsafeMutablePointer<NPVariant>?) -> Bool
typealias NPN_EvaluateProcPtr = @convention(c) (NPP?, UnsafeMutablePointer<NPObject>?, UnsafeMutablePointer<NPString>?, UnsafeMutablePointer<NPVariant>?) -> Bool
typealias NPN_GetPropertyProcPtr = @convention(c) (NPP?, UnsafeMutablePointer<NPObject>?, NPIdentifier?, UnsafeMutablePointer<NPVariant>?) -> Bool
typealias NPN_SetPropertyProcPtr = @convention(c) (NPP?, UnsafeMutablePointer<NPObject>?, NPIdentifier?, UnsafePointer<NPVariant>?) -> Bool
typealias NPN_HasPropertyProcPtr = @convention(c) (NPP?, UnsafeMutablePointer<NPObject>?, NPIdentifier?) -> Bool
typealias NPN_HasMethodProcPtr = @convention(c) (NPP?, UnsafeMutablePointer<NPObject>?, NPIdentifier?) -> Bool
typealias NPN_RemovePropertyProcPtr = @convention(c) (NPP?, UnsafeMutablePointer<NPObject>?, NPIdentifier?) -> Bool
typealias NPN_SetExceptionProcPtr = @convention(c) (UnsafeMutablePointer<NPObject>?, UnsafePointer<NPUTF8>?) -> Void
typealias NPN_EnumerateProcPtr = @convention(c) (NPP?, UnsafeMutablePointer<NPObject>?, UnsafeMutablePointer<UnsafeMutablePointer<NPIdentifier?>?>?, UnsafeMutablePointer<UInt32>?) -> Bool
typealias NPN_ConstructProcPtr = @convention(c) (NPP?, UnsafeMutablePointer<NPObject>?, UnsafePointer<NPVariant>?, UInt32, UnsafeMutablePointer<NPVariant>?) -> Bool
typealias NPP_NewProcPtr = @convention(c) (NPMIMEType?, NPP?, UInt16, Int16, UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>?, UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>?, UnsafeMutablePointer<NPSavedData>?) -> NPError
typealias NPP_DestroyProcPtr = @convention(c) (NPP?, UnsafeMutablePointer<UnsafeMutablePointer<NPSavedData>?>?) -> NPError
typealias NPP_SetWindowProcPtr = @convention(c) (NPP?, UnsafeMutablePointer<NPWindow>?) -> NPError
typealias NPP_NewStreamProcPtr = @convention(c) (NPP?, NPMIMEType?, UnsafeMutablePointer<NPStream>?, NPBool, UnsafeMutablePointer<UInt16>?) -> NPError
typealias NPP_DestroyStreamProcPtr = @convention(c) (NPP?, UnsafeMutablePointer<NPStream>?, NPReason) -> NPError
typealias NPP_StreamAsFileProcPtr = @convention(c) (NPP?, UnsafeMutablePointer<NPStream>?, UnsafePointer<CChar>?) -> Void
typealias NPP_WriteReadyProcPtr = @convention(c) (NPP?, UnsafeMutablePointer<NPStream>?) -> Int32
typealias NPP_WriteProcPtr = @convention(c) (NPP?, UnsafeMutablePointer<NPStream>?, Int32, Int32, UnsafeMutableRawPointer?) -> Int32
typealias NPP_PrintProcPtr = @convention(c) (NPP?, UnsafeMutablePointer<NPPrint>?) -> Void
typealias NPP_HandleEventProcPtr = @convention(c) (NPP?, UnsafeMutableRawPointer?) -> Int16
typealias NPP_URLNotifyProcPtr = @convention(c) (NPP?, UnsafePointer<CChar>?, NPReason, UnsafeMutableRawPointer?) -> Void
typealias NPP_GetValueProcPtr = @convention(c) (NPP?, NPPVariable, UnsafeMutableRawPointer?) -> NPError
typealias NPP_SetValueProcPtr = @convention(c) (NPP?, NPNVariable, UnsafeMutableRawPointer?) -> NPError
typealias NPP_GotFocusPtr = @convention(c) (NPP?, NPFocusDirection) -> NPBool
typealias NPP_LostFocusPtr = @convention(c) (NPP?) -> Void
typealias NPP_URLRedirectNotifyPtr = @convention(c) (NPP?, UnsafePointer<CChar>?, Int32, UnsafeMutableRawPointer?) -> Void
typealias NPP_ClearSiteDataPtr = @convention(c) (UnsafePointer<CChar>?, UInt64, UInt64) -> NPError
typealias NPP_GetSitesWithDataPtr = @convention(c) () -> UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>?
typealias NPP_GetJavaClassProcPtr = @convention(c) () -> UnsafeMutableRawPointer?
typealias JRIGlobalRef = UnsafeMutableRawPointer
struct _NPNetscapeFuncs {
  var size: UInt16
  var version: UInt16
  var geturl: NPN_GetURLProcPtr!
  var posturl: NPN_PostURLProcPtr!
  var requestread: NPN_RequestReadProcPtr!
  var newstream: NPN_NewStreamProcPtr!
  var write: NPN_WriteProcPtr!
  var destroystream: NPN_DestroyStreamProcPtr!
  var status: NPN_StatusProcPtr!
  var uagent: NPN_UserAgentProcPtr!
  var memalloc: NPN_MemAllocProcPtr!
  var memfree: NPN_MemFreeProcPtr!
  var memflush: NPN_MemFlushProcPtr!
  var reloadplugins: NPN_ReloadPluginsProcPtr!
  var getJavaEnv: NPN_GetJavaEnvProcPtr!
  var getJavaPeer: NPN_GetJavaPeerProcPtr!
  var geturlnotify: NPN_GetURLNotifyProcPtr!
  var posturlnotify: NPN_PostURLNotifyProcPtr!
  var getvalue: NPN_GetValueProcPtr!
  var setvalue: NPN_SetValueProcPtr!
  var invalidaterect: NPN_InvalidateRectProcPtr!
  var invalidateregion: NPN_InvalidateRegionProcPtr!
  var forceredraw: NPN_ForceRedrawProcPtr!
  var getstringidentifier: NPN_GetStringIdentifierProcPtr!
  var getstringidentifiers: NPN_GetStringIdentifiersProcPtr!
  var getintidentifier: NPN_GetIntIdentifierProcPtr!
  var identifierisstring: NPN_IdentifierIsStringProcPtr!
  var utf8fromidentifier: NPN_UTF8FromIdentifierProcPtr!
  var intfromidentifier: NPN_IntFromIdentifierProcPtr!
  var createobject: NPN_CreateObjectProcPtr!
  var retainobject: NPN_RetainObjectProcPtr!
  var releaseobject: NPN_ReleaseObjectProcPtr!
  var invoke: NPN_InvokeProcPtr!
  var invokeDefault: NPN_InvokeDefaultProcPtr!
  var evaluate: NPN_EvaluateProcPtr!
  var getproperty: NPN_GetPropertyProcPtr!
  var setproperty: NPN_SetPropertyProcPtr!
  var removeproperty: NPN_RemovePropertyProcPtr!
  var hasproperty: NPN_HasPropertyProcPtr!
  var hasmethod: NPN_HasMethodProcPtr!
  var releasevariantvalue: NPN_ReleaseVariantValueProcPtr!
  var setexception: NPN_SetExceptionProcPtr!
  var pushpopupsenabledstate: NPN_PushPopupsEnabledStateProcPtr!
  var poppopupsenabledstate: NPN_PopPopupsEnabledStateProcPtr!
  var enumerate: NPN_EnumerateProcPtr!
  var pluginthreadasynccall: NPN_PluginThreadAsyncCallProcPtr!
  var construct: NPN_ConstructProcPtr!
  var getvalueforurl: NPN_GetValueForURLProcPtr!
  var setvalueforurl: NPN_SetValueForURLProcPtr!
  var getauthenticationinfo: NPN_GetAuthenticationInfoProcPtr!
  var scheduletimer: NPN_ScheduleTimerProcPtr!
  var unscheduletimer: NPN_UnscheduleTimerProcPtr!
  var popupcontextmenu: NPN_PopUpContextMenuProcPtr!
  var convertpoint: NPN_ConvertPointProcPtr!
  var handleevent: NPN_HandleEventPtr!
  var unfocusinstance: NPN_UnfocusInstancePtr!
  var urlredirectresponse: NPN_URLRedirectResponsePtr!
  init()
  init(size: UInt16, version: UInt16, geturl: NPN_GetURLProcPtr!, posturl: NPN_PostURLProcPtr!, requestread: NPN_RequestReadProcPtr!, newstream: NPN_NewStreamProcPtr!, write: NPN_WriteProcPtr!, destroystream: NPN_DestroyStreamProcPtr!, status: NPN_StatusProcPtr!, uagent: NPN_UserAgentProcPtr!, memalloc: NPN_MemAllocProcPtr!, memfree: NPN_MemFreeProcPtr!, memflush: NPN_MemFlushProcPtr!, reloadplugins: NPN_ReloadPluginsProcPtr!, getJavaEnv: NPN_GetJavaEnvProcPtr!, getJavaPeer: NPN_GetJavaPeerProcPtr!, geturlnotify: NPN_GetURLNotifyProcPtr!, posturlnotify: NPN_PostURLNotifyProcPtr!, getvalue: NPN_GetValueProcPtr!, setvalue: NPN_SetValueProcPtr!, invalidaterect: NPN_InvalidateRectProcPtr!, invalidateregion: NPN_InvalidateRegionProcPtr!, forceredraw: NPN_ForceRedrawProcPtr!, getstringidentifier: NPN_GetStringIdentifierProcPtr!, getstringidentifiers: NPN_GetStringIdentifiersProcPtr!, getintidentifier: NPN_GetIntIdentifierProcPtr!, identifierisstring: NPN_IdentifierIsStringProcPtr!, utf8fromidentifier: NPN_UTF8FromIdentifierProcPtr!, intfromidentifier: NPN_IntFromIdentifierProcPtr!, createobject: NPN_CreateObjectProcPtr!, retainobject: NPN_RetainObjectProcPtr!, releaseobject: NPN_ReleaseObjectProcPtr!, invoke: NPN_InvokeProcPtr!, invokeDefault: NPN_InvokeDefaultProcPtr!, evaluate: NPN_EvaluateProcPtr!, getproperty: NPN_GetPropertyProcPtr!, setproperty: NPN_SetPropertyProcPtr!, removeproperty: NPN_RemovePropertyProcPtr!, hasproperty: NPN_HasPropertyProcPtr!, hasmethod: NPN_HasMethodProcPtr!, releasevariantvalue: NPN_ReleaseVariantValueProcPtr!, setexception: NPN_SetExceptionProcPtr!, pushpopupsenabledstate: NPN_PushPopupsEnabledStateProcPtr!, poppopupsenabledstate: NPN_PopPopupsEnabledStateProcPtr!, enumerate: NPN_EnumerateProcPtr!, pluginthreadasynccall: NPN_PluginThreadAsyncCallProcPtr!, construct: NPN_ConstructProcPtr!, getvalueforurl: NPN_GetValueForURLProcPtr!, setvalueforurl: NPN_SetValueForURLProcPtr!, getauthenticationinfo: NPN_GetAuthenticationInfoProcPtr!, scheduletimer: NPN_ScheduleTimerProcPtr!, unscheduletimer: NPN_UnscheduleTimerProcPtr!, popupcontextmenu: NPN_PopUpContextMenuProcPtr!, convertpoint: NPN_ConvertPointProcPtr!, handleevent: NPN_HandleEventPtr!, unfocusinstance: NPN_UnfocusInstancePtr!, urlredirectresponse: NPN_URLRedirectResponsePtr!)
}
typealias NPNetscapeFuncs = _NPNetscapeFuncs
struct _NPPluginFuncs {
  var size: UInt16
  var version: UInt16
  var newp: NPP_NewProcPtr!
  var destroy: NPP_DestroyProcPtr!
  var setwindow: NPP_SetWindowProcPtr!
  var newstream: NPP_NewStreamProcPtr!
  var destroystream: NPP_DestroyStreamProcPtr!
  var asfile: NPP_StreamAsFileProcPtr!
  var writeready: NPP_WriteReadyProcPtr!
  var write: NPP_WriteProcPtr!
  var print: NPP_PrintProcPtr!
  var event: NPP_HandleEventProcPtr!
  var urlnotify: NPP_URLNotifyProcPtr!
  var javaClass: JRIGlobalRef!
  var getvalue: NPP_GetValueProcPtr!
  var setvalue: NPP_SetValueProcPtr!
  var gotfocus: NPP_GotFocusPtr!
  var lostfocus: NPP_LostFocusPtr!
  var urlredirectnotify: NPP_URLRedirectNotifyPtr!
  var clearsitedata: NPP_ClearSiteDataPtr!
  var getsiteswithdata: NPP_GetSitesWithDataPtr!
  init()
  init(size: UInt16, version: UInt16, newp: NPP_NewProcPtr!, destroy: NPP_DestroyProcPtr!, setwindow: NPP_SetWindowProcPtr!, newstream: NPP_NewStreamProcPtr!, destroystream: NPP_DestroyStreamProcPtr!, asfile: NPP_StreamAsFileProcPtr!, writeready: NPP_WriteReadyProcPtr!, write: NPP_WriteProcPtr!, print: NPP_PrintProcPtr!, event: NPP_HandleEventProcPtr!, urlnotify: NPP_URLNotifyProcPtr!, javaClass: JRIGlobalRef!, getvalue: NPP_GetValueProcPtr!, setvalue: NPP_SetValueProcPtr!, gotfocus: NPP_GotFocusPtr!, lostfocus: NPP_LostFocusPtr!, urlredirectnotify: NPP_URLRedirectNotifyPtr!, clearsitedata: NPP_ClearSiteDataPtr!, getsiteswithdata: NPP_GetSitesWithDataPtr!)
}
typealias NPPluginFuncs = _NPPluginFuncs
typealias NP_GetEntryPointsFuncPtr = @convention(c) (UnsafeMutablePointer<NPPluginFuncs>?) -> NPError
typealias NPP_ShutdownProcPtr = @convention(c) () -> Void
typealias BP_CreatePluginMIMETypesPreferencesFuncPtr = @convention(c) () -> Void
typealias MainFuncPtr = @convention(c) (UnsafeMutablePointer<NPNetscapeFuncs>?, UnsafeMutablePointer<NPPluginFuncs>?, UnsafeMutablePointer<NPP_ShutdownProcPtr?>?) -> NPError
typealias NP_InitializeFuncPtr = @convention(c) (UnsafeMutablePointer<NPNetscapeFuncs>?) -> NPError
