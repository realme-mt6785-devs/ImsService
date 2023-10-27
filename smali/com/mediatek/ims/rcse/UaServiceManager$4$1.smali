.class Lcom/mediatek/ims/rcse/UaServiceManager$4$1;
.super Ljava/lang/Object;
.source "UaServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/rcse/UaServiceManager$4;->messageReceived([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/ims/rcse/UaServiceManager$4;

.field final synthetic val$message:[B


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcse/UaServiceManager$4;[B)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/ims/rcse/UaServiceManager$4;

    .line 461
    iput-object p1, p0, Lcom/mediatek/ims/rcse/UaServiceManager$4$1;->this$1:Lcom/mediatek/ims/rcse/UaServiceManager$4;

    iput-object p2, p0, Lcom/mediatek/ims/rcse/UaServiceManager$4$1;->val$message:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 464
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$4$1;->this$1:Lcom/mediatek/ims/rcse/UaServiceManager$4;

    iget-object v0, v0, Lcom/mediatek/ims/rcse/UaServiceManager$4;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$400(Lcom/mediatek/ims/rcse/UaServiceManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcse/UaServiceManager$SipCallback;

    .line 465
    .local v1, "callback":Lcom/mediatek/ims/rcse/UaServiceManager$SipCallback;
    iget-object v2, p0, Lcom/mediatek/ims/rcse/UaServiceManager$4$1;->val$message:[B

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/rcse/UaServiceManager$SipCallback;->messageReceived([B)V

    .line 466
    .end local v1    # "callback":Lcom/mediatek/ims/rcse/UaServiceManager$SipCallback;
    goto :goto_0

    .line 467
    :cond_0
    return-void
.end method
