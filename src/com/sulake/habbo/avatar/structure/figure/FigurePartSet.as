package com.sulake.habbo.avatar.structure.figure
{
   public class FigurePartSet implements IFigurePartSet
   {
       
      
      private var _id:int;
      
      private var var_1047:String;
      
      private var var_578:Array;
      
      private var var_1445:Array;
      
      private var var_1817:int;
      
      private var var_1781:Boolean;
      
      private var var_1816:Boolean;
      
      public function FigurePartSet(param1:XML)
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:int = 0;
         super();
         _id = parseInt(param1.@id);
         var_1047 = String(param1.@gender);
         var_1817 = parseInt(param1.@club);
         var_1781 = Boolean(parseInt(param1.@colorable));
         var_1816 = Boolean(parseInt(param1.@selectable));
         var_578 = new Array();
         var_1445 = new Array();
         for each(_loc2_ in param1.part)
         {
            _loc4_ = new FigurePart(_loc2_);
            _loc5_ = indexOfPartType(_loc4_);
            if(_loc5_ != -1)
            {
               var_578.splice(_loc5_,0,_loc4_);
            }
            else
            {
               var_578.push(_loc4_);
            }
         }
         for each(_loc3_ in param1.hiddenlayers.layer)
         {
            var_1445.push(String(_loc3_.@parttype));
         }
      }
      
      public function get gender() : String
      {
         return var_1047;
      }
      
      public function get hiddenLayers() : Array
      {
         return var_1445;
      }
      
      public function get parts() : Array
      {
         return var_578;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1816;
      }
      
      public function getPart(param1:String, param2:int) : IFigurePart
      {
         var _loc3_:* = null;
         for each(_loc3_ in var_578)
         {
            if(_loc3_.type == param1 && _loc3_.id == param2)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function get isColorable() : Boolean
      {
         return var_1781;
      }
      
      public function get clubLevel() : int
      {
         return var_1817;
      }
      
      private function indexOfPartType(param1:FigurePart) : int
      {
         var _loc3_:* = null;
         var _loc2_:int = 0;
         while(_loc2_ < var_578.length)
         {
            _loc3_ = var_578[_loc2_];
            if(_loc3_.type == param1.type && _loc3_.index < param1.index)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
   }
}
