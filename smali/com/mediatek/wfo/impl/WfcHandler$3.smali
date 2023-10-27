.class Lcom/mediatek/wfo/impl/WfcHandler$3;
.super Landroid/content/BroadcastReceiver;
.source "WfcHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/WfcHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfo/impl/WfcHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/wfo/impl/WfcHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/wfo/impl/WfcHandler;

    .line 922
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 925
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 926
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x7d3

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 928
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.net.wifi.action.WIFI_SCAN_AVAILABILITY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 929
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 930
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 932
    const/4 v0, -0x1

    const-string v1, "phone"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 934
    .local v0, "phoneId":I
    invoke-static {p1, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 935
    .local v1, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v2

    if-nez v2, :cond_2

    .line 936
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWfcEnabledByPlatform("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") is false, clearPDNErrorMessages"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 938
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    iget-object v2, v2, Lcom/mediatek/wfo/impl/WfcHandler;->mWosExt:Lcom/mediatek/wfo/op/IWosExt;

    invoke-interface {v2}, Lcom/mediatek/wfo/op/IWosExt;->clearPDNErrorMessages()V

    .line 941
    :cond_2
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v2}, Lcom/mediatek/wfo/impl/WfcHandler;->access$800(Lcom/mediatek/wfo/impl/WfcHandler;)V

    .line 942
    .end local v0    # "phoneId":I
    .end local v1    # "mgr":Lcom/android/ims/ImsManager;
    goto/16 :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.mediatek.common.carrierexpress.operator_config_changed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 945
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcHandler;->access$900(Lcom/mediatek/wfo/impl/WfcHandler;)V

    goto/16 :goto_1

    .line 947
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 948
    nop

    .line 949
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 950
    .local v0, "parcelableExtra":Landroid/os/Parcelable;
    if-eqz v0, :cond_6

    .line 951
    move-object v2, v0

    check-cast v2, Landroid/net/NetworkInfo;

    .line 952
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 953
    .local v3, "state":Landroid/net/NetworkInfo$State;
    iget-object v4, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v5, :cond_5

    const/4 v5, 0x1

    goto :goto_0

    :cond_5
    move v5, v1

    :goto_0
    invoke-static {v4, v5}, Lcom/mediatek/wfo/impl/WfcHandler;->access$1002(Lcom/mediatek/wfo/impl/WfcHandler;Z)Z

    .line 955
    iget-object v4, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v4, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->access$1100(Lcom/mediatek/wfo/impl/WfcHandler;Z)V

    .line 957
    .end local v0    # "parcelableExtra":Landroid/os/Parcelable;
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v3    # "state":Landroid/net/NetworkInfo$State;
    :cond_6
    goto/16 :goto_1

    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 958
    const-string v0, "simPropKey"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 959
    .local v0, "imsEnabledKey":Ljava/lang/String;
    const-string v2, "wfc_ims_enabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 960
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    const-string v3, "ACTION_SUBINFO_RECORD_UPDATED: WFC_IMS_ENABLED changes"

    invoke-virtual {v2, v3}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 961
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v2}, Lcom/mediatek/wfo/impl/WfcHandler;->access$1200(Lcom/mediatek/wfo/impl/WfcHandler;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 962
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3}, Lcom/mediatek/wfo/impl/WfcHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/wfo/impl/WfcHandler;->sendMessage(Landroid/os/Message;)Z

    .line 964
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v2, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->access$1100(Lcom/mediatek/wfo/impl/WfcHandler;Z)V

    .line 967
    .end local v0    # "imsEnabledKey":Ljava/lang/String;
    :cond_8
    goto/16 :goto_1

    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.mediatek.intent.action.WFC_STATUS_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 968
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcHandler;->access$300(Lcom/mediatek/wfo/impl/WfcHandler;)Lcom/mediatek/wfo/impl/WifiPdnHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiPdnExisted()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcHandler;->access$400(Lcom/mediatek/wfo/impl/WfcHandler;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 969
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->access$402(Lcom/mediatek/wfo/impl/WfcHandler;Z)Z

    .line 970
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    const/16 v1, 0x89a

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 973
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 974
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    sget-object v1, Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;->SCREEN_OFF:Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;

    invoke-virtual {v1}, Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->access$1302(Lcom/mediatek/wfo/impl/WfcHandler;I)I

    .line 975
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcHandler;->access$1300(Lcom/mediatek/wfo/impl/WfcHandler;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->access$1400(Lcom/mediatek/wfo/impl/WfcHandler;I)V

    goto :goto_1

    .line 976
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 977
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    sget-object v1, Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;->SCREEN_ON:Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;

    invoke-virtual {v1}, Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->access$1302(Lcom/mediatek/wfo/impl/WfcHandler;I)I

    .line 978
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcHandler;->access$1300(Lcom/mediatek/wfo/impl/WfcHandler;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->access$1400(Lcom/mediatek/wfo/impl/WfcHandler;I)V

    goto :goto_1

    .line 979
    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 980
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    sget-object v1, Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;->USER_PRESENT:Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;

    invoke-virtual {v1}, Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->access$1302(Lcom/mediatek/wfo/impl/WfcHandler;I)I

    .line 981
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcHandler;->access$1300(Lcom/mediatek/wfo/impl/WfcHandler;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->access$1400(Lcom/mediatek/wfo/impl/WfcHandler;I)V

    .line 983
    :cond_d
    :goto_1
    return-void
.end method
