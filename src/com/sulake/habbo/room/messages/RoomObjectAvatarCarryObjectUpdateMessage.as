package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1010:int;
      
      private var var_1216:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         var_1010 = param1;
         var_1216 = param2;
      }
      
      public function get itemType() : int
      {
         return var_1010;
      }
      
      public function get itemName() : String
      {
         return var_1216;
      }
   }
}
