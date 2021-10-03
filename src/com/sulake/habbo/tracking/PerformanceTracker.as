package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var var_1578:GarbageMonitor = null;
      
      private var var_1352:int = 0;
      
      private var var_1349:Boolean = false;
      
      private var var_2216:String = "";
      
      private var var_1579:String = "";
      
      private var var_365:Number = 0;
      
      private var var_1354:int = 10;
      
      private var var_2335:Array;
      
      private var var_629:int = 0;
      
      private var var_1351:int = 60;
      
      private var var_1086:int = 0;
      
      private var var_1085:int = 0;
      
      private var var_2212:String = "";
      
      private var var_2225:Number = 0;
      
      private var var_1350:int = 1000;
      
      private var var_2226:Boolean = true;
      
      private var var_2227:Number = 0.15;
      
      private var var_148:IHabboConfigurationManager = null;
      
      private var var_2217:String = "";
      
      private var var_1353:int = 0;
      
      private var _connection:IConnection = null;
      
      public function PerformanceTracker()
      {
         var_2335 = [];
         super();
         var_1579 = Capabilities.version;
         var_2216 = Capabilities.os;
         var_1349 = Capabilities.isDebugger;
         var_2217 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         var_1578 = new GarbageMonitor();
         updateGarbageMonitor();
         var_1352 = getTimer();
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_1578.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            var_1578.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function dispose() : void
      {
      }
      
      public function get averageUpdateInterval() : int
      {
         return var_365;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
      
      public function set reportInterval(param1:int) : void
      {
         var_1351 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
      
      public function get flashVersion() : String
      {
         return var_1579;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++var_1085;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > var_1350)
         {
            ++var_1086;
            _loc3_ = true;
         }
         else
         {
            ++var_629;
            if(var_629 <= 1)
            {
               var_365 = param1;
            }
            else
            {
               _loc4_ = Number(var_629);
               var_365 = var_365 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - var_1352 > var_1351 * 1000 && var_1353 < var_1354)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / var_365);
            _loc5_ = true;
            if(var_2226 && var_1353 > 0)
            {
               _loc6_ = differenceInPercents(var_2225,var_365);
               if(_loc6_ < var_2227)
               {
                  _loc5_ = false;
               }
            }
            var_1352 = getTimer();
            if(_loc5_ || _loc3_)
            {
               var_2225 = var_365;
               if(sendReport())
               {
                  ++var_1353;
               }
            }
         }
      }
      
      public function set reportLimit(param1:int) : void
      {
         var_1354 = param1;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         var_1350 = param1;
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,var_2217,var_1579,var_2216,var_2212,var_1349,_loc4_,_loc3_,var_1085,var_365,var_1086);
            _connection.send(_loc1_);
            var_1085 = 0;
            var_365 = 0;
            var_629 = 0;
            var_1086 = 0;
            return true;
         }
         return false;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_148 = param1;
         var_1351 = int(var_148.getKey("performancetest.interval","60"));
         var_1350 = int(var_148.getKey("performancetest.slowupdatelimit","1000"));
         var_1354 = int(var_148.getKey("performancetest.reportlimit","10"));
         var_2227 = Number(var_148.getKey("performancetest.distribution.deviancelimit.percent","10"));
         var_2226 = Boolean(int(var_148.getKey("performancetest.distribution.enabled","1")));
      }
   }
}
