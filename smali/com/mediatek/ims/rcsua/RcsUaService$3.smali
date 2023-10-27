.class Lcom/mediatek/ims/rcsua/RcsUaService$3;
.super Ljava/lang/Object;
.source "RcsUaService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/rcsua/RcsUaService;-><init>(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/rcsua/RcsUaService;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcsua/RcsUaService;Landroid/content/Intent;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 1127
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/RcsUaService$3;->this$0:Lcom/mediatek/ims/rcsua/RcsUaService;

    iput-object p2, p0, Lcom/mediatek/ims/rcsua/RcsUaService$3;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/mediatek/ims/rcsua/RcsUaService$3;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindSerivce fail, retry:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService$3;->this$0:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-static {v1}, Lcom/mediatek/ims/rcsua/RcsUaService;->access$200(Lcom/mediatek/ims/rcsua/RcsUaService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[RcsUaService][API]"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService$3;->this$0:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->access$1100(Lcom/mediatek/ims/rcsua/RcsUaService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService$3;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1132
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService$3;->this$0:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->access$1100(Lcom/mediatek/ims/rcsua/RcsUaService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService$3;->val$intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService$3;->this$0:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-static {v2}, Lcom/mediatek/ims/rcsua/RcsUaService;->access$1200(Lcom/mediatek/ims/rcsua/RcsUaService;)Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 1134
    .local v0, "res":Z
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService$3;->this$0:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-static {v1}, Lcom/mediatek/ims/rcsua/RcsUaService;->access$208(Lcom/mediatek/ims/rcsua/RcsUaService;)I

    move-result v1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    .line 1135
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService$3;->val$handler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1137
    :cond_0
    return-void
.end method
