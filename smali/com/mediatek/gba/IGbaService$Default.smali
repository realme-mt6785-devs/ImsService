.class public Lcom/mediatek/gba/IGbaService$Default;
.super Ljava/lang/Object;
.source "IGbaService.java"

# interfaces
.implements Lcom/mediatek/gba/IGbaService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gba/IGbaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCachedKey(Ljava/lang/String;[BI)Lcom/mediatek/gba/NafSessionKey;
    .locals 1
    .param p1, "nafFqdn"    # Ljava/lang/String;
    .param p2, "nafSecurProtocolId"    # [B
    .param p3, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGbaSupported()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public getGbaSupportedForSubscriber(I)I
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public isGbaKeyExpired(Ljava/lang/String;[B)Z
    .locals 1
    .param p1, "nafFqdn"    # Ljava/lang/String;
    .param p2, "nafSecurProtocolId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public isGbaKeyExpiredForSubscriber(Ljava/lang/String;[BI)Z
    .locals 1
    .param p1, "nafFqdn"    # Ljava/lang/String;
    .param p2, "nafSecurProtocolId"    # [B
    .param p3, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public runGbaAuthentication(Ljava/lang/String;[BZ)Lcom/mediatek/gba/NafSessionKey;
    .locals 1
    .param p1, "nafFqdn"    # Ljava/lang/String;
    .param p2, "nafSecurProtocolId"    # [B
    .param p3, "forceRun"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public runGbaAuthenticationForSubscriber(Ljava/lang/String;[BZI)Lcom/mediatek/gba/NafSessionKey;
    .locals 1
    .param p1, "nafFqdn"    # Ljava/lang/String;
    .param p2, "nafSecurProtocolId"    # [B
    .param p3, "forceRun"    # Z
    .param p4, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public setNetwork(Landroid/net/Network;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public updateCachedKey(Ljava/lang/String;[BILcom/mediatek/gba/NafSessionKey;)V
    .locals 0
    .param p1, "nafFqdn"    # Ljava/lang/String;
    .param p2, "nafSecurProtocolId"    # [B
    .param p3, "subId"    # I
    .param p4, "nafSessionKey"    # Lcom/mediatek/gba/NafSessionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method
