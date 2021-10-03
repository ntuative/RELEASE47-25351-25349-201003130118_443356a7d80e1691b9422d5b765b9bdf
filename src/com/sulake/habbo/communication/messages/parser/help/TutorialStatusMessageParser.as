package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_955:Boolean;
      
      private var var_953:Boolean;
      
      private var var_954:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_955;
      }
      
      public function get hasChangedName() : Boolean
      {
         return var_953;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_954 = param1.readBoolean();
         var_953 = param1.readBoolean();
         var_955 = param1.readBoolean();
         return true;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return var_954;
      }
      
      public function flush() : Boolean
      {
         var_954 = false;
         var_953 = false;
         var_955 = false;
         return true;
      }
   }
}
