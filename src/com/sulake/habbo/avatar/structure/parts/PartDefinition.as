package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var _removeSetType:String;
      
      private var var_1538:int = -1;
      
      private var var_1299:Boolean;
      
      private var var_1300:String;
      
      private var var_2091:String;
      
      public function PartDefinition(param1:XML)
      {
         super();
         var_2091 = String(param1["set-type"]);
         var_1300 = String(param1["flipped-set-type"]);
         _removeSetType = String(param1["remove-set-type"]);
         var_1299 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return var_1538 >= 0;
      }
      
      public function get flippedSetType() : String
      {
         return var_1300;
      }
      
      public function get staticId() : int
      {
         return var_1538;
      }
      
      public function set staticId(param1:int) : void
      {
         var_1538 = param1;
      }
      
      public function get appendToFigure() : Boolean
      {
         return var_1299;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         var_1299 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         var_1300 = param1;
      }
      
      public function get setType() : String
      {
         return var_2091;
      }
      
      public function get removeSetType() : String
      {
         return _removeSetType;
      }
   }
}
