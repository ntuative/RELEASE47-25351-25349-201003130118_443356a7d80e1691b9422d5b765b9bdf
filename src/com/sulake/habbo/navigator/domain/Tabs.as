package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_545:int = 6;
      
      public static const const_221:int = 5;
      
      public static const const_601:int = 2;
      
      public static const const_298:int = 9;
      
      public static const const_295:int = 4;
      
      public static const const_256:int = 2;
      
      public static const const_610:int = 4;
      
      public static const const_209:int = 8;
      
      public static const const_640:int = 7;
      
      public static const const_250:int = 3;
      
      public static const const_336:int = 1;
      
      public static const const_193:int = 5;
      
      public static const const_442:int = 12;
      
      public static const const_326:int = 1;
      
      public static const const_737:int = 11;
      
      public static const const_543:int = 3;
      
      public static const const_1447:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_380:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_380 = new Array();
         var_380.push(new Tab(_navigator,const_336,const_442,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_415));
         var_380.push(new Tab(_navigator,const_256,const_326,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_415));
         var_380.push(new Tab(_navigator,const_295,const_737,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_1013));
         var_380.push(new Tab(_navigator,const_250,const_221,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_415));
         var_380.push(new Tab(_navigator,const_193,const_209,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_536));
         setSelectedTab(const_336);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_380)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_380)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_380)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_295;
      }
      
      public function get tabs() : Array
      {
         return var_380;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
