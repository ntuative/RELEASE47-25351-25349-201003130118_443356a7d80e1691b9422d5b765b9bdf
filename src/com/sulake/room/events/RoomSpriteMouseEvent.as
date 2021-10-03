package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_1612:Boolean = false;
      
      private var var_1610:Boolean = false;
      
      private var var_1860:String = "";
      
      private var _type:String = "";
      
      private var var_1613:Boolean = false;
      
      private var var_2053:Number = 0;
      
      private var var_2256:Number = 0;
      
      private var var_2254:Number = 0;
      
      private var var_2255:String = "";
      
      private var var_2057:Number = 0;
      
      private var var_1611:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_2255 = param2;
         var_1860 = param3;
         var_2256 = param4;
         var_2254 = param5;
         var_2053 = param6;
         var_2057 = param7;
         var_1611 = param8;
         var_1610 = param9;
         var_1613 = param10;
         var_1612 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1611;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1612;
      }
      
      public function get localX() : Number
      {
         return var_2053;
      }
      
      public function get localY() : Number
      {
         return var_2057;
      }
      
      public function get canvasId() : String
      {
         return var_2255;
      }
      
      public function get altKey() : Boolean
      {
         return var_1610;
      }
      
      public function get spriteTag() : String
      {
         return var_1860;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_2256;
      }
      
      public function get screenY() : Number
      {
         return var_2254;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1613;
      }
   }
}
