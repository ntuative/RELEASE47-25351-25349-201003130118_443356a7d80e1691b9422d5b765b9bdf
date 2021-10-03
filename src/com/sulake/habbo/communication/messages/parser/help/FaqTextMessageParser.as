package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FaqTextMessageParser implements IMessageParser
   {
       
      
      private var var_1191:int;
      
      private var var_1190:String;
      
      public function FaqTextMessageParser()
      {
         super();
      }
      
      public function get questionId() : int
      {
         return var_1191;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1191 = param1.readInteger();
         var_1190 = param1.readString();
         return true;
      }
      
      public function get answerText() : String
      {
         return var_1190;
      }
      
      public function flush() : Boolean
      {
         var_1191 = -1;
         var_1190 = null;
         return true;
      }
   }
}
