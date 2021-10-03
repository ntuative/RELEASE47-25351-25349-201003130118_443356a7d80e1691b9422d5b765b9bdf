package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_1521:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1584:String = "ROE_MOUSE_ENTER";
      
      public static const const_356:String = "ROE_MOUSE_MOVE";
      
      public static const const_1522:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_214:String = "ROE_MOUSE_CLICK";
      
      public static const ROOM_OBJECT_MOUSE_DOWN:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1613:Boolean;
      
      private var var_1612:Boolean;
      
      private var var_1610:Boolean;
      
      private var var_1611:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param2,param3,param8,param9);
         var_1610 = param4;
         var_1611 = param5;
         var_1613 = param6;
         var_1612 = param7;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1612;
      }
      
      public function get altKey() : Boolean
      {
         return var_1610;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1611;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1613;
      }
   }
}
