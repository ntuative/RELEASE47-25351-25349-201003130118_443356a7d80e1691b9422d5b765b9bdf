package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class TagAndUserCountData
   {
       
      
      private var var_1672:int;
      
      private var var_1605:String;
      
      public function TagAndUserCountData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1605 = param1.readString();
         this.var_1672 = param1.readInteger();
      }
      
      public function get userCount() : int
      {
         return this.var_1672;
      }
      
      public function get tag() : String
      {
         return this.var_1605;
      }
   }
}
