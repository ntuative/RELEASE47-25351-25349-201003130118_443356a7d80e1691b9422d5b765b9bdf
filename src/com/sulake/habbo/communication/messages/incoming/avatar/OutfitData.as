package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_2193:String;
      
      private var var_1047:String;
      
      private var var_1957:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1957 = param1.readInteger();
         var_2193 = param1.readString();
         var_1047 = param1.readString();
      }
      
      public function get gender() : String
      {
         return var_1047;
      }
      
      public function get figureString() : String
      {
         return var_2193;
      }
      
      public function get slotId() : int
      {
         return var_1957;
      }
   }
}
