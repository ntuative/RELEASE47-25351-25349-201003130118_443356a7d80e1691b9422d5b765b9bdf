package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
       
      
      private var var_2061:int;
      
      private var var_1231:String;
      
      private var var_2060:int;
      
      private var var_2062:int;
      
      private var var_2059:int;
      
      private var var_2063:Boolean;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function get productName() : String
      {
         return var_1231;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_2063;
      }
      
      public function get responseType() : int
      {
         return var_2062;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_2060;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1231 = param1.readString();
         var_2060 = param1.readInteger();
         var_2061 = param1.readInteger();
         var_2059 = param1.readInteger();
         var_2062 = param1.readInteger();
         var_2063 = param1.readBoolean();
         return true;
      }
      
      public function get memberPeriods() : int
      {
         return var_2061;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_2059;
      }
   }
}
