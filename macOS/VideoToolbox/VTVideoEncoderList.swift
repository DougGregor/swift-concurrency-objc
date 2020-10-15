
@available(macOS 10.8, *)
func VTCopyVideoEncoderList(_ options: CFDictionary?, _ listOfVideoEncodersOut: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(macOS 10.8, *)
let kVTVideoEncoderList_CodecType: CFString
@available(macOS 10.8, *)
let kVTVideoEncoderList_EncoderID: CFString
@available(macOS 10.8, *)
let kVTVideoEncoderList_CodecName: CFString
@available(macOS 10.8, *)
let kVTVideoEncoderList_EncoderName: CFString
@available(macOS 10.8, *)
let kVTVideoEncoderList_DisplayName: CFString
@available(macOS 10.14, *)
let kVTVideoEncoderList_GPURegistryID: CFString
@available(macOS 10.14, *)
let kVTVideoEncoderList_SupportedSelectionProperties: CFString
@available(macOS 10.14, *)
let kVTVideoEncoderList_PerformanceRating: CFString
@available(macOS 10.14, *)
let kVTVideoEncoderList_QualityRating: CFString
@available(macOS 10.14, *)
let kVTVideoEncoderList_InstanceLimit: CFString
@available(macOS 10.14, *)
let kVTVideoEncoderList_IsHardwareAccelerated: CFString
@available(macOS 11.0, *)
let kVTVideoEncoderList_SupportsFrameReordering: CFString
@available(macOS 10.13, *)
func VTCopySupportedPropertyDictionaryForEncoder(width: Int32, height: Int32, codecType: CMVideoCodecType, encoderSpecification: CFDictionary?, encoderIDOut: UnsafeMutablePointer<CFString?>?, supportedPropertiesOut: UnsafeMutablePointer<CFDictionary?>?) -> OSStatus
