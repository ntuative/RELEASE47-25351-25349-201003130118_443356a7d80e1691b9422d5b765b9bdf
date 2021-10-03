package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1631:int;
      
      private var var_1630:int;
      
      private var var_1628:int;
      
      private var var_1652:int;
      
      private var _nutrition:int;
      
      private var var_1130:int;
      
      private var var_1655:int;
      
      private var var_1653:int;
      
      private var _energy:int;
      
      private var var_1632:int;
      
      private var var_1657:int;
      
      private var _ownerName:String;
      
      private var var_1629:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1631;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function set respect(param1:int) : void
      {
         var_1630 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         _energy = param1;
      }
      
      public function set level(param1:int) : void
      {
         var_1631 = param1;
      }
      
      public function get petId() : int
      {
         return var_1130;
      }
      
      public function get experienceMax() : int
      {
         return var_1653;
      }
      
      public function get nutritionMax() : int
      {
         return var_1652;
      }
      
      public function set levelMax(param1:int) : void
      {
         var_1655 = param1;
      }
      
      public function get ownerId() : int
      {
         return var_1629;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function set petId(param1:int) : void
      {
         var_1130 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         _nutrition = param1;
      }
      
      public function get energyMax() : int
      {
         return var_1657;
      }
      
      public function get respect() : int
      {
         return var_1630;
      }
      
      public function get levelMax() : int
      {
         return var_1655;
      }
      
      public function set ownerName(param1:String) : void
      {
         _ownerName = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         var_1653 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         var_1628 = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         var_1652 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         var_1629 = param1;
      }
      
      public function get experience() : int
      {
         return var_1628;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function set energyMax(param1:int) : void
      {
         var_1657 = param1;
      }
      
      public function set age(param1:int) : void
      {
         var_1632 = param1;
      }
      
      public function get age() : int
      {
         return var_1632;
      }
   }
}
