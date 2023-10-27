.class Lcom/mediatek/ims/rcse/UaServiceManager$2;
.super Ljava/lang/Object;
.source "UaServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/rcse/UaServiceManager;->registerSipCallback(Lcom/mediatek/ims/rcse/UaServiceManager$SipCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

.field final synthetic val$callback:Lcom/mediatek/ims/rcse/UaServiceManager$SipCallback;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcse/UaServiceManager;Lcom/mediatek/ims/rcse/UaServiceManager$SipCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcse/UaServiceManager;

    .line 231
    iput-object p1, p0, Lcom/mediatek/ims/rcse/UaServiceManager$2;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    iput-object p2, p0, Lcom/mediatek/ims/rcse/UaServiceManager$2;->val$callback:Lcom/mediatek/ims/rcse/UaServiceManager$SipCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$2;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$100(Lcom/mediatek/ims/rcse/UaServiceManager;)Lcom/mediatek/ims/rcsua/SipChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/SipChannel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$2;->val$callback:Lcom/mediatek/ims/rcse/UaServiceManager$SipCallback;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcse/UaServiceManager$SipCallback;->onAvailable()V

    goto :goto_0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$2;->val$callback:Lcom/mediatek/ims/rcse/UaServiceManager$SipCallback;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcse/UaServiceManager$SipCallback;->onUnavailable()V

    .line 238
    :goto_0
    return-void
.end method
