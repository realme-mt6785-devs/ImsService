.class Lcom/mediatek/ims/rcse/MtkSipDelegate$SipCallback;
.super Lcom/mediatek/ims/rcse/UaServiceManager$SipCallback;
.source "MtkSipDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcse/MtkSipDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SipCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcse/MtkSipDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcse/MtkSipDelegate;

    .line 263
    iput-object p1, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate$SipCallback;->this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;

    invoke-direct {p0}, Lcom/mediatek/ims/rcse/UaServiceManager$SipCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public messageReceived([B)V
    .locals 4
    .param p1, "message"    # [B

    .line 267
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate$SipCallback;->this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;

    invoke-static {v0, p1}, Lcom/mediatek/ims/rcse/MtkSipDelegate;->access$100(Lcom/mediatek/ims/rcse/MtkSipDelegate;[B)Landroid/telephony/ims/SipMessage;

    move-result-object v0

    .line 269
    .local v0, "sipMessage":Landroid/telephony/ims/SipMessage;
    if-nez v0, :cond_0

    .line 270
    iget-object v1, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate$SipCallback;->this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;

    const-string v2, "messageReceived >> sipMesage[null]"

    invoke-static {v1, v2}, Lcom/mediatek/ims/rcse/MtkSipDelegate;->access$200(Lcom/mediatek/ims/rcse/MtkSipDelegate;Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate$SipCallback;->this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "messageReceived >> sipMesage["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/rcse/MtkSipDelegate;->access$300(Lcom/mediatek/ims/rcse/MtkSipDelegate;Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate$SipCallback;->this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;

    invoke-static {v1}, Lcom/mediatek/ims/rcse/MtkSipDelegate;->access$000(Lcom/mediatek/ims/rcse/MtkSipDelegate;)Landroid/telephony/ims/DelegateMessageCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/telephony/ims/DelegateMessageCallback;->onMessageReceived(Landroid/telephony/ims/SipMessage;)V

    .line 275
    :goto_0
    return-void
.end method

.method public messageSendFailure(Ljava/lang/String;I)V
    .locals 3
    .param p1, "transactionId"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 288
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate$SipCallback;->this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageSendFailure >> transactionId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], reason["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcse/MtkSipDelegate;->access$300(Lcom/mediatek/ims/rcse/MtkSipDelegate;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate$SipCallback;->this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/MtkSipDelegate;->access$400(Lcom/mediatek/ims/rcse/MtkSipDelegate;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate$SipCallback;->this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/MtkSipDelegate;->access$000(Lcom/mediatek/ims/rcse/MtkSipDelegate;)Landroid/telephony/ims/DelegateMessageCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/DelegateMessageCallback;->onMessageSendFailure(Ljava/lang/String;I)V

    .line 291
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate$SipCallback;->this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/MtkSipDelegate;->access$400(Lcom/mediatek/ims/rcse/MtkSipDelegate;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 293
    :cond_0
    return-void
.end method

.method public messageSent(Ljava/lang/String;)V
    .locals 3
    .param p1, "transactionId"    # Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate$SipCallback;->this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageSent >> transactionId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcse/MtkSipDelegate;->access$300(Lcom/mediatek/ims/rcse/MtkSipDelegate;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate$SipCallback;->this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/MtkSipDelegate;->access$400(Lcom/mediatek/ims/rcse/MtkSipDelegate;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate$SipCallback;->this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/MtkSipDelegate;->access$000(Lcom/mediatek/ims/rcse/MtkSipDelegate;)Landroid/telephony/ims/DelegateMessageCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/telephony/ims/DelegateMessageCallback;->onMessageSent(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate$SipCallback;->this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/MtkSipDelegate;->access$400(Lcom/mediatek/ims/rcse/MtkSipDelegate;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 284
    :cond_0
    return-void
.end method

.method public onAvailable()V
    .locals 0

    .line 297
    return-void
.end method

.method public onUnavailable()V
    .locals 0

    .line 301
    return-void
.end method
