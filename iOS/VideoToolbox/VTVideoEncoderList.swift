
@available(iOS 8.0, *)
func VTCopyVideoEncoderList(_ options: CFDictionary?, _ listOfVideoEncodersOut: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(iOS 8.0, *)
let kVTVideoEncoderList_CodecType: CFString
@available(iOS 8.0, *)
let kVTVideoEncoderList_EncoderID: CFString
@available(iOS 8.0, *)
let kVTVideoEncoderList_CodecName: CFString
@available(iOS 8.0, *)
let kVTVideoEncoderList_EncoderName: CFString
@available(iOS 8.0, *)
let kVTVideoEncoderList_DisplayName: CFString
let kVTVideoEncoderList_GPURegistryID: CFString
@available(iOS 13.0, *)
let kVTVideoEncoderList_SupportedSelectionProperties: CFString
@available(iOS 13.0, *)
let kVTVideoEncoderList_PerformanceRating: CFString
@available(iOS 13.0, *)
let kVTVideoEncoderList_QualityRating: CFString
@available(iOS 13.0, *)
let kVTVideoEncoderList_InstanceLimit: CFString
@available(iOS 13.0, *)
let kVTVideoEncoderList_IsHardwareAccelerated: CFString
@available(iOS 11.0, *)
func VTCopySupportedPropertyDictionaryForEncoder(width: Int32, height: Int32, codecType: CMVideoCodecType, encoderSpecification: CFDictionary?, encoderIDOut: UnsafeMutablePointer<CFString?>?, supportedPropertiesOut: UnsafeMutablePointer<CFDictionary?>?) -> OSStatus
