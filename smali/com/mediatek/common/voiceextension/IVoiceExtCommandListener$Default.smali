.class public Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener$Default;
.super Ljava/lang/Object;
.source "IVoiceExtCommandListener.java"

# interfaces
.implements Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/voiceextension/IVoiceExtCommandListener;
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

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCommandRecognized(IILjava/lang/String;)V
    .locals 0
    .param p1, "retCode"    # I
    .param p2, "commandId"    # I
    .param p3, "commandStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public onError(I)V
    .locals 0
    .param p1, "retCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public onPauseRecognition(I)V
    .locals 0
    .param p1, "retCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public onResumeRecognition(I)V
    .locals 0
    .param p1, "retCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public onSetCommands(I)V
    .locals 0
    .param p1, "retCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public onStartRecognition(I)V
    .locals 0
    .param p1, "retCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method

.method public onStopRecognition(I)V
    .locals 0
    .param p1, "retCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
