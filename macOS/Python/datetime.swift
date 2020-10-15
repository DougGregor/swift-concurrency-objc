
var _PyDateTime_DATE_DATASIZE: Int32 { get }
var _PyDateTime_TIME_DATASIZE: Int32 { get }
var _PyDateTime_DATETIME_DATASIZE: Int32 { get }
struct PyDateTime_Delta {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>!
  var hashcode: Int
  var days: Int32
  var seconds: Int32
  var microseconds: Int32
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>!, hashcode: Int, days: Int32, seconds: Int32, microseconds: Int32)
}
struct PyDateTime_TZInfo {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>!
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>!)
}
struct _PyDateTime_BaseTZInfo {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>!
  var hashcode: Int
  var hastzinfo: CChar
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>!, hashcode: Int, hastzinfo: CChar)
}
struct _PyDateTime_BaseTime {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>!
  var hashcode: Int
  var hastzinfo: CChar
  var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>!, hashcode: Int, hastzinfo: CChar, data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
struct PyDateTime_Time {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>!
  var hashcode: Int
  var hastzinfo: CChar
  var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  var tzinfo: UnsafeMutablePointer<PyObject>!
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>!, hashcode: Int, hastzinfo: CChar, data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), tzinfo: UnsafeMutablePointer<PyObject>!)
}
struct PyDateTime_Date {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>!
  var hashcode: Int
  var hastzinfo: CChar
  var data: (UInt8, UInt8, UInt8, UInt8)
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>!, hashcode: Int, hastzinfo: CChar, data: (UInt8, UInt8, UInt8, UInt8))
}
struct _PyDateTime_BaseDateTime {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>!
  var hashcode: Int
  var hastzinfo: CChar
  var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>!, hashcode: Int, hastzinfo: CChar, data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
struct PyDateTime_DateTime {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>!
  var hashcode: Int
  var hastzinfo: CChar
  var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  var tzinfo: UnsafeMutablePointer<PyObject>!
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>!, hashcode: Int, hastzinfo: CChar, data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), tzinfo: UnsafeMutablePointer<PyObject>!)
}
struct PyDateTime_CAPI {
  var DateType: UnsafeMutablePointer<PyTypeObject>!
  var DateTimeType: UnsafeMutablePointer<PyTypeObject>!
  var TimeType: UnsafeMutablePointer<PyTypeObject>!
  var DeltaType: UnsafeMutablePointer<PyTypeObject>!
  var TZInfoType: UnsafeMutablePointer<PyTypeObject>!
  var Date_FromDate: (@convention(c) (Int32, Int32, Int32, UnsafeMutablePointer<PyTypeObject>?) -> UnsafeMutablePointer<PyObject>?)!
  var DateTime_FromDateAndTime: (@convention(c) (Int32, Int32, Int32, Int32, Int32, Int32, Int32, UnsafeMutablePointer<PyObject>?, UnsafeMutablePointer<PyTypeObject>?) -> UnsafeMutablePointer<PyObject>?)!
  var Time_FromTime: (@convention(c) (Int32, Int32, Int32, Int32, UnsafeMutablePointer<PyObject>?, UnsafeMutablePointer<PyTypeObject>?) -> UnsafeMutablePointer<PyObject>?)!
  var Delta_FromDelta: (@convention(c) (Int32, Int32, Int32, Int32, UnsafeMutablePointer<PyTypeObject>?) -> UnsafeMutablePointer<PyObject>?)!
  var DateTime_FromTimestamp: (@convention(c) (UnsafeMutablePointer<PyObject>?, UnsafeMutablePointer<PyObject>?, UnsafeMutablePointer<PyObject>?) -> UnsafeMutablePointer<PyObject>?)!
  var Date_FromTimestamp: (@convention(c) (UnsafeMutablePointer<PyObject>?, UnsafeMutablePointer<PyObject>?) -> UnsafeMutablePointer<PyObject>?)!
  init()
  init(DateType: UnsafeMutablePointer<PyTypeObject>!, DateTimeType: UnsafeMutablePointer<PyTypeObject>!, TimeType: UnsafeMutablePointer<PyTypeObject>!, DeltaType: UnsafeMutablePointer<PyTypeObject>!, TZInfoType: UnsafeMutablePointer<PyTypeObject>!, Date_FromDate: (@convention(c) (Int32, Int32, Int32, UnsafeMutablePointer<PyTypeObject>?) -> UnsafeMutablePointer<PyObject>?)!, DateTime_FromDateAndTime: (@convention(c) (Int32, Int32, Int32, Int32, Int32, Int32, Int32, UnsafeMutablePointer<PyObject>?, UnsafeMutablePointer<PyTypeObject>?) -> UnsafeMutablePointer<PyObject>?)!, Time_FromTime: (@convention(c) (Int32, Int32, Int32, Int32, UnsafeMutablePointer<PyObject>?, UnsafeMutablePointer<PyTypeObject>?) -> UnsafeMutablePointer<PyObject>?)!, Delta_FromDelta: (@convention(c) (Int32, Int32, Int32, Int32, UnsafeMutablePointer<PyTypeObject>?) -> UnsafeMutablePointer<PyObject>?)!, DateTime_FromTimestamp: (@convention(c) (UnsafeMutablePointer<PyObject>?, UnsafeMutablePointer<PyObject>?, UnsafeMutablePointer<PyObject>?) -> UnsafeMutablePointer<PyObject>?)!, Date_FromTimestamp: (@convention(c) (UnsafeMutablePointer<PyObject>?, UnsafeMutablePointer<PyObject>?) -> UnsafeMutablePointer<PyObject>?)!)
}
var PyDateTime_CAPSULE_NAME: String { get }
var DATETIME_API_MAGIC: Int32 { get }
var PyDateTimeAPI: UnsafeMutablePointer<PyDateTime_CAPI>!
