package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1292:String = "DisconnectReasonPeerConnectionLost";
      
      public static const const_800:String = "DisconnectReasonTimeout";
      
      public static const const_567:String = "DisconnectReasonDisconnected";
      
      public static const const_296:String = "DisconnectReasonBanned";
      
      public static const const_971:String = "DisconnectReasonLoggedOut";
      
      public static const const_935:String = "DisconnectReasonConcurrentLogin";
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : String
      {
         var _loc1_:int = (this.var_6 as DisconnectReasonParser).reason;
         switch(_loc1_)
         {
            case -1:
               return const_567;
            case 0:
               return const_567;
            case 1:
               return const_971;
            case 1009:
            case 2:
               return const_935;
            case 3:
               return const_800;
            case 4:
               return const_1292;
            default:
               return const_567;
         }
      }
   }
}
