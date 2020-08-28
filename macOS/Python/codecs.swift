
func PyCodec_Register(_ search_function: UnsafeMutablePointer<PyObject>!) -> Int32
func _PyCodec_Lookup(_ encoding: UnsafePointer<CChar>!) -> UnsafeMutablePointer<PyObject>!
func PyCodec_Encode(_ object: UnsafeMutablePointer<PyObject>!, _ encoding: UnsafePointer<CChar>!, _ errors: UnsafePointer<CChar>!) -> UnsafeMutablePointer<PyObject>!
func PyCodec_Decode(_ object: UnsafeMutablePointer<PyObject>!, _ encoding: UnsafePointer<CChar>!, _ errors: UnsafePointer<CChar>!) -> UnsafeMutablePointer<PyObject>!
func _PyCodec_LookupTextEncoding(_ encoding: UnsafePointer<CChar>!, _ alternate_command: UnsafePointer<CChar>!) -> UnsafeMutablePointer<PyObject>!
func _PyCodec_EncodeText(_ object: UnsafeMutablePointer<PyObject>!, _ encoding: UnsafePointer<CChar>!, _ errors: UnsafePointer<CChar>!) -> UnsafeMutablePointer<PyObject>!
func _PyCodec_DecodeText(_ object: UnsafeMutablePointer<PyObject>!, _ encoding: UnsafePointer<CChar>!, _ errors: UnsafePointer<CChar>!) -> UnsafeMutablePointer<PyObject>!
func _PyCodecInfo_GetIncrementalDecoder(_ codec_info: UnsafeMutablePointer<PyObject>!, _ errors: UnsafePointer<CChar>!) -> UnsafeMutablePointer<PyObject>!
func _PyCodecInfo_GetIncrementalEncoder(_ codec_info: UnsafeMutablePointer<PyObject>!, _ errors: UnsafePointer<CChar>!) -> UnsafeMutablePointer<PyObject>!
func PyCodec_Encoder(_ encoding: UnsafePointer<CChar>!) -> UnsafeMutablePointer<PyObject>!
func PyCodec_Decoder(_ encoding: UnsafePointer<CChar>!) -> UnsafeMutablePointer<PyObject>!
func PyCodec_IncrementalEncoder(_ encoding: UnsafePointer<CChar>!, _ errors: UnsafePointer<CChar>!) -> UnsafeMutablePointer<PyObject>!
func PyCodec_IncrementalDecoder(_ encoding: UnsafePointer<CChar>!, _ errors: UnsafePointer<CChar>!) -> UnsafeMutablePointer<PyObject>!
func PyCodec_StreamReader(_ encoding: UnsafePointer<CChar>!, _ stream: UnsafeMutablePointer<PyObject>!, _ errors: UnsafePointer<CChar>!) -> UnsafeMutablePointer<PyObject>!
func PyCodec_StreamWriter(_ encoding: UnsafePointer<CChar>!, _ stream: UnsafeMutablePointer<PyObject>!, _ errors: UnsafePointer<CChar>!) -> UnsafeMutablePointer<PyObject>!
func PyCodec_RegisterError(_ name: UnsafePointer<CChar>!, _ error: UnsafeMutablePointer<PyObject>!) -> Int32
func PyCodec_LookupError(_ name: UnsafePointer<CChar>!) -> UnsafeMutablePointer<PyObject>!
func PyCodec_StrictErrors(_ exc: UnsafeMutablePointer<PyObject>!) -> UnsafeMutablePointer<PyObject>!
func PyCodec_IgnoreErrors(_ exc: UnsafeMutablePointer<PyObject>!) -> UnsafeMutablePointer<PyObject>!
func PyCodec_ReplaceErrors(_ exc: UnsafeMutablePointer<PyObject>!) -> UnsafeMutablePointer<PyObject>!
func PyCodec_XMLCharRefReplaceErrors(_ exc: UnsafeMutablePointer<PyObject>!) -> UnsafeMutablePointer<PyObject>!
func PyCodec_BackslashReplaceErrors(_ exc: UnsafeMutablePointer<PyObject>!) -> UnsafeMutablePointer<PyObject>!
