.class public abstract Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;
.super Ljava/lang/Object;
.source "UaServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcse/UaServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StateCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregistered(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 352
    return-void
.end method

.method public onDeregistering(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 348
    return-void
.end method

.method public onRegistered(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 344
    return-void
.end method

.method public onRegistering(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 340
    return-void
.end method

.method public onReregistered(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 356
    return-void
.end method
