package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_333:Boolean;
      
      private var var_1163:int;
      
      private var var_1444:String;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         var_1163 = param1.readInteger();
         var_1444 = param1.readString();
         var_333 = param1.readBoolean();
      }
      
      public function get visible() : Boolean
      {
         return var_333;
      }
      
      public function get nodeName() : String
      {
         return var_1444;
      }
      
      public function get nodeId() : int
      {
         return var_1163;
      }
   }
}
