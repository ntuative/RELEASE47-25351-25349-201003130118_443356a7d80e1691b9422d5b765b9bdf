package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_836:String = "inventory_badges";
      
      public static const const_1339:String = "inventory_clothes";
      
      public static const const_1365:String = "inventory_furniture";
      
      public static const const_725:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_824:String = "inventory_effects";
       
      
      private var var_2197:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_725);
         var_2197 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_2197;
      }
   }
}
