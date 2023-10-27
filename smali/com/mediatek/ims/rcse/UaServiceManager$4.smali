.class Lcom/mediatek/ims/rcse/UaServiceManager$4;
.super Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;
.source "UaServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcse/UaServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/rcse/UaServiceManager;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcse/UaServiceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcse/UaServiceManager;

    .line 454
    iput-object p1, p0, Lcom/mediatek/ims/rcse/UaServiceManager$4;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-direct {p0}, Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public messageReceived([B)V
    .locals 5
    .param p1, "message"    # [B

    .line 458
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$4;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIP messageReceived >> size["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$000(Lcom/mediatek/ims/rcse/UaServiceManager;Ljava/lang/String;)V

    .line 459
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 460
    .local v0, "messageStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/rcse/UaServiceManager$4;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIP messageReceived >> message["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$000(Lcom/mediatek/ims/rcse/UaServiceManager;Ljava/lang/String;)V

    .line 461
    iget-object v1, p0, Lcom/mediatek/ims/rcse/UaServiceManager$4;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$300(Lcom/mediatek/ims/rcse/UaServiceManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/mediatek/ims/rcse/UaServiceManager$4$1;

    invoke-direct {v2, p0, p1}, Lcom/mediatek/ims/rcse/UaServiceManager$4$1;-><init>(Lcom/mediatek/ims/rcse/UaServiceManager$4;[B)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 469
    return-void
.end method

.method public messageSendFailure(Ljava/lang/String;I)V
    .locals 3
    .param p1, "transactionId"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 485
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$4;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIP messageSendFailure >> transactionId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], reason["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$000(Lcom/mediatek/ims/rcse/UaServiceManager;Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$4;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$300(Lcom/mediatek/ims/rcse/UaServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mediatek/ims/rcse/UaServiceManager$4$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/mediatek/ims/rcse/UaServiceManager$4$3;-><init>(Lcom/mediatek/ims/rcse/UaServiceManager$4;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 494
    return-void
.end method

.method public messageSent(Ljava/lang/String;)V
    .locals 3
    .param p1, "transactionId"    # Ljava/lang/String;

    .line 473
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$4;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIP messageSent >> transactionId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$000(Lcom/mediatek/ims/rcse/UaServiceManager;Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$4;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$300(Lcom/mediatek/ims/rcse/UaServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mediatek/ims/rcse/UaServiceManager$4$2;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/ims/rcse/UaServiceManager$4$2;-><init>(Lcom/mediatek/ims/rcse/UaServiceManager$4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 482
    return-void
.end method

.method public onAvailable()V
    .locals 2

    .line 501
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$4;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    const-string v1, "SIP onAvailable"

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$000(Lcom/mediatek/ims/rcse/UaServiceManager;Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$4;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$300(Lcom/mediatek/ims/rcse/UaServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mediatek/ims/rcse/UaServiceManager$4$4;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcse/UaServiceManager$4$4;-><init>(Lcom/mediatek/ims/rcse/UaServiceManager$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 510
    return-void
.end method

.method public onUnavailable()V
    .locals 2

    .line 517
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$4;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    const-string v1, "SIP onUnavailable"

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$000(Lcom/mediatek/ims/rcse/UaServiceManager;Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$4;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$300(Lcom/mediatek/ims/rcse/UaServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mediatek/ims/rcse/UaServiceManager$4$5;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcse/UaServiceManager$4$5;-><init>(Lcom/mediatek/ims/rcse/UaServiceManager$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 526
    return-void
.end method
