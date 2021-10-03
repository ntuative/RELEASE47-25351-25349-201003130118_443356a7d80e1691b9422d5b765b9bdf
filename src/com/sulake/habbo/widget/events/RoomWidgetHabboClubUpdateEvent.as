package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_200:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2104:Boolean = false;
      
      private var var_2107:int = 0;
      
      private var var_2105:int = 0;
      
      private var var_2106:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:Boolean = false, param6:Boolean = false)
      {
         super(const_200,param5,param6);
         var_2106 = param1;
         var_2105 = param2;
         var_2107 = param3;
         var_2104 = param4;
      }
      
      public function get pastPeriods() : int
      {
         return var_2107;
      }
      
      public function get periodsLeft() : int
      {
         return var_2105;
      }
      
      public function get daysLeft() : int
      {
         return var_2106;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_2104;
      }
   }
}
