.class public abstract Lcom/mediatek/ims/uce/aidl/IMtkPresenceService$Stub;
.super Landroid/os/Binder;
.source "IMtkPresenceService.java"

# interfaces
.implements Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/uce/aidl/IMtkPresenceService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getContactListCap:I = 0x2

.field static final TRANSACTION_publishMyCap:I = 0x1

.field static final TRANSACTION_setRcsCapabilityExchangeAvailable:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 30
    const-string v0, "com.mediatek.ims.uce.aidl.IMtkPresenceService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/uce/aidl/IMtkPresenceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 38
    if-nez p0, :cond_0

    .line 39
    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_0
    const-string v0, "com.mediatek.ims.uce.aidl.IMtkPresenceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 42
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;

    if-eqz v1, :cond_1

    .line 43
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;

    return-object v1

    .line 45
    :cond_1
    new-instance v1, Lcom/mediatek/ims/uce/aidl/IMtkPresenceService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/uce/aidl/IMtkPresenceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;
    .locals 1

    .line 209
    sget-object v0, Lcom/mediatek/ims/uce/aidl/IMtkPresenceService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;

    .line 199
    sget-object v0, Lcom/mediatek/ims/uce/aidl/IMtkPresenceService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;

    if-nez v0, :cond_1

    .line 202
    if-eqz p0, :cond_0

    .line 203
    sput-object p0, Lcom/mediatek/ims/uce/aidl/IMtkPresenceService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;

    .line 204
    const/4 v0, 0x1

    return v0

    .line 206
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 200
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 49
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

    .line 53
    const-string v0, "com.mediatek.ims.uce.aidl.IMtkPresenceService"

    .line 54
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 62
    packed-switch p1, :pswitch_data_1

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 58
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return v1

    .line 92
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 96
    .local v2, "_arg0":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    move-result-object v3

    .line 97
    .local v3, "_arg1":Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/ims/uce/aidl/IMtkPresenceService$Stub;->setRcsCapabilityExchangeAvailable(ZLandroid/telephony/ims/aidl/ICapabilityExchangeEventListener;)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    return v1

    .line 79
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 83
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 85
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;

    move-result-object v4

    .line 86
    .local v4, "_arg2":Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;
    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/ims/uce/aidl/IMtkPresenceService$Stub;->getContactListCap(Ljava/util/List;ILcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    return v1

    .line 66
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 72
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback;

    move-result-object v4

    .line 73
    .local v4, "_arg2":Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback;
    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/ims/uce/aidl/IMtkPresenceService$Stub;->publishMyCap(Ljava/lang/String;ILcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    return v1

    nop

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
