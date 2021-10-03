package com.sulake.habbo.widget.infostand
{
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import flash.display.BitmapData;
   
   public class InfoStandPetData
   {
       
      
      private var var_1631:int;
      
      private var var_1628:int;
      
      private var var_1652:int;
      
      private var _type:int;
      
      private var var_1130:int = -1;
      
      private var var_1655:int;
      
      private var _nutrition:int;
      
      private var var_1653:int;
      
      private var _energy:int;
      
      private var var_1656:int;
      
      private var var_1657:int;
      
      private var var_1654:int;
      
      private var var_1632:int;
      
      private var _petRespect:int;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var _image:BitmapData;
      
      private var _ownerName:String;
      
      private var var_1651:Boolean;
      
      private var _name:String = "";
      
      private var var_1629:int;
      
      public function InfoStandPetData()
      {
         super();
      }
      
      public function get isOwnPet() : Boolean
      {
         return var_1651;
      }
      
      public function get level() : int
      {
         return var_1631;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get experienceMax() : int
      {
         return var_1653;
      }
      
      public function get id() : int
      {
         return var_1130;
      }
      
      public function get nutritionMax() : int
      {
         return var_1652;
      }
      
      public function get ownerId() : int
      {
         return var_1629;
      }
      
      public function setData(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         _name = param1.name;
         var_1130 = param1.id;
         _type = param1.petType;
         var_1656 = param1.petRace;
         _image = param1.image;
         var_1651 = param1.isOwnPet;
         var_1629 = param1.ownerId;
         _ownerName = param1.ownerName;
         _canOwnerBeKicked = param1.canOwnerBeKicked;
         var_1631 = param1.level;
         var_1655 = param1.levelMax;
         var_1628 = param1.experience;
         var_1653 = param1.experienceMax;
         _energy = param1.energy;
         var_1657 = param1.energyMax;
         _nutrition = param1.nutrition;
         var_1652 = param1.nutritionMax;
         _petRespect = param1.petRespect;
         var_1654 = param1.roomIndex;
         var_1632 = param1.age;
      }
      
      public function get roomIndex() : int
      {
         return var_1654;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get energyMax() : int
      {
         return var_1657;
      }
      
      public function get levelMax() : int
      {
         return var_1655;
      }
      
      public function get petRespect() : int
      {
         return _petRespect;
      }
      
      public function get race() : int
      {
         return var_1656;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return _canOwnerBeKicked;
      }
      
      public function get experience() : int
      {
         return var_1628;
      }
      
      public function get age() : int
      {
         return var_1632;
      }
   }
}
