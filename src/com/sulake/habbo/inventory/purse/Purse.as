package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1737:Boolean = false;
      
      private var var_1739:int = 0;
      
      private var var_1738:int = 0;
      
      private var var_1740:int = 0;
      
      private var var_1497:int = 0;
      
      private var var_1736:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1497 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_1739;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_1737;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_1737 = param1;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_1739 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1738 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1497;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_1740 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1738;
      }
      
      public function get pixelBalance() : int
      {
         return var_1740;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1736 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1736;
      }
   }
}
