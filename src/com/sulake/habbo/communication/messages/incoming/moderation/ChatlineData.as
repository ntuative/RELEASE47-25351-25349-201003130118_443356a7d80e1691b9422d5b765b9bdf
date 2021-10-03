package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1480:String;
      
      private var var_1748:int;
      
      private var var_1749:int;
      
      private var var_1747:int;
      
      private var var_1750:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_1748 = param1.readInteger();
         var_1747 = param1.readInteger();
         var_1749 = param1.readInteger();
         var_1750 = param1.readString();
         var_1480 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1480;
      }
      
      public function get hour() : int
      {
         return var_1748;
      }
      
      public function get minute() : int
      {
         return var_1747;
      }
      
      public function get chatterName() : String
      {
         return var_1750;
      }
      
      public function get chatterId() : int
      {
         return var_1749;
      }
   }
}
