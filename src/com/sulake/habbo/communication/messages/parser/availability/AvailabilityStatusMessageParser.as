package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1043:Boolean;
      
      private var var_1317:Boolean;
      
      public function AvailabilityStatusMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1043 = param1.readInteger() > 0;
         var_1317 = param1.readInteger() > 0;
         return true;
      }
      
      public function get isOpen() : Boolean
      {
         return var_1043;
      }
      
      public function get onShutDown() : Boolean
      {
         return var_1317;
      }
      
      public function flush() : Boolean
      {
         var_1043 = false;
         var_1317 = false;
         return true;
      }
   }
}
