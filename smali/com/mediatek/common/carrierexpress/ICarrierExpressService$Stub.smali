.class public abstract Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub;
.super Landroid/os/Binder;
.source "ICarrierExpressService.java"

# interfaces
.implements Lcom/mediatek/common/carrierexpress/ICarrierExpressService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/carrierexpress/ICarrierExpressService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.common.carrierexpress.ICarrierExpressService"

.field static final TRANSACTION_getActiveOpPack:I = 0x1

.field static final TRANSACTION_getAllOpPackList:I = 0x4

.field static final TRANSACTION_getOpPackFromSimInfo:I = 0x2

.field static final TRANSACTION_getOperatorSubIdList:I = 0x5

.field static final TRANSACTION_setOpPackActive:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    const-string v0, "com.mediatek.common.carrierexpress.ICarrierExpressService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/carrierexpress/ICarrierExpressService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 50
    if-nez p0, :cond_0

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    const-string v0, "com.mediatek.common.carrierexpress.ICarrierExpressService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/common/carrierexpress/ICarrierExpressService;

    if-eqz v1, :cond_1

    .line 55
    move-object v1, v0

    check-cast v1, Lcom/mediatek/common/carrierexpress/ICarrierExpressService;

    return-object v1

    .line 57
    :cond_1
    new-instance v1, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/common/carrierexpress/ICarrierExpressService;
    .locals 1

    .line 269
    sget-object v0, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/carrierexpress/ICarrierExpressService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/common/carrierexpress/ICarrierExpressService;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/common/carrierexpress/ICarrierExpressService;

    .line 259
    sget-object v0, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/carrierexpress/ICarrierExpressService;

    if-nez v0, :cond_1

    .line 262
    if-eqz p0, :cond_0

    .line 263
    sput-object p0, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/carrierexpress/ICarrierExpressService;

    .line 264
    const/4 v0, 0x1

    return v0

    .line 266
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 260
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 61
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    const-string v0, "com.mediatek.common.carrierexpress.ICarrierExpressService"

    .line 66
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 124
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 70
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    return v1

    .line 114
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub;->getOperatorSubIdList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 118
    .local v3, "_result":Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 120
    return v1

    .line 106
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub;->getAllOpPackList()Ljava/util/Map;

    move-result-object v2

    .line 108
    .local v2, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 110
    return v1

    .line 93
    .end local v2    # "_result":Ljava/util/Map;
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 100
    .local v4, "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub;->setOpPackActive(Ljava/lang/String;Ljava/lang/String;I)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    return v1

    .line 83
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 86
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub;->getOpPackFromSimInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    return v1

    .line 75
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :cond_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/mediatek/common/carrierexpress/ICarrierExpressService$Stub;->getActiveOpPack()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    return v1
.end method
