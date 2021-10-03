package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFurniActionMessage extends RoomWidgetMessage
   {
      
      public static const const_235:String = "RWFAM_MOVE";
      
      public static const const_677:String = "RWFUAM_ROTATE";
      
      public static const const_719:String = "RWFAM_PICKUP";
       
      
      private var var_1752:int = 0;
      
      private var var_1753:int = 0;
      
      public function RoomWidgetFurniActionMessage(param1:String, param2:int, param3:int)
      {
         super(param1);
         var_1752 = param2;
         var_1753 = param3;
      }
      
      public function get furniId() : int
      {
         return var_1752;
      }
      
      public function get furniCategory() : int
      {
         return var_1753;
      }
   }
}
