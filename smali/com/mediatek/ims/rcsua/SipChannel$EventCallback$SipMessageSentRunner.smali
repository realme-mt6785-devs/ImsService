.class Lcom/mediatek/ims/rcsua/SipChannel$EventCallback$SipMessageSentRunner;
.super Lcom/mediatek/ims/rcsua/AppCallback$BaseRunner;
.source "SipChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SipMessageSentRunner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mediatek/ims/rcsua/AppCallback$BaseRunner<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;


# direct methods
.method varargs constructor <init>(Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;
    .param p2, "params"    # [Ljava/lang/String;

    .line 213
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/SipChannel$EventCallback$SipMessageSentRunner;->this$0:Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;

    .line 214
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/rcsua/AppCallback$BaseRunner;-><init>(Lcom/mediatek/ims/rcsua/AppCallback;[Ljava/lang/Object;)V

    .line 215
    return-void
.end method


# virtual methods
.method bridge synthetic exec([Ljava/lang/Object;)V
    .locals 0

    .line 212
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mediatek/ims/rcsua/SipChannel$EventCallback$SipMessageSentRunner;->exec([Ljava/lang/String;)V

    return-void
.end method

.method varargs exec([Ljava/lang/String;)V
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/SipChannel$EventCallback$SipMessageSentRunner;->this$0:Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;->messageSent(Ljava/lang/String;)V

    .line 220
    return-void
.end method
