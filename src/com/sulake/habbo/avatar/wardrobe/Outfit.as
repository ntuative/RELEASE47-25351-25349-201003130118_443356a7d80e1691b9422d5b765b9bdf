package com.sulake.habbo.avatar.wardrobe
{
   import com.sulake.habbo.avatar.HabboAvatarEditor;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IOutfit;
   import com.sulake.habbo.avatar.enum.AvatarScaleType;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.avatar.figuredata.FigureData;
   import flash.display.BitmapData;
   
   public class Outfit implements IOutfit
   {
       
      
      private var var_1047:String;
      
      private var var_541:String;
      
      private var _view:OutfitView;
      
      private var var_1498:IAvatarImage;
      
      private var var_13:HabboAvatarEditor;
      
      private var _image:BitmapData;
      
      public function Outfit(param1:HabboAvatarEditor, param2:String, param3:String)
      {
         super();
         var_13 = param1;
         _view = new OutfitView(param1.windowManager,param1.assets,param2 != "");
         switch(param3)
         {
            case FigureData.const_79:
            case "m":
            case "M":
               param3 = "null";
               break;
            case FigureData.FEMALE:
            case "f":
            case "F":
               param3 = "null";
         }
         var_541 = param2;
         var_1047 = param3;
         update();
      }
      
      public function get gender() : String
      {
         return var_1047;
      }
      
      public function get image() : BitmapData
      {
         if(_image == null)
         {
            return new BitmapData(33,56,false,0);
         }
         return _image;
      }
      
      public function get view() : OutfitView
      {
         return _view;
      }
      
      public function update() : void
      {
         var_1498 = var_13.avatarRenderManager.createAvatarImage(figure,AvatarScaleType.const_100);
         var_1498.setDirection(AvatarSetType.const_39,int(FigureData.const_889));
         _image = var_1498.getImage(AvatarSetType.const_39);
         _view.udpate(_image);
      }
      
      public function get figure() : String
      {
         return var_541;
      }
      
      public function dispose() : void
      {
         var_541 = null;
         var_1047 = null;
         _image = null;
      }
   }
}
