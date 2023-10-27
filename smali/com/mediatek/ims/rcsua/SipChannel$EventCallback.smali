.class public abstract Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;
.super Lcom/mediatek/ims/rcsua/AppCallback;
.source "SipChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcsua/SipChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EventCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcsua/SipChannel$EventCallback$AvailableRunner;,
        Lcom/mediatek/ims/rcsua/SipChannel$EventCallback$SipMessageSendFailRunner;,
        Lcom/mediatek/ims/rcsua/SipChannel$EventCallback$SipMessageSentRunner;,
        Lcom/mediatek/ims/rcsua/SipChannel$EventCallback$Runner;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Lcom/mediatek/ims/rcsua/AppCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public messageReceived([B)V
    .locals 0
    .param p1, "message"    # [B

    .line 167
    return-void
.end method

.method public messageSendFailure(Ljava/lang/String;I)V
    .locals 0
    .param p1, "transactionId"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 186
    return-void
.end method

.method public messageSent(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionId"    # Ljava/lang/String;

    .line 176
    return-void
.end method

.method public onAvailable()V
    .locals 0

    .line 192
    return-void
.end method

.method public onUnavailable()V
    .locals 0

    .line 198
    return-void
.end method
