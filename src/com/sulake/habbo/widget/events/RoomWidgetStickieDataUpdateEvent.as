package com.sulake.habbo.widget.events
{
   public class RoomWidgetStickieDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_675:String = "RWSDUE_STICKIE_DATA";
       
      
      private var var_189:String;
      
      private var var_714:String;
      
      private var var_1532:String;
      
      private var var_151:int = -1;
      
      private var var_13:Boolean;
      
      public function RoomWidgetStickieDataUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Boolean, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param7,param8);
         var_151 = param2;
         var_1532 = param3;
         var_189 = param4;
         var_714 = param5;
         var_13 = param6;
      }
      
      public function get objectType() : String
      {
         return var_1532;
      }
      
      public function get colorHex() : String
      {
         return var_714;
      }
      
      public function get text() : String
      {
         return var_189;
      }
      
      public function get objectId() : int
      {
         return var_151;
      }
      
      public function get controller() : Boolean
      {
         return var_13;
      }
   }
}
