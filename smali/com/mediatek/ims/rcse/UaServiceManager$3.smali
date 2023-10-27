.class Lcom/mediatek/ims/rcse/UaServiceManager$3;
.super Lcom/mediatek/ims/rcsua/ImsEventCallback;
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

    .line 376
    iput-object p1, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-direct {p0}, Lcom/mediatek/ims/rcsua/ImsEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregStart(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 445
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RCS IMS event onDeregStart >> mode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$000(Lcom/mediatek/ims/rcse/UaServiceManager;Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method public onDeregistered(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 419
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RCS IMS event onDeregistered >> mode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$000(Lcom/mediatek/ims/rcse/UaServiceManager;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$300(Lcom/mediatek/ims/rcse/UaServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mediatek/ims/rcse/UaServiceManager$3$4;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/ims/rcse/UaServiceManager$3$4;-><init>(Lcom/mediatek/ims/rcse/UaServiceManager$3;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 428
    return-void
.end method

.method public onDeregistering(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 406
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RCS IMS event onDeregistering >> mode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$000(Lcom/mediatek/ims/rcse/UaServiceManager;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$300(Lcom/mediatek/ims/rcse/UaServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mediatek/ims/rcse/UaServiceManager$3$3;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/ims/rcse/UaServiceManager$3$3;-><init>(Lcom/mediatek/ims/rcse/UaServiceManager$3;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 415
    return-void
.end method

.method public onRegistered(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 393
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RCS IMS event onRegistered >> mode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$000(Lcom/mediatek/ims/rcse/UaServiceManager;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$300(Lcom/mediatek/ims/rcse/UaServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mediatek/ims/rcse/UaServiceManager$3$2;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/ims/rcse/UaServiceManager$3$2;-><init>(Lcom/mediatek/ims/rcse/UaServiceManager$3;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 402
    return-void
.end method

.method public onRegistering(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 380
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RCS IMS event onRegistering >> mode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$000(Lcom/mediatek/ims/rcse/UaServiceManager;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$300(Lcom/mediatek/ims/rcse/UaServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mediatek/ims/rcse/UaServiceManager$3$1;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/ims/rcse/UaServiceManager$3$1;-><init>(Lcom/mediatek/ims/rcse/UaServiceManager$3;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 389
    return-void
.end method

.method public onReregistered(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 432
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RCS IMS event onReregistered >> mode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$000(Lcom/mediatek/ims/rcse/UaServiceManager;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$300(Lcom/mediatek/ims/rcse/UaServiceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mediatek/ims/rcse/UaServiceManager$3$5;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/ims/rcse/UaServiceManager$3$5;-><init>(Lcom/mediatek/ims/rcse/UaServiceManager$3;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 441
    return-void
.end method

.method public onVopsIndication(I)V
    .locals 3
    .param p1, "vops"    # I

    .line 450
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RCS IMS event onVopsIndication >> vops["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$000(Lcom/mediatek/ims/rcse/UaServiceManager;Ljava/lang/String;)V

    .line 451
    return-void
.end method
