package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_631:String;
      
      private var var_1802:int;
      
      private var var_1482:Boolean;
      
      private var _roomId:int;
      
      private var var_1803:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1482 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_631 = param1.readString();
         var_1803 = param1.readInteger();
         var_1802 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1482;
      }
      
      public function get roomName() : String
      {
         return var_631;
      }
      
      public function get enterMinute() : int
      {
         return var_1802;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_1803;
      }
   }
}
