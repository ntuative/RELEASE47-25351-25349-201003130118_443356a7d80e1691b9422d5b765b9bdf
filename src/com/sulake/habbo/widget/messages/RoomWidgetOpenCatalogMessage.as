package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_657:String = "RWOCM_CLUB_MAIN";
      
      public static const const_542:String = "RWGOI_MESSAGE_OPEN_CATALOG";
       
      
      private var var_1626:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_542);
         var_1626 = param1;
      }
      
      public function get pageKey() : String
      {
         return var_1626;
      }
   }
}
