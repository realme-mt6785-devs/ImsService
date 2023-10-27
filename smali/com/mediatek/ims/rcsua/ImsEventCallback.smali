.class public abstract Lcom/mediatek/ims/rcsua/ImsEventCallback;
.super Lcom/mediatek/ims/rcsua/AppCallback;
.source "ImsEventCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcsua/ImsEventCallback$Runner;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/mediatek/ims/rcsua/AppCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregStart(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 63
    return-void
.end method

.method public onDeregistered(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 59
    return-void
.end method

.method public onDeregistering(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 55
    return-void
.end method

.method public onRegistered(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 51
    return-void
.end method

.method public onRegistering(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 47
    return-void
.end method

.method public onReregistered(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 67
    return-void
.end method

.method public onVopsIndication(I)V
    .locals 0
    .param p1, "vops"    # I

    .line 71
    return-void
.end method
