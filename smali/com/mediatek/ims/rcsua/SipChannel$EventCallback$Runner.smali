.class Lcom/mediatek/ims/rcsua/SipChannel$EventCallback$Runner;
.super Lcom/mediatek/ims/rcsua/AppCallback$BaseRunner;
.source "SipChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Runner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mediatek/ims/rcsua/AppCallback$BaseRunner<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;


# direct methods
.method varargs constructor <init>(Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;[[B)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;
    .param p2, "params"    # [[B

    .line 202
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/SipChannel$EventCallback$Runner;->this$0:Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;

    .line 203
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/rcsua/AppCallback$BaseRunner;-><init>(Lcom/mediatek/ims/rcsua/AppCallback;[Ljava/lang/Object;)V

    .line 204
    return-void
.end method


# virtual methods
.method bridge synthetic exec([Ljava/lang/Object;)V
    .locals 0

    .line 200
    check-cast p1, [[B

    invoke-virtual {p0, p1}, Lcom/mediatek/ims/rcsua/SipChannel$EventCallback$Runner;->exec([[B)V

    return-void
.end method

.method varargs exec([[B)V
    .locals 2
    .param p1, "params"    # [[B

    .line 208
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/SipChannel$EventCallback$Runner;->this$0:Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;->messageReceived([B)V

    .line 209
    return-void
.end method
