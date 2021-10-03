package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var _frames:Array;
      
      private var var_1786:int;
      
      private var var_1780:String;
      
      private var var_1520:IActionDefinition;
      
      private var var_1779:Boolean;
      
      private var _color:IPartColor;
      
      private var var_1785:String;
      
      private var var_1783:String;
      
      private var var_1781:Boolean;
      
      private var var_1784:ColorTransform;
      
      private var var_1782:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:int, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         var_1780 = param1;
         var_1785 = param2;
         var_1786 = param3;
         _color = param4;
         _frames = param5;
         var_1520 = param6;
         var_1781 = param7;
         var_1782 = param8;
         var_1783 = param9;
         var_1779 = param10;
         var_1784 = new ColorTransform(1,1,1,param11);
      }
      
      public function get isColorable() : Boolean
      {
         return var_1781;
      }
      
      public function get partType() : String
      {
         return var_1785;
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return 0;
      }
      
      public function get paletteMapId() : int
      {
         return var_1782;
      }
      
      public function get isBlendable() : Boolean
      {
         return var_1779;
      }
      
      public function get color() : IPartColor
      {
         return _color;
      }
      
      public function get partId() : int
      {
         return var_1786;
      }
      
      public function get flippedPartType() : String
      {
         return var_1783;
      }
      
      public function get bodyPartId() : String
      {
         return var_1780;
      }
      
      public function get action() : IActionDefinition
      {
         return var_1520;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return var_1784;
      }
   }
}
