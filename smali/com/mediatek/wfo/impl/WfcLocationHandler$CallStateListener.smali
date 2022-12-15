.class Lcom/mediatek/wfo/impl/WfcLocationHandler$CallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "WfcLocationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/WfcLocationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;

    .line 208
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$CallStateListener;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallStateChanged state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WfcLocationHandler"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$CallStateListener;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$100(Lcom/mediatek/wfo/impl/WfcLocationHandler;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    const-string v0, "E911 is dialing"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$CallStateListener;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$200(Lcom/mediatek/wfo/impl/WfcLocationHandler;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const-string v0, "onCallStateChanged: ignore"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$CallStateListener;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$300(Lcom/mediatek/wfo/impl/WfcLocationHandler;)Lcom/mediatek/wfo/impl/WifiPdnHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiConnected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$CallStateListener;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$400(Lcom/mediatek/wfo/impl/WfcLocationHandler;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    const-string v0, "E911, Wi-Fi isn\'t connected and network unavailable"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$CallStateListener;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$500(Lcom/mediatek/wfo/impl/WfcLocationHandler;)V

    .line 221
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$CallStateListener;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    const/16 v1, 0xbbe

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 225
    :cond_2
    return-void
.end method
