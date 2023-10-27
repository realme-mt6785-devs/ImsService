.class Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$4;
.super Ljava/lang/Object;
.source "MtkRcsCapabilityExchangeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->connectToRcsCoreService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    .line 326
    iput-object p1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$4;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 329
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.mediatek.presence"

    const-string v2, "com.mediatek.presence.service.RcsCoreService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .local v0, "cmp":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 332
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$4;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    invoke-static {v2}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$600(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$4;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    invoke-static {v3}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$500(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)Landroid/content/ServiceConnection;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 334
    .local v2, "result":Z
    iget-object v3, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$4;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectToRcsCoreService, count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$4;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    invoke-static {v5}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$700(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$000(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 335
    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$4;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    invoke-static {v3}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$708(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)I

    move-result v3

    const/16 v4, 0x258

    if-ge v3, v4, :cond_0

    .line 336
    iget-object v3, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$4;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    invoke-static {v3}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$800(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 338
    :cond_0
    return-void
.end method
