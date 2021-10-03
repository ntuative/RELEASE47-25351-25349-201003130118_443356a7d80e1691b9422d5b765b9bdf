package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1184:int;
      
      private var var_1185:int;
      
      private var var_1186:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function get messageId() : int
      {
         return var_1184;
      }
      
      public function flush() : Boolean
      {
         var_1185 = 0;
         var_1184 = 0;
         var_1186 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1185;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1184 = param1.readInteger();
         var_1185 = param1.readInteger();
         var_1186 = param1.readString();
         return true;
      }
      
      public function get timestamp() : String
      {
         return var_1186;
      }
   }
}
