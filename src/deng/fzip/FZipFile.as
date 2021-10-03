package deng.fzip
{
   import deng.utils.ChecksumUtil;
   import flash.utils.*;
   
   public class FZipFile
   {
      
      public static const const_579:int = 8;
      
      public static const const_1571:int = 10;
      
      public static const const_1195:int = 6;
      
      private static var var_998:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").hasComplexContent();
      
      public static const const_1260:int = 0;
      
      public static const const_1479:int = 1;
      
      public static const const_1538:int = 2;
      
      public static const const_1587:int = 3;
      
      public static const const_1457:int = 4;
      
      public static const const_1516:int = 5;
      
      public static const const_1508:int = 9;
      
      public static const const_1532:int = 7;
       
      
      private var var_171:uint = 0;
      
      private var var_997:uint = 0;
      
      private var var_668:Date;
      
      private var var_1842:int = -1;
      
      private var parseFunc:Function;
      
      private var var_476:Boolean = false;
      
      private var var_2299:int = -1;
      
      private var var_1201:uint = 0;
      
      private var var_1843:String = "";
      
      private var _extraFields:Dictionary;
      
      private var var_814:uint;
      
      private var var_21:ByteArray;
      
      private var var_669:uint;
      
      private var var_1457:Boolean = false;
      
      private var var_2298:int = -1;
      
      private var var_1458:String = "2.0";
      
      private var var_170:Boolean = false;
      
      private var var_1841:Boolean = false;
      
      private var var_340:String;
      
      private var var_570:uint = 0;
      
      private var var_1200:int = 0;
      
      private var var_400:String = "";
      
      private var var_670:int = 8;
      
      private var var_1459:Boolean = false;
      
      public function FZipFile(param1:String = "utf-8")
      {
         parseFunc = parseFileHead;
         super();
         var_340 = param1;
         _extraFields = new Dictionary();
         var_21 = new ByteArray();
         var_21.endian = Endian.BIG_ENDIAN;
      }
      
      public function get sizeUncompressed() : uint
      {
         return var_570;
      }
      
      public function set filename(param1:String) : void
      {
         var_400 = param1;
      }
      
      protected function uncompress() : void
      {
         if(var_170 && false)
         {
            var_21.position = 0;
            if(var_998)
            {
               var_21.uncompress.apply(var_21,["deflate"]);
            }
            else
            {
               var_21.uncompress();
            }
            var_21.position = 0;
            var_170 = false;
         }
      }
      
      public function get filename() : String
      {
         return var_400;
      }
      
      public function get date() : Date
      {
         return var_668;
      }
      
      function parse(param1:IDataInput) : Boolean
      {
         while(param1.bytesAvailable && parseFunc(param1))
         {
         }
         return parseFunc === parseFileIdle;
      }
      
      private function parseFileContent(param1:IDataInput) : Boolean
      {
         if(var_1459)
         {
            parseFunc = parseFileIdle;
            throw new Error("Data descriptors are not supported.");
         }
         if(var_171 == 0)
         {
            parseFunc = parseFileIdle;
         }
         else
         {
            if(param1.bytesAvailable < var_171)
            {
               return false;
            }
            parseContent(param1);
            parseFunc = parseFileIdle;
         }
         return true;
      }
      
      public function get versionNumber() : String
      {
         return var_1458;
      }
      
      public function getContentAsString(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:* = null;
         if(var_170)
         {
            uncompress();
         }
         var_21.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = var_21.readUTFBytes(var_21.bytesAvailable);
         }
         else
         {
            _loc3_ = var_21.readMultiByte(var_21.bytesAvailable,param2);
         }
         var_21.position = 0;
         if(param1)
         {
            compress();
         }
         return _loc3_;
      }
      
      private function parseFileIdle(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function parseContent(param1:IDataInput) : void
      {
         var _loc2_:* = 0;
         if(var_670 === const_579 && !var_1457)
         {
            if(var_998)
            {
               param1.readBytes(var_21,0,var_171);
            }
            else
            {
               if(!var_476)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               var_21.writeByte(120);
               _loc2_ = uint(~var_1842 << 6 & 192);
               _loc2_ += 31 - (30720 | _loc2_) % 31;
               var_21.writeByte(_loc2_);
               param1.readBytes(var_21,2,var_171);
               var_21.position = var_21.length;
               var_21.writeUnsignedInt(var_814);
            }
            var_170 = true;
         }
         else
         {
            if(var_670 != const_1260)
            {
               throw new Error("Compression method " + var_670 + " is not supported.");
            }
            param1.readBytes(var_21,0,var_171);
            var_170 = false;
         }
         var_21.position = 0;
      }
      
      private function parseFileHead(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            parseHead(param1);
            if(var_997 + var_1201 > 0)
            {
               parseFunc = parseFileHeadExt;
            }
            else
            {
               parseFunc = parseFileContent;
            }
            return true;
         }
         return false;
      }
      
      public function setContentAsString(param1:String, param2:String = "utf-8") : void
      {
         var_21.length = 0;
         var_21.position = 0;
         var_170 = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               var_21.writeUTFBytes(param1);
            }
            else
            {
               var_21.writeMultiByte(param1,param2);
            }
            var_669 = ChecksumUtil.CRC32(var_21);
            var_476 = false;
         }
         compress();
      }
      
      public function set date(param1:Date) : void
      {
         var_668 = param1 != null ? param1 : new Date();
      }
      
      public function serialize(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
      {
         var _loc10_:* = null;
         var _loc15_:* = null;
         var _loc16_:Boolean = false;
         if(param1 == null)
         {
            return 0;
         }
         if(param3)
         {
            param1.writeUnsignedInt(33639248);
            param1.writeShort(var_1200 << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(67324752);
         }
         param1.writeShort(var_1200 << 8 | 20);
         param1.writeShort(var_340 == "utf-8" ? 2048 : 0);
         param1.writeShort(const_579);
         var _loc5_:Date = var_668 != null ? var_668 : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(var_669);
         param1.writeUnsignedInt(var_171);
         param1.writeUnsignedInt(var_570);
         var _loc8_:ByteArray = new ByteArray();
         _loc8_.endian = Endian.LITTLE_ENDIAN;
         if(var_340 == "utf-8")
         {
            _loc8_.writeUTFBytes(var_400);
         }
         else
         {
            _loc8_.writeMultiByte(var_400,var_340);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in _extraFields)
         {
            _loc15_ = _extraFields[_loc10_] as ByteArray;
            if(_loc15_ != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!var_476)
            {
               _loc16_ = var_170;
               if(_loc16_)
               {
                  uncompress();
               }
               var_814 = ChecksumUtil.Adler32(var_21,0,var_21.length);
               var_476 = true;
               if(_loc16_)
               {
                  compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(var_814);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && false)
         {
            if(var_340 == "utf-8")
            {
               _loc8_.writeUTFBytes(var_1843);
            }
            else
            {
               _loc8_.writeMultiByte(var_1843,var_340);
            }
         }
         var _loc12_:uint = _loc8_.position - _loc9_ - _loc11_;
         param1.writeShort(_loc9_);
         param1.writeShort(_loc11_);
         if(param3)
         {
            param1.writeShort(_loc12_);
            param1.writeShort(0);
            param1.writeShort(0);
            param1.writeUnsignedInt(0);
            param1.writeUnsignedInt(param4);
         }
         if(_loc9_ + _loc11_ + _loc12_ > 0)
         {
            param1.writeBytes(_loc8_);
         }
         var _loc13_:int = 0;
         if(!param3 && var_171 > 0)
         {
            if(var_998)
            {
               _loc13_ = 0;
               param1.writeBytes(var_21,0,_loc13_);
            }
            else
            {
               _loc13_ = 4294967290;
               param1.writeBytes(var_21,2,_loc13_);
            }
         }
         var _loc14_:uint = 30 + _loc9_ + _loc11_ + _loc12_ + _loc13_;
         if(param3)
         {
            _loc14_ += 16;
         }
         return _loc14_;
      }
      
      public function get sizeCompressed() : uint
      {
         return var_171;
      }
      
      protected function compress() : void
      {
         if(!var_170)
         {
            if(false)
            {
               var_21.position = 0;
               var_570 = var_21.length;
               if(var_998)
               {
                  var_21.compress.apply(var_21,["deflate"]);
                  var_171 = var_21.length;
               }
               else
               {
                  var_21.compress();
                  var_171 = -6;
               }
               var_21.position = 0;
               var_170 = true;
            }
            else
            {
               var_171 = 0;
               var_570 = 0;
            }
         }
      }
      
      private function parseFileHeadExt(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= var_997 + var_1201)
         {
            parseHeadExt(param1);
            parseFunc = parseFileContent;
            return true;
         }
         return false;
      }
      
      protected function parseHeadExt(param1:IDataInput) : void
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         if(var_340 == "utf-8")
         {
            var_400 = param1.readUTFBytes(var_997);
         }
         else
         {
            var_400 = param1.readMultiByte(var_997,var_340);
         }
         var _loc2_:uint = var_1201;
         while(_loc2_ > 4)
         {
            _loc3_ = uint(param1.readUnsignedShort());
            _loc4_ = uint(param1.readUnsignedShort());
            if(_loc4_ > _loc2_)
            {
               throw new Error("Parse error in file " + var_400 + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               var_814 = param1.readUnsignedInt();
               var_476 = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               _extraFields[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      protected function parseHead(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         var_1200 = _loc2_ >> 8;
         var_1458 = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         var_670 = param1.readUnsignedShort();
         var_1457 = (_loc3_ & 1) !== 0;
         var_1459 = (_loc3_ & 8) !== 0;
         var_1841 = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            var_340 = "utf-8";
         }
         if(var_670 === const_1195)
         {
            var_2298 = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            var_2299 = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(var_670 === const_579)
         {
            var_1842 = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         var_668 = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         var_669 = param1.readUnsignedInt();
         var_171 = param1.readUnsignedInt();
         var_570 = param1.readUnsignedInt();
         var_997 = param1.readUnsignedShort();
         var_1201 = param1.readUnsignedShort();
      }
      
      public function set content(param1:ByteArray) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(var_21,0,param1.length);
            var_669 = ChecksumUtil.CRC32(var_21);
            var_476 = false;
         }
         else
         {
            var_21.length = 0;
            var_21.position = 0;
            var_170 = false;
         }
         compress();
      }
      
      public function toString() : String
      {
         return "[FZipFile]\n  name:" + var_400 + "\n  date:" + var_668 + "\n  sizeCompressed:" + var_171 + "\n  sizeUncompressed:" + var_570 + "\n  versionHost:" + var_1200 + "\n  versionNumber:" + var_1458 + "\n  compressionMethod:" + var_670 + "\n  encrypted:" + var_1457 + "\n  hasDataDescriptor:" + var_1459 + "\n  hasCompressedPatchedData:" + var_1841 + "\n  filenameEncoding:" + var_340 + "\n  crc32:" + var_669.toString(16) + "\n  adler32:" + var_814.toString(16);
      }
      
      public function get content() : ByteArray
      {
         if(var_170)
         {
            uncompress();
         }
         return var_21;
      }
   }
}
