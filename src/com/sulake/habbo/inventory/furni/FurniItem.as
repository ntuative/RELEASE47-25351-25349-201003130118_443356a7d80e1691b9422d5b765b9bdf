package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1953:int;
      
      private var var_1954:Boolean;
      
      private var var_1903:int;
      
      private var var_1379:String;
      
      private var var_2044:Boolean = false;
      
      private var var_1856:int;
      
      private var var_440:int;
      
      private var var_1010:String;
      
      private var var_1957:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1293:int;
      
      private var var_1958:Boolean;
      
      private var var_2045:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_1953 = param1;
         var_1010 = param2;
         _objId = param3;
         var_1293 = param4;
         var_1379 = param5;
         var_1954 = param6;
         var_1958 = param7;
         var_1856 = param8;
         var_1957 = param9;
         var_1903 = param10;
         var_440 = -1;
      }
      
      public function get songId() : int
      {
         return var_1903;
      }
      
      public function get iconCallbackId() : int
      {
         return var_440;
      }
      
      public function get expiryTime() : int
      {
         return var_1856;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_2045 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_2044 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_440 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1958;
      }
      
      public function get slotId() : String
      {
         return var_1957;
      }
      
      public function get classId() : int
      {
         return var_1293;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1954;
      }
      
      public function get stuffData() : String
      {
         return var_1379;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_1953;
      }
      
      public function get isLocked() : Boolean
      {
         return var_2044;
      }
      
      public function get prevCallbackId() : int
      {
         return var_2045;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_1010;
      }
   }
}
