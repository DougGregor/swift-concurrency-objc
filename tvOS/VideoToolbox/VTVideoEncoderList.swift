
@available(tvOS 10.2, *)
func VTCopyVideoEncoderList(_ options: CFDictionary?, _ listOfVideoEncodersOut: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(tvOS 10.2, *)
let kVTVideoEncoderList_CodecType: CFString
@available(tvOS 10.2, *)
let kVTVideoEncoderList_EncoderID: CFString
@available(tvOS 10.2, *)
let kVTVideoEncoderList_CodecName: CFString
@available(tvOS 10.2, *)
let kVTVideoEncoderList_EncoderName: CFString
@available(tvOS 10.2, *)
let kVTVideoEncoderList_DisplayName: CFString
let kVTVideoEncoderList_GPURegistryID: CFString
@available(tvOS 13.0, *)
let kVTVideoEncoderList_SupportedSelectionProperties: CFString
@available(tvOS 13.0, *)
let kVTVideoEncoderList_PerformanceRating: CFString
@available(tvOS 13.0, *)
let kVTVideoEncoderList_QualityRating: CFString
@available(tvOS 13.0, *)
let kVTVideoEncoderList_InstanceLimit: CFString
@available(tvOS 13.0, *)
let kVTVideoEncoderList_IsHardwareAccelerated: CFString
@available(tvOS 11.0, *)
func VTCopySupportedPropertyDictionaryForEncoder(width: Int32, height: Int32, codecType: CMVideoCodecType, encoderSpecification: CFDictionary?, encoderIDOut: UnsafeMutablePointer<CFString?>?, supportedPropertiesOut: UnsafeMutablePointer<CFDictionary?>?) -> OSStatus
