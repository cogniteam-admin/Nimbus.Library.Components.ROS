# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from autopilot_bridge/VersionRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class VersionRequest(genpy.Message):
  _md5sum = "8e929ace7fd80dc265b8b96078f41e82"
  _type = "autopilot_bridge/VersionRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float32 timeout
"""
  __slots__ = ['timeout']
  _slot_types = ['float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       timeout

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(VersionRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.timeout is None:
        self.timeout = 0.
    else:
      self.timeout = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.timeout
      buff.write(_get_struct_f().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (self.timeout,) = _get_struct_f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.timeout
      buff.write(_get_struct_f().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (self.timeout,) = _get_struct_f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_f = None
def _get_struct_f():
    global _struct_f
    if _struct_f is None:
        _struct_f = struct.Struct("<f")
    return _struct_f
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from autopilot_bridge/VersionResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class VersionResponse(genpy.Message):
  _md5sum = "d3a54d10b293524b11c9bf9aa69a0565"
  _type = "autopilot_bridge/VersionResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """bool ok
bool cap_mission_float
bool cap_param_float
bool cap_mission_int
bool cap_command_int
bool cap_param_union
bool cap_ftp
bool cap_set_attitude
bool cap_set_position_local
bool cap_set_position_global
bool cap_terrain
bool cap_set_actuator
uint32 flight_sw
uint32 middleware
uint32 os_sw
uint32 board
string flight_custom
string middleware_custom
string os_custom
uint16 vendor_id
uint16 product_id
uint64 uid

"""
  __slots__ = ['ok','cap_mission_float','cap_param_float','cap_mission_int','cap_command_int','cap_param_union','cap_ftp','cap_set_attitude','cap_set_position_local','cap_set_position_global','cap_terrain','cap_set_actuator','flight_sw','middleware','os_sw','board','flight_custom','middleware_custom','os_custom','vendor_id','product_id','uid']
  _slot_types = ['bool','bool','bool','bool','bool','bool','bool','bool','bool','bool','bool','bool','uint32','uint32','uint32','uint32','string','string','string','uint16','uint16','uint64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       ok,cap_mission_float,cap_param_float,cap_mission_int,cap_command_int,cap_param_union,cap_ftp,cap_set_attitude,cap_set_position_local,cap_set_position_global,cap_terrain,cap_set_actuator,flight_sw,middleware,os_sw,board,flight_custom,middleware_custom,os_custom,vendor_id,product_id,uid

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(VersionResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.ok is None:
        self.ok = False
      if self.cap_mission_float is None:
        self.cap_mission_float = False
      if self.cap_param_float is None:
        self.cap_param_float = False
      if self.cap_mission_int is None:
        self.cap_mission_int = False
      if self.cap_command_int is None:
        self.cap_command_int = False
      if self.cap_param_union is None:
        self.cap_param_union = False
      if self.cap_ftp is None:
        self.cap_ftp = False
      if self.cap_set_attitude is None:
        self.cap_set_attitude = False
      if self.cap_set_position_local is None:
        self.cap_set_position_local = False
      if self.cap_set_position_global is None:
        self.cap_set_position_global = False
      if self.cap_terrain is None:
        self.cap_terrain = False
      if self.cap_set_actuator is None:
        self.cap_set_actuator = False
      if self.flight_sw is None:
        self.flight_sw = 0
      if self.middleware is None:
        self.middleware = 0
      if self.os_sw is None:
        self.os_sw = 0
      if self.board is None:
        self.board = 0
      if self.flight_custom is None:
        self.flight_custom = ''
      if self.middleware_custom is None:
        self.middleware_custom = ''
      if self.os_custom is None:
        self.os_custom = ''
      if self.vendor_id is None:
        self.vendor_id = 0
      if self.product_id is None:
        self.product_id = 0
      if self.uid is None:
        self.uid = 0
    else:
      self.ok = False
      self.cap_mission_float = False
      self.cap_param_float = False
      self.cap_mission_int = False
      self.cap_command_int = False
      self.cap_param_union = False
      self.cap_ftp = False
      self.cap_set_attitude = False
      self.cap_set_position_local = False
      self.cap_set_position_global = False
      self.cap_terrain = False
      self.cap_set_actuator = False
      self.flight_sw = 0
      self.middleware = 0
      self.os_sw = 0
      self.board = 0
      self.flight_custom = ''
      self.middleware_custom = ''
      self.os_custom = ''
      self.vendor_id = 0
      self.product_id = 0
      self.uid = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_12B4I().pack(_x.ok, _x.cap_mission_float, _x.cap_param_float, _x.cap_mission_int, _x.cap_command_int, _x.cap_param_union, _x.cap_ftp, _x.cap_set_attitude, _x.cap_set_position_local, _x.cap_set_position_global, _x.cap_terrain, _x.cap_set_actuator, _x.flight_sw, _x.middleware, _x.os_sw, _x.board))
      _x = self.flight_custom
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.middleware_custom
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.os_custom
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2HQ().pack(_x.vendor_id, _x.product_id, _x.uid))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 28
      (_x.ok, _x.cap_mission_float, _x.cap_param_float, _x.cap_mission_int, _x.cap_command_int, _x.cap_param_union, _x.cap_ftp, _x.cap_set_attitude, _x.cap_set_position_local, _x.cap_set_position_global, _x.cap_terrain, _x.cap_set_actuator, _x.flight_sw, _x.middleware, _x.os_sw, _x.board,) = _get_struct_12B4I().unpack(str[start:end])
      self.ok = bool(self.ok)
      self.cap_mission_float = bool(self.cap_mission_float)
      self.cap_param_float = bool(self.cap_param_float)
      self.cap_mission_int = bool(self.cap_mission_int)
      self.cap_command_int = bool(self.cap_command_int)
      self.cap_param_union = bool(self.cap_param_union)
      self.cap_ftp = bool(self.cap_ftp)
      self.cap_set_attitude = bool(self.cap_set_attitude)
      self.cap_set_position_local = bool(self.cap_set_position_local)
      self.cap_set_position_global = bool(self.cap_set_position_global)
      self.cap_terrain = bool(self.cap_terrain)
      self.cap_set_actuator = bool(self.cap_set_actuator)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.flight_custom = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.flight_custom = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.middleware_custom = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.middleware_custom = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.os_custom = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.os_custom = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.vendor_id, _x.product_id, _x.uid,) = _get_struct_2HQ().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_12B4I().pack(_x.ok, _x.cap_mission_float, _x.cap_param_float, _x.cap_mission_int, _x.cap_command_int, _x.cap_param_union, _x.cap_ftp, _x.cap_set_attitude, _x.cap_set_position_local, _x.cap_set_position_global, _x.cap_terrain, _x.cap_set_actuator, _x.flight_sw, _x.middleware, _x.os_sw, _x.board))
      _x = self.flight_custom
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.middleware_custom
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.os_custom
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2HQ().pack(_x.vendor_id, _x.product_id, _x.uid))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 28
      (_x.ok, _x.cap_mission_float, _x.cap_param_float, _x.cap_mission_int, _x.cap_command_int, _x.cap_param_union, _x.cap_ftp, _x.cap_set_attitude, _x.cap_set_position_local, _x.cap_set_position_global, _x.cap_terrain, _x.cap_set_actuator, _x.flight_sw, _x.middleware, _x.os_sw, _x.board,) = _get_struct_12B4I().unpack(str[start:end])
      self.ok = bool(self.ok)
      self.cap_mission_float = bool(self.cap_mission_float)
      self.cap_param_float = bool(self.cap_param_float)
      self.cap_mission_int = bool(self.cap_mission_int)
      self.cap_command_int = bool(self.cap_command_int)
      self.cap_param_union = bool(self.cap_param_union)
      self.cap_ftp = bool(self.cap_ftp)
      self.cap_set_attitude = bool(self.cap_set_attitude)
      self.cap_set_position_local = bool(self.cap_set_position_local)
      self.cap_set_position_global = bool(self.cap_set_position_global)
      self.cap_terrain = bool(self.cap_terrain)
      self.cap_set_actuator = bool(self.cap_set_actuator)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.flight_custom = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.flight_custom = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.middleware_custom = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.middleware_custom = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.os_custom = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.os_custom = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.vendor_id, _x.product_id, _x.uid,) = _get_struct_2HQ().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_12B4I = None
def _get_struct_12B4I():
    global _struct_12B4I
    if _struct_12B4I is None:
        _struct_12B4I = struct.Struct("<12B4I")
    return _struct_12B4I
_struct_2HQ = None
def _get_struct_2HQ():
    global _struct_2HQ
    if _struct_2HQ is None:
        _struct_2HQ = struct.Struct("<2HQ")
    return _struct_2HQ
class Version(object):
  _type          = 'autopilot_bridge/Version'
  _md5sum = 'd45d1d0a68288be9b762029a29740e01'
  _request_class  = VersionRequest
  _response_class = VersionResponse
