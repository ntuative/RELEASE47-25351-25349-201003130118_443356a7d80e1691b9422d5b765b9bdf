package com.sulake.habbo.communication.messages.outgoing.recycler
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RecycleItemsMessageComposer implements IMessageComposer
   {
       
      
      private var var_770:Array;
      
      public function RecycleItemsMessageComposer(param1:Array)
      {
         super();
         var_770 = new Array();
         var_770.push(param1.length);
         var_770 = var_770.concat(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return var_770;
      }
   }
}
