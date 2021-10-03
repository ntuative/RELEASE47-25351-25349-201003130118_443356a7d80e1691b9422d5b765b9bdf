package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboActivityPointNotificationMessageParser implements IMessageParser
   {
       
      
      private var var_1682:int = 0;
      
      private var var_1681:int = 0;
      
      public function HabboActivityPointNotificationMessageParser()
      {
         super();
      }
      
      public function get change() : int
      {
         return var_1681;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1682 = param1.readInteger();
         var_1681 = param1.readInteger();
         return true;
      }
      
      public function get amount() : int
      {
         return var_1682;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
   }
}
