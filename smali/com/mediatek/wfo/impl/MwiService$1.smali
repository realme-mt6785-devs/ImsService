.class Lcom/mediatek/wfo/impl/MwiService$1;
.super Landroid/content/BroadcastReceiver;
.source "MwiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/MwiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfo/impl/MwiService;


# direct methods
.method constructor <init>(Lcom/mediatek/wfo/impl/MwiService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/wfo/impl/MwiService;

    .line 128
    iput-object p1, p0, Lcom/mediatek/wfo/impl/MwiService$1;->this$0:Lcom/mediatek/wfo/impl/MwiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 131
    const-string v0, "android.telephony.extra.ACTIVE_SIM_SUPPORTED_COUNT"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 134
    .local v0, "activeModemCount":I
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "processName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyMultiSimConfigChanged ACTION_MULTI_SIM_CONFIG_CHANGED,mSimCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/wfo/impl/MwiService$1;->this$0:Lcom/mediatek/wfo/impl/MwiService;

    .line 137
    invoke-static {v3}, Lcom/mediatek/wfo/impl/MwiService;->access$000(Lcom/mediatek/wfo/impl/MwiService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", activeModemCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    const-string v3, "MWIS"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/mediatek/wfo/impl/MwiService$1;->this$0:Lcom/mediatek/wfo/impl/MwiService;

    invoke-static {v2}, Lcom/mediatek/wfo/impl/MwiService;->access$000(Lcom/mediatek/wfo/impl/MwiService;)I

    move-result v2

    if-eq v2, v0, :cond_2

    .line 140
    const-string v2, "com.mediatek.ims"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    return-void

    .line 143
    :cond_0
    iget-object v2, p0, Lcom/mediatek/wfo/impl/MwiService$1;->this$0:Lcom/mediatek/wfo/impl/MwiService;

    invoke-static {v2}, Lcom/mediatek/wfo/impl/MwiService;->access$100(Lcom/mediatek/wfo/impl/MwiService;)[Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v2

    array-length v2, v2

    .line 144
    .local v2, "prevActiveModemCount":I
    iget-object v3, p0, Lcom/mediatek/wfo/impl/MwiService$1;->this$0:Lcom/mediatek/wfo/impl/MwiService;

    invoke-static {v3, v0}, Lcom/mediatek/wfo/impl/MwiService;->access$002(Lcom/mediatek/wfo/impl/MwiService;I)I

    .line 146
    iget-object v3, p0, Lcom/mediatek/wfo/impl/MwiService$1;->this$0:Lcom/mediatek/wfo/impl/MwiService;

    invoke-static {v3}, Lcom/mediatek/wfo/impl/MwiService;->access$100(Lcom/mediatek/wfo/impl/MwiService;)[Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v4

    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-static {v3, v4}, Lcom/mediatek/wfo/impl/MwiService;->access$102(Lcom/mediatek/wfo/impl/MwiService;[Lcom/mediatek/wfo/ril/MwiRIL;)[Lcom/mediatek/wfo/ril/MwiRIL;

    .line 148
    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 149
    iget-object v4, p0, Lcom/mediatek/wfo/impl/MwiService$1;->this$0:Lcom/mediatek/wfo/impl/MwiService;

    invoke-static {v4}, Lcom/mediatek/wfo/impl/MwiService;->access$100(Lcom/mediatek/wfo/impl/MwiService;)[Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v4

    new-instance v5, Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v6, p0, Lcom/mediatek/wfo/impl/MwiService$1;->this$0:Lcom/mediatek/wfo/impl/MwiService;

    invoke-static {v6}, Lcom/mediatek/wfo/impl/MwiService;->access$200(Lcom/mediatek/wfo/impl/MwiService;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/wfo/impl/MwiService$1;->this$0:Lcom/mediatek/wfo/impl/MwiService;

    iget-object v7, v7, Lcom/mediatek/wfo/impl/MwiService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v5, v6, v3, v7}, Lcom/mediatek/wfo/ril/MwiRIL;-><init>(Landroid/content/Context;ILandroid/os/Looper;)V

    aput-object v5, v4, v3

    .line 148
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 151
    .end local v3    # "i":I
    :cond_1
    invoke-static {}, Lcom/mediatek/wfo/impl/MwiService;->access$300()Lcom/mediatek/wfo/impl/WifiPdnHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/wfo/impl/MwiService$1;->this$0:Lcom/mediatek/wfo/impl/MwiService;

    invoke-static {v4}, Lcom/mediatek/wfo/impl/MwiService;->access$100(Lcom/mediatek/wfo/impl/MwiService;)[Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->notifyMultiSimConfigChanged(I[Lcom/mediatek/wfo/ril/MwiRIL;)V

    .line 152
    iget-object v3, p0, Lcom/mediatek/wfo/impl/MwiService$1;->this$0:Lcom/mediatek/wfo/impl/MwiService;

    invoke-static {v3}, Lcom/mediatek/wfo/impl/MwiService;->access$400(Lcom/mediatek/wfo/impl/MwiService;)Lcom/mediatek/wfo/impl/WfcHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/wfo/impl/MwiService$1;->this$0:Lcom/mediatek/wfo/impl/MwiService;

    invoke-static {v4}, Lcom/mediatek/wfo/impl/MwiService;->access$100(Lcom/mediatek/wfo/impl/MwiService;)[Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/mediatek/wfo/impl/WfcHandler;->notifyMultiSimConfigChanged(I[Lcom/mediatek/wfo/ril/MwiRIL;)V

    .line 153
    iget-object v3, p0, Lcom/mediatek/wfo/impl/MwiService$1;->this$0:Lcom/mediatek/wfo/impl/MwiService;

    invoke-static {v3}, Lcom/mediatek/wfo/impl/MwiService;->access$500(Lcom/mediatek/wfo/impl/MwiService;)Lcom/mediatek/wfo/impl/WfcLocationHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/wfo/impl/MwiService$1;->this$0:Lcom/mediatek/wfo/impl/MwiService;

    invoke-static {v4}, Lcom/mediatek/wfo/impl/MwiService;->access$100(Lcom/mediatek/wfo/impl/MwiService;)[Lcom/mediatek/wfo/ril/MwiRIL;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->notifyMultiSimConfigChanged(I[Lcom/mediatek/wfo/ril/MwiRIL;)V

    .line 156
    .end local v2    # "prevActiveModemCount":I
    :cond_2
    return-void
.end method
