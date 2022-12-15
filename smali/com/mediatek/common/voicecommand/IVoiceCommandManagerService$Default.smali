.class public Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Default;
.super Ljava/lang/Object;
.source "IVoiceCommandManagerService.java"

# interfaces
.implements Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerListener(Ljava/lang/String;Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)I
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/mediatek/common/voicecommand/IVoiceCommandListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)I
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "mainAction"    # I
    .param p3, "subAction"    # I
    .param p4, "extraData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterListener(Ljava/lang/String;Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)I
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/mediatek/common/voicecommand/IVoiceCommandListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    return v0
.end method
