package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_2022:int;
      
      private var var_1011:int;
      
      private var var_2082:int;
      
      private var var_1531:int;
      
      private var var_107:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1531 = param1.readInteger();
         var_2082 = param1.readInteger();
         var_1011 = param1.readInteger();
         var_2022 = param1.readInteger();
         var_107 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1531);
      }
      
      public function get chatRecordId() : int
      {
         return var_2022;
      }
      
      public function get reportedUserId() : int
      {
         return var_1011;
      }
      
      public function get callerUserId() : int
      {
         return var_2082;
      }
      
      public function get callId() : int
      {
         return var_1531;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_107;
      }
   }
}
