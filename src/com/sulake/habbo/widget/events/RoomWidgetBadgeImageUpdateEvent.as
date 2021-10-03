package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetBadgeImageUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_724:String = "RWBIUE_BADGE_IMAGE";
       
      
      private var var_1659:BitmapData;
      
      private var var_1660:String;
      
      public function RoomWidgetBadgeImageUpdateEvent(param1:String, param2:BitmapData, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_724,param3,param4);
         var_1660 = param1;
         var_1659 = param2;
      }
      
      public function get badgeImage() : BitmapData
      {
         return var_1659;
      }
      
      public function get badgeID() : String
      {
         return var_1660;
      }
   }
}
