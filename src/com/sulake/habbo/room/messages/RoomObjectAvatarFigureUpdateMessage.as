package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1656:String;
      
      private var var_541:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_541 = param1;
         var_1656 = param2;
      }
      
      public function get race() : String
      {
         return var_1656;
      }
      
      public function get figure() : String
      {
         return var_541;
      }
   }
}
