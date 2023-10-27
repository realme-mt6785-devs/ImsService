.class Lcom/mediatek/ims/rcsua/SipChannel$EventCallback$AvailableRunner;
.super Lcom/mediatek/ims/rcsua/AppCallback$BaseRunner;
.source "SipChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AvailableRunner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mediatek/ims/rcsua/AppCallback$BaseRunner<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;


# direct methods
.method varargs constructor <init>(Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;[Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;
    .param p2, "params"    # [Ljava/lang/Boolean;

    .line 235
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/SipChannel$EventCallback$AvailableRunner;->this$0:Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;

    .line 236
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/rcsua/AppCallback$BaseRunner;-><init>(Lcom/mediatek/ims/rcsua/AppCallback;[Ljava/lang/Object;)V

    .line 237
    return-void
.end method


# virtual methods
.method varargs exec([Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "params"    # [Ljava/lang/Boolean;

    .line 241
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/SipChannel$EventCallback$AvailableRunner;->this$0:Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;->onAvailable()V

    goto :goto_0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/SipChannel$EventCallback$AvailableRunner;->this$0:Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;->onUnavailable()V

    .line 245
    :goto_0
    return-void
.end method

.method bridge synthetic exec([Ljava/lang/Object;)V
    .locals 0

    .line 234
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/mediatek/ims/rcsua/SipChannel$EventCallback$AvailableRunner;->exec([Ljava/lang/Boolean;)V

    return-void
.end method
