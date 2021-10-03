package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2143:Number;
      
      private var var_604:Number = 0;
      
      private var var_2144:Number;
      
      private var var_605:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_2143 = param1;
         var_2144 = param2;
      }
      
      public function update() : void
      {
         var_605 += var_2144;
         var_604 += var_605;
         if(var_604 > 0)
         {
            var_604 = 0;
            var_605 = var_2143 * -1 * var_605;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_605 = param1;
         var_604 = 0;
      }
      
      public function get location() : Number
      {
         return var_604;
      }
   }
}
