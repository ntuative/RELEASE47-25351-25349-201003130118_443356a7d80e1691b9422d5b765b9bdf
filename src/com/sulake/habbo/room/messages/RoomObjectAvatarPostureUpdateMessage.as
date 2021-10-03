package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1649:String;
      
      private var var_841:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_1649 = param1;
         var_841 = param2;
      }
      
      public function get postureType() : String
      {
         return var_1649;
      }
      
      public function get parameter() : String
      {
         return var_841;
      }
   }
}
