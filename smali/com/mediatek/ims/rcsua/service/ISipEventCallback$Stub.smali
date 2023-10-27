.class public abstract Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub;
.super Landroid/os/Binder;
.source "ISipEventCallback.java"

# interfaces
.implements Lcom/mediatek/ims/rcsua/service/ISipEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcsua/service/ISipEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_availabilityChanged:I = 0x4

.field static final TRANSACTION_messageReceived:I = 0x1

.field static final TRANSACTION_messageSendFail:I = 0x3

.field static final TRANSACTION_messageSent:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "com.mediatek.ims.rcsua.service.ISipEventCallback"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/ISipEventCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 41
    if-nez p0, :cond_0

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_0
    const-string v0, "com.mediatek.ims.rcsua.service.ISipEventCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/ims/rcsua/service/ISipEventCallback;

    if-eqz v1, :cond_1

    .line 46
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/rcsua/service/ISipEventCallback;

    return-object v1

    .line 48
    :cond_1
    new-instance v1, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/ims/rcsua/service/ISipEventCallback;
    .locals 1

    .line 218
    sget-object v0, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/rcsua/service/ISipEventCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/ims/rcsua/service/ISipEventCallback;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/ims/rcsua/service/ISipEventCallback;

    .line 208
    sget-object v0, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/rcsua/service/ISipEventCallback;

    if-nez v0, :cond_1

    .line 211
    if-eqz p0, :cond_0

    .line 212
    sput-object p0, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/rcsua/service/ISipEventCallback;

    .line 213
    const/4 v0, 0x1

    return v0

    .line 215
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 209
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 52
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    const-string v0, "com.mediatek.ims.rcsua.service.ISipEventCallback"

    .line 57
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 65
    packed-switch p1, :pswitch_data_1

    .line 105
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 61
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    return v1

    .line 97
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 100
    .local v2, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub;->availabilityChanged(Z)V

    .line 101
    return v1

    .line 87
    .end local v2    # "_arg0":Z
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 92
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub;->messageSendFail(Ljava/lang/String;I)V

    .line 93
    return v1

    .line 79
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 82
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub;->messageSent(Ljava/lang/String;)V

    .line 83
    return v1

    .line 69
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 73
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 74
    .local v3, "_arg1":[B
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub;->messageReceived(I[B)V

    .line 75
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
