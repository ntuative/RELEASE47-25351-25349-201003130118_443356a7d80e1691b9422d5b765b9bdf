package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1086:int = 0;
      
      private var var_1349:int = 0;
      
      private var var_2216:String = "";
      
      private var var_1085:int = 0;
      
      private var var_2212:String = "";
      
      private var var_2214:int = 0;
      
      private var var_1579:String = "";
      
      private var var_2215:int = 0;
      
      private var var_2211:int = 0;
      
      private var var_2217:String = "";
      
      private var var_2213:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_2215 = param1;
         var_2217 = param2;
         var_1579 = param3;
         var_2216 = param4;
         var_2212 = param5;
         if(param6)
         {
            var_1349 = 1;
         }
         else
         {
            var_1349 = 0;
         }
         var_2214 = param7;
         var_2211 = param8;
         var_1085 = param9;
         var_2213 = param10;
         var_1086 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2215,var_2217,var_1579,var_2216,var_2212,var_1349,var_2214,var_2211,var_1085,var_2213,var_1086];
      }
      
      public function dispose() : void
      {
      }
   }
}
