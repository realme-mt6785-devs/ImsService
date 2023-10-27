.class public abstract Lcom/mediatek/ims/rcsua/service/IRcsUaClient$Stub;
.super Landroid/os/Binder;
.source "IRcsUaClient.java"

# interfaces
.implements Lcom/mediatek/ims/rcsua/service/IRcsUaClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcsua/service/IRcsUaClient$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getRegistrationInfo:I = 0x3

.field static final TRANSACTION_openSipChannel:I = 0x1

.field static final TRANSACTION_resumeImsDeregistration:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 32
    const-string v0, "com.mediatek.ims.rcsua.service.IRcsUaClient"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 40
    if-nez p0, :cond_0

    .line 41
    const/4 v0, 0x0

    return-object v0

    .line 43
    :cond_0
    const-string v0, "com.mediatek.ims.rcsua.service.IRcsUaClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 44
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    if-eqz v1, :cond_1

    .line 45
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    return-object v1

    .line 47
    :cond_1
    new-instance v1, Lcom/mediatek/ims/rcsua/service/IRcsUaClient$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
    .locals 1

    .line 222
    sget-object v0, Lcom/mediatek/ims/rcsua/service/IRcsUaClient$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/ims/rcsua/service/IRcsUaClient;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    .line 212
    sget-object v0, Lcom/mediatek/ims/rcsua/service/IRcsUaClient$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    if-nez v0, :cond_1

    .line 215
    if-eqz p0, :cond_0

    .line 216
    sput-object p0, Lcom/mediatek/ims/rcsua/service/IRcsUaClient$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    .line 217
    const/4 v0, 0x1

    return v0

    .line 219
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 213
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 51
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    const-string v0, "com.mediatek.ims.rcsua.service.IRcsUaClient"

    .line 56
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 64
    packed-switch p1, :pswitch_data_1

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 60
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    return v1

    .line 96
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaClient$Stub;->getRegistrationInfo()Lcom/mediatek/ims/rcsua/RegistrationInfo;

    move-result-object v2

    .line 98
    .local v2, "_result":Lcom/mediatek/ims/rcsua/RegistrationInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v2, :cond_0

    .line 100
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    invoke-virtual {v2, p3, v1}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 104
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    :goto_0
    return v1

    .line 89
    .end local v2    # "_result":Lcom/mediatek/ims/rcsua/RegistrationInfo;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaClient$Stub;->resumeImsDeregistration()V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    return v1

    .line 68
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/ISipEventCallback;

    move-result-object v2

    .line 72
    .local v2, "_arg0":Lcom/mediatek/ims/rcsua/service/ISipEventCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 74
    .local v3, "_arg1":I
    new-instance v4, Lcom/mediatek/ims/rcsua/service/RcsUaException;

    invoke-direct {v4}, Lcom/mediatek/ims/rcsua/service/RcsUaException;-><init>()V

    .line 75
    .local v4, "_arg2":Lcom/mediatek/ims/rcsua/service/RcsUaException;
    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/ims/rcsua/service/IRcsUaClient$Stub;->openSipChannel(Lcom/mediatek/ims/rcsua/service/ISipEventCallback;ILcom/mediatek/ims/rcsua/service/RcsUaException;)Lcom/mediatek/ims/rcsua/service/ISipChannel;

    move-result-object v5

    .line 76
    .local v5, "_result":Lcom/mediatek/ims/rcsua/service/ISipChannel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v5, :cond_1

    invoke-interface {v5}, Lcom/mediatek/ims/rcsua/service/ISipChannel;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 78
    nop

    .line 79
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    invoke-virtual {v4, p3, v1}, Lcom/mediatek/ims/rcsua/service/RcsUaException;->writeToParcel(Landroid/os/Parcel;I)V

    .line 85
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
