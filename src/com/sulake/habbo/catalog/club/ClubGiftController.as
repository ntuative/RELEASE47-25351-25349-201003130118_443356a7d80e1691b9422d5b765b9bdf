package com.sulake.habbo.catalog.club
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.widgets.ClubGiftWidget;
   import com.sulake.habbo.communication.messages.outgoing.catalog.GetClubGiftInfo;
   import com.sulake.habbo.communication.messages.outgoing.catalog.SelectClubGiftComposer;
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.session.product.IProductData;
   import com.sulake.habbo.window.IHabboWindowManager;
   
   public class ClubGiftController
   {
       
      
      private var var_1479:Map;
      
      private var _catalog:HabboCatalog;
      
      private var _widget:ClubGiftWidget;
      
      private var var_1084:int;
      
      private var var_1897:int;
      
      private var var_532:Array;
      
      private var var_196:ClubGiftConfirmationDialog;
      
      public function ClubGiftController(param1:HabboCatalog)
      {
         super();
         _catalog = param1;
      }
      
      public function get assets() : IAssetLibrary
      {
         if(!_catalog)
         {
            return null;
         }
         return _catalog.assets;
      }
      
      public function set widget(param1:ClubGiftWidget) : void
      {
         _widget = param1;
         _catalog.connection.send(new GetClubGiftInfo());
      }
      
      public function selectGift(param1:Offer) : void
      {
         closeConfirmation();
         var_196 = new ClubGiftConfirmationDialog(this,param1);
      }
      
      public function getOffers() : Array
      {
         return var_532;
      }
      
      public function getProductData(param1:String) : IProductData
      {
         if(!_catalog)
         {
            return null;
         }
         return _catalog.getProductData(param1);
      }
      
      public function closeConfirmation() : void
      {
         if(var_196)
         {
            var_196.dispose();
            var_196 = null;
         }
      }
      
      public function get giftsAvailable() : int
      {
         return var_1084;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         if(!_catalog)
         {
            return null;
         }
         return _catalog.windowManager;
      }
      
      public function dispose() : void
      {
         _catalog = null;
         if(var_196)
         {
            var_196.dispose();
            var_196 = null;
         }
      }
      
      public function get localization() : ICoreLocalizationManager
      {
         if(!_catalog)
         {
            return null;
         }
         return _catalog.localization;
      }
      
      public function get daysUntilNextGift() : int
      {
         return var_1897;
      }
      
      public function confirmSelection(param1:String) : void
      {
         if(!param1 || !_catalog || true)
         {
            return;
         }
         _catalog.connection.send(new SelectClubGiftComposer(param1));
         --var_1084;
         _widget.update();
         closeConfirmation();
      }
      
      public function setInfo(param1:int, param2:int, param3:Array, param4:Map) : void
      {
         var_1897 = param1;
         var_1084 = param2;
         var_532 = param3;
         var_1479 = param4;
         _widget.update();
      }
      
      public function getGiftData() : Map
      {
         return var_1479;
      }
      
      public function get roomEngine() : IRoomEngine
      {
         if(!_catalog)
         {
            return null;
         }
         return _catalog.roomEngine;
      }
      
      public function get hasClub() : Boolean
      {
         if(!_catalog || !_catalog.getPurse())
         {
            return false;
         }
         return _catalog.getPurse().clubDays > 0;
      }
   }
}
