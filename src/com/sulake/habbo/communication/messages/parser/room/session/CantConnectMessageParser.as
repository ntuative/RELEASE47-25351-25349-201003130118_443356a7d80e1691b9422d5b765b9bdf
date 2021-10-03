package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1434:int = 2;
      
      public static const const_296:int = 4;
      
      public static const const_1251:int = 1;
      
      public static const const_1267:int = 3;
       
      
      private var var_1026:int = 0;
      
      private var var_841:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_1026;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1026 = param1.readInteger();
         if(var_1026 == 3)
         {
            var_841 = param1.readString();
         }
         else
         {
            var_841 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_1026 = 0;
         var_841 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_841;
      }
   }
}
