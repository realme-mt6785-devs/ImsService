.class public abstract Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub;
.super Landroid/os/Binder;
.source "ISipChannel.java"

# interfaces
.implements Lcom/mediatek/ims/rcsua/service/ISipChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcsua/service/ISipChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_close:I = 0x3

.field static final TRANSACTION_isAvailable:I = 0x4

.field static final TRANSACTION_readConfiguration:I = 0x5

.field static final TRANSACTION_sendMessage:I = 0x1

.field static final TRANSACTION_sendMessageAsync:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 39
    const-string v0, "com.mediatek.ims.rcsua.service.ISipChannel"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/ISipChannel;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 47
    if-nez p0, :cond_0

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 50
    :cond_0
    const-string v0, "com.mediatek.ims.rcsua.service.ISipChannel"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 51
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/ims/rcsua/service/ISipChannel;

    if-eqz v1, :cond_1

    .line 52
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/rcsua/service/ISipChannel;

    return-object v1

    .line 54
    :cond_1
    new-instance v1, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/ims/rcsua/service/ISipChannel;
    .locals 1

    .line 303
    sget-object v0, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/ims/rcsua/service/ISipChannel;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/ims/rcsua/service/ISipChannel;

    .line 293
    sget-object v0, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    if-nez v0, :cond_1

    .line 296
    if-eqz p0, :cond_0

    .line 297
    sput-object p0, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/rcsua/service/ISipChannel;

    .line 298
    const/4 v0, 0x1

    return v0

    .line 300
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 294
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 58
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

    .line 62
    const-string v0, "com.mediatek.ims.rcsua.service.ISipChannel"

    .line 63
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 71
    packed-switch p1, :pswitch_data_1

    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 67
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    return v1

    .line 129
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub;->readConfiguration()Lcom/mediatek/ims/rcsua/Configuration;

    move-result-object v2

    .line 131
    .local v2, "_result":Lcom/mediatek/ims/rcsua/Configuration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v2, :cond_0

    .line 133
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    invoke-virtual {v2, p3, v1}, Lcom/mediatek/ims/rcsua/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 137
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    :goto_0
    return v1

    .line 121
    .end local v2    # "_result":Lcom/mediatek/ims/rcsua/Configuration;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub;->isAvailable()Z

    move-result v2

    .line 123
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    return v1

    .line 105
    .end local v2    # "_result":Z
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    new-instance v2, Lcom/mediatek/ims/rcsua/service/RcsUaException;

    invoke-direct {v2}, Lcom/mediatek/ims/rcsua/service/RcsUaException;-><init>()V

    .line 108
    .local v2, "_arg0":Lcom/mediatek/ims/rcsua/service/RcsUaException;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub;->close(Lcom/mediatek/ims/rcsua/service/RcsUaException;)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    nop

    .line 111
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    invoke-virtual {v2, p3, v1}, Lcom/mediatek/ims/rcsua/service/RcsUaException;->writeToParcel(Landroid/os/Parcel;I)V

    .line 117
    return v1

    .line 94
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/service/RcsUaException;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 98
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub;->sendMessageAsync([BLjava/lang/String;)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    return v1

    .line 75
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 79
    .restart local v2    # "_arg0":[B
    new-instance v3, Lcom/mediatek/ims/rcsua/service/RcsUaException;

    invoke-direct {v3}, Lcom/mediatek/ims/rcsua/service/RcsUaException;-><init>()V

    .line 80
    .local v3, "_arg1":Lcom/mediatek/ims/rcsua/service/RcsUaException;
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub;->sendMessage([BLcom/mediatek/ims/rcsua/service/RcsUaException;)I

    move-result v4

    .line 81
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    nop

    .line 84
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    invoke-virtual {v3, p3, v1}, Lcom/mediatek/ims/rcsua/service/RcsUaException;->writeToParcel(Landroid/os/Parcel;I)V

    .line 90
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
