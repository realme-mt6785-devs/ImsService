.class public Lcom/mediatek/rcs/provisioning/IAcsCallback$Default;
.super Ljava/lang/Object;
.source "IAcsCallback.java"

# interfaces
.implements Lcom/mediatek/rcs/provisioning/IAcsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/rcs/provisioning/IAcsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAcsConfigChange(II)V
    .locals 0
    .param p1, "configStatus"    # I
    .param p2, "configVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public onAcsConnectionStatusChange(I)V
    .locals 0
    .param p1, "connectionStatus"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method
