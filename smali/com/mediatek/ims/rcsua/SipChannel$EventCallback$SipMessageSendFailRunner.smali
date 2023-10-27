.class Lcom/mediatek/ims/rcsua/SipChannel$EventCallback$SipMessageSendFailRunner;
.super Lcom/mediatek/ims/rcsua/AppCallback$BaseRunner;
.source "SipChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SipMessageSendFailRunner"
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

    .line 224
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/SipChannel$EventCallback$SipMessageSendFailRunner;->this$0:Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;

    .line 225
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/rcsua/AppCallback$BaseRunner;-><init>(Lcom/mediatek/ims/rcsua/AppCallback;[Ljava/lang/Object;)V

    .line 226
    return-void
.end method


# virtual methods
.method bridge synthetic exec([Ljava/lang/Object;)V
    .locals 0

    .line 223
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mediatek/ims/rcsua/SipChannel$EventCallback$SipMessageSendFailRunner;->exec([Ljava/lang/String;)V

    return-void
.end method

.method varargs exec([Ljava/lang/String;)V
    .locals 3
    .param p1, "params"    # [Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/SipChannel$EventCallback$SipMessageSendFailRunner;->this$0:Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;->messageSendFailure(Ljava/lang/String;I)V

    .line 231
    return-void
.end method
