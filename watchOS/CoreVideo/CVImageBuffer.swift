
@available(watchOS 2.0, *)
let kCVImageBufferCGColorSpaceKey: CFString
@available(watchOS 2.0, *)
let kCVImageBufferCleanApertureKey: CFString
@available(watchOS 2.0, *)
let kCVImageBufferCleanApertureWidthKey: CFString
@available(watchOS 2.0, *)
let kCVImageBufferCleanApertureHeightKey: CFString
@available(watchOS 2.0, *)
let kCVImageBufferCleanApertureHorizontalOffsetKey: CFString
@available(watchOS 2.0, *)
let kCVImageBufferCleanApertureVerticalOffsetKey: CFString
@available(watchOS 2.0, *)
let kCVImageBufferPreferredCleanApertureKey: CFString
@available(watchOS 2.0, *)
let kCVImageBufferFieldCountKey: CFString
@available(watchOS 2.0, *)
let kCVImageBufferFieldDetailKey: CFString
@available(watchOS 2.0, *)
let kCVImageBufferFieldDetailTemporalTopFirst: CFString
@available(watchOS 2.0, *)
let kCVImageBufferFieldDetailTemporalBottomFirst: CFString
@available(watchOS 2.0, *)
let kCVImageBufferFieldDetailSpatialFirstLineEarly: CFString
@available(watchOS 2.0, *)
let kCVImageBufferFieldDetailSpatialFirstLineLate: CFString
@available(watchOS 2.0, *)
let kCVImageBufferPixelAspectRatioKey: CFString
@available(watchOS 2.0, *)
let kCVImageBufferPixelAspectRatioHorizontalSpacingKey: CFString
@available(watchOS 2.0, *)
let kCVImageBufferPixelAspectRatioVerticalSpacingKey: CFString
@available(watchOS 2.0, *)
let kCVImageBufferDisplayDimensionsKey: CFString
@available(watchOS 2.0, *)
let kCVImageBufferDisplayWidthKey: CFString
@available(watchOS 2.0, *)
let kCVImageBufferDisplayHeightKey: CFString
@available(watchOS 2.0, *)
let kCVImageBufferGammaLevelKey: CFString
@available(watchOS 2.0, *)
let kCVImageBufferICCProfileKey: CFString
@available(watchOS 2.0, *)
let kCVImageBufferYCbCrMatrixKey: CFString
@available(watchOS 2.0, *)
let kCVImageBufferYCbCrMatrix_ITU_R_709_2: CFString
@available(watchOS 2.0, *)
let kCVImageBufferYCbCrMatrix_ITU_R_601_4: CFString
@available(watchOS 2.0, *)
let kCVImageBufferYCbCrMatrix_SMPTE_240M_1995: CFString
@available(watchOS, introduced: 2.0, deprecated: 7.0, message: "kCVImageBufferYCbCrMatrix_DCI_P3 no longer supported.")
let kCVImageBufferYCbCrMatrix_DCI_P3: CFString
@available(watchOS, introduced: 2.0, deprecated: 7.0, message: "kCVImageBufferYCbCrMatrix_P3_D65 no longer supported.")
let kCVImageBufferYCbCrMatrix_P3_D65: CFString
@available(watchOS 2.0, *)
let kCVImageBufferYCbCrMatrix_ITU_R_2020: CFString
@available(watchOS 2.0, *)
let kCVImageBufferColorPrimariesKey: CFString
@available(watchOS 2.0, *)
let kCVImageBufferColorPrimaries_ITU_R_709_2: CFString
@available(watchOS 2.0, *)
let kCVImageBufferColorPrimaries_EBU_3213: CFString
@available(watchOS 2.0, *)
let kCVImageBufferColorPrimaries_SMPTE_C: CFString
@available(watchOS 2.0, *)
let kCVImageBufferColorPrimaries_P22: CFString
@available(watchOS 2.0, *)
let kCVImageBufferColorPrimaries_DCI_P3: CFString
@available(watchOS 2.0, *)
let kCVImageBufferColorPrimaries_P3_D65: CFString
@available(watchOS 2.0, *)
let kCVImageBufferColorPrimaries_ITU_R_2020: CFString
@available(watchOS 2.0, *)
let kCVImageBufferTransferFunctionKey: CFString
@available(watchOS 2.0, *)
let kCVImageBufferTransferFunction_ITU_R_709_2: CFString
@available(watchOS 2.0, *)
let kCVImageBufferTransferFunction_SMPTE_240M_1995: CFString
@available(watchOS 2.0, *)
let kCVImageBufferTransferFunction_UseGamma: CFString
@available(watchOS 4.0, *)
let kCVImageBufferTransferFunction_sRGB: CFString
@available(watchOS 2.0, *)
let kCVImageBufferTransferFunction_ITU_R_2020: CFString
@available(watchOS 3.0, *)
let kCVImageBufferTransferFunction_SMPTE_ST_428_1: CFString
@available(watchOS 4.0, *)
let kCVImageBufferTransferFunction_SMPTE_ST_2084_PQ: CFString
@available(watchOS 4.0, *)
let kCVImageBufferTransferFunction_ITU_R_2100_HLG: CFString
@available(watchOS 5.0, *)
let kCVImageBufferTransferFunction_Linear: CFString
@available(watchOS 2.0, *)
let kCVImageBufferChromaLocationTopFieldKey: CFString
@available(watchOS 2.0, *)
let kCVImageBufferChromaLocationBottomFieldKey: CFString
@available(watchOS 2.0, *)
let kCVImageBufferChromaLocation_Left: CFString
@available(watchOS 2.0, *)
let kCVImageBufferChromaLocation_Center: CFString
@available(watchOS 2.0, *)
let kCVImageBufferChromaLocation_TopLeft: CFString
@available(watchOS 2.0, *)
let kCVImageBufferChromaLocation_Top: CFString
@available(watchOS 2.0, *)
let kCVImageBufferChromaLocation_BottomLeft: CFString
@available(watchOS 2.0, *)
let kCVImageBufferChromaLocation_Bottom: CFString
@available(watchOS 2.0, *)
let kCVImageBufferChromaLocation_DV420: CFString
@available(watchOS 2.0, *)
let kCVImageBufferChromaSubsamplingKey: CFString
@available(watchOS 2.0, *)
let kCVImageBufferChromaSubsampling_420: CFString
@available(watchOS 2.0, *)
let kCVImageBufferChromaSubsampling_422: CFString
@available(watchOS 2.0, *)
let kCVImageBufferChromaSubsampling_411: CFString
@available(watchOS 2.0, *)
let kCVImageBufferAlphaChannelIsOpaque: CFString
@available(watchOS 4.0, *)
func CVYCbCrMatrixGetIntegerCodePointForString(_ yCbCrMatrixString: CFString?) -> Int32
@available(watchOS 4.0, *)
func CVColorPrimariesGetIntegerCodePointForString(_ colorPrimariesString: CFString?) -> Int32
@available(watchOS 4.0, *)
func CVTransferFunctionGetIntegerCodePointForString(_ transferFunctionString: CFString?) -> Int32
@available(watchOS 4.0, *)
func CVYCbCrMatrixGetStringForIntegerCodePoint(_ yCbCrMatrixCodePoint: Int32) -> Unmanaged<CFString>?
@available(watchOS 4.0, *)
func CVColorPrimariesGetStringForIntegerCodePoint(_ colorPrimariesCodePoint: Int32) -> Unmanaged<CFString>?
@available(watchOS 4.0, *)
func CVTransferFunctionGetStringForIntegerCodePoint(_ transferFunctionCodePoint: Int32) -> Unmanaged<CFString>?
typealias CVImageBuffer = CVBuffer
@available(watchOS 2.0, *)
func CVImageBufferGetEncodedSize(_ imageBuffer: CVImageBuffer) -> CGSize
@available(watchOS 2.0, *)
func CVImageBufferGetDisplaySize(_ imageBuffer: CVImageBuffer) -> CGSize
@available(watchOS 2.0, *)
func CVImageBufferGetCleanRect(_ imageBuffer: CVImageBuffer) -> CGRect
@available(watchOS 2.0, *)
func CVImageBufferIsFlipped(_ imageBuffer: CVImageBuffer) -> Bool
@available(watchOS 3.0, *)
func CVImageBufferCreateColorSpaceFromAttachments(_ attachments: CFDictionary) -> Unmanaged<CGColorSpace>?
@available(watchOS 4.0, *)
let kCVImageBufferMasteringDisplayColorVolumeKey: CFString
@available(watchOS 4.0, *)
let kCVImageBufferContentLightLevelInfoKey: CFString
