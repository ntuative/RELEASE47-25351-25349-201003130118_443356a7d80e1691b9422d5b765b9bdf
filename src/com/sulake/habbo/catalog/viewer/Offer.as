package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer
   {
      
      public static const const_895:String = "price_type_none";
      
      public static const const_357:String = "pricing_model_multi";
      
      public static const const_425:String = "price_type_credits";
      
      public static const const_410:String = "price_type_credits_and_pixels";
      
      public static const const_454:String = "pricing_model_bundle";
      
      public static const const_426:String = "pricing_model_single";
      
      public static const const_689:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1141:String = "pricing_model_unknown";
      
      public static const const_364:String = "price_type_pixels";
       
      
      private var var_798:int;
      
      private var _offerId:int;
      
      private var var_799:int;
      
      private var var_392:String;
      
      private var var_561:String;
      
      private var var_1755:int;
      
      private var var_568:ICatalogPage;
      
      private var var_1179:String;
      
      private var var_391:IProductContainer;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1179 = param1.localizationId;
         var_798 = param1.priceInCredits;
         var_799 = param1.priceInPixels;
         var_568 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_392;
      }
      
      public function get page() : ICatalogPage
      {
         return var_568;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_1755 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_391;
      }
      
      public function get localizationId() : String
      {
         return var_1179;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_799;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1179 = "";
         var_798 = 0;
         var_799 = 0;
         var_568 = null;
         if(var_391 != null)
         {
            var_391.dispose();
            var_391 = null;
         }
      }
      
      public function get priceType() : String
      {
         return var_561;
      }
      
      public function get previewCallbackId() : int
      {
         return var_1755;
      }
      
      public function get priceInCredits() : int
      {
         return var_798;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_392 = const_426;
            }
            else
            {
               var_392 = const_357;
            }
         }
         else if(param1.length > 1)
         {
            var_392 = const_454;
         }
         else
         {
            var_392 = const_1141;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_392)
         {
            case const_426:
               var_391 = new SingleProductContainer(this,param1);
               break;
            case const_357:
               var_391 = new MultiProductContainer(this,param1);
               break;
            case const_454:
               var_391 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_392);
         }
      }
      
      private function analyzePriceType() : void
      {
         if(var_798 > 0 && var_799 > 0)
         {
            var_561 = const_410;
         }
         else if(var_798 > 0)
         {
            var_561 = const_425;
         }
         else if(var_799 > 0)
         {
            var_561 = const_364;
         }
         else
         {
            var_561 = const_895;
         }
      }
   }
}
