.class public abstract Lcom/mediatek/ims/rcsua/AcsEventCallback;
.super Lcom/mediatek/ims/rcsua/AppCallback;
.source "AcsEventCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcsua/AcsEventCallback$Runner;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/mediatek/ims/rcsua/AppCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcsConnected()V
    .locals 0

    .line 21
    return-void
.end method

.method public onAcsDisconnected()V
    .locals 0

    .line 26
    return-void
.end method

.method public onConfigurationStatusChanged(ZI)V
    .locals 0
    .param p1, "valid"    # Z
    .param p2, "version"    # I

    .line 16
    return-void
.end method
