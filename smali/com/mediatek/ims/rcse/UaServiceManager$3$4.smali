.class Lcom/mediatek/ims/rcse/UaServiceManager$3$4;
.super Ljava/lang/Object;
.source "UaServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/rcse/UaServiceManager$3;->onDeregistered(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/ims/rcse/UaServiceManager$3;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcse/UaServiceManager$3;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/ims/rcse/UaServiceManager$3;

    .line 420
    iput-object p1, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3$4;->this$1:Lcom/mediatek/ims/rcse/UaServiceManager$3;

    iput p2, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3$4;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 423
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3$4;->this$1:Lcom/mediatek/ims/rcse/UaServiceManager$3;

    iget-object v0, v0, Lcom/mediatek/ims/rcse/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$200(Lcom/mediatek/ims/rcse/UaServiceManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;

    .line 424
    .local v1, "callback":Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;
    iget v2, p0, Lcom/mediatek/ims/rcse/UaServiceManager$3$4;->val$mode:I

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;->onDeregistered(I)V

    .line 425
    .end local v1    # "callback":Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;
    goto :goto_0

    .line 426
    :cond_0
    return-void
.end method
