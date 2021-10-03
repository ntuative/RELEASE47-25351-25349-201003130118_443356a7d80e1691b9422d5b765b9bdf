package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_458:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
      
      public static const const_321:String = "RWRQUE_VISITOR_QUEUE_STATUS";
       
      
      private var var_907:int;
      
      private var var_262:Boolean;
      
      private var var_2182:Boolean;
      
      private var var_1432:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_907 = param2;
         var_2182 = param3;
         var_262 = param4;
         var_1432 = param5;
      }
      
      public function get position() : int
      {
         return var_907;
      }
      
      public function get isActive() : Boolean
      {
         return var_262;
      }
      
      public function get isClubQueue() : Boolean
      {
         return var_1432;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return var_2182;
      }
   }
}
