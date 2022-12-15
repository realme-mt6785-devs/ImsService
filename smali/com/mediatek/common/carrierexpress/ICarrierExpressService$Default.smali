.class public Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Default;
.super Ljava/lang/Object;
.source "ICarrierExpressService.java"

# interfaces
.implements Lcom/mediatek/common/carrierexpress/ICarrierExpressService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/carrierexpress/ICarrierExpressService;
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

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActiveOpPack()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllOpPackList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOpPackFromSimInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "mcc_mnc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOperatorSubIdList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "opPack"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public setOpPackActive(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "opPack"    # Ljava/lang/String;
    .param p2, "opSubId"    # Ljava/lang/String;
    .param p3, "mainSlot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
