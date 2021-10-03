package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_1738:int = 0;
      
      private var var_2187:int = 0;
      
      private var var_2058:int = 0;
      
      private var var_1736:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get pixels() : int
      {
         return var_2187;
      }
      
      public function set pixels(param1:int) : void
      {
         var_2187 = param1;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1738 = param1;
      }
      
      public function get credits() : int
      {
         return var_2058;
      }
      
      public function get clubDays() : int
      {
         return var_1738;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1736 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_2058 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_1736;
      }
   }
}
