package com.sulake.habbo.widget.events
{
   public class RoomWidgetLoadingBarUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_236:String = "RWLBUW_HIDE_LOADING_BAR";
      
      public static const const_96:String = "RWLBUE_SHOW_LOADING_BAR";
       
      
      public function RoomWidgetLoadingBarUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
   }
}
