.class public abstract Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub;
.super Landroid/os/Binder;
.source "IMtkSubscribeResponseCallback.java"

# interfaces
.implements Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onCommandError:I = 0x1

.field static final TRANSACTION_onNetworkRespHeader:I = 0x3

.field static final TRANSACTION_onNetworkResponse:I = 0x2

.field static final TRANSACTION_onNotifyCapabilitiesUpdate:I = 0x4

.field static final TRANSACTION_onResourceTerminated:I = 0x5

.field static final TRANSACTION_onTerminated:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "com.mediatek.ims.uce.aidl.IMtkSubscribeResponseCallback"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_0
    const-string v0, "com.mediatek.ims.uce.aidl.IMtkSubscribeResponseCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;

    if-eqz v1, :cond_1

    .line 57
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;

    return-object v1

    .line 59
    :cond_1
    new-instance v1, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;
    .locals 1

    .line 310
    sget-object v0, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;

    .line 300
    sget-object v0, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;

    if-nez v0, :cond_1

    .line 303
    if-eqz p0, :cond_0

    .line 304
    sput-object p0, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;

    .line 305
    const/4 v0, 0x1

    return v0

    .line 307
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 301
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 63
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    const-string v8, "com.mediatek.ims.uce.aidl.IMtkSubscribeResponseCallback"

    .line 68
    .local v8, "descriptor":Ljava/lang/String;
    const/4 v9, 0x1

    packed-switch p1, :pswitch_data_0

    .line 76
    move-object/from16 v10, p3

    packed-switch p1, :pswitch_data_1

    .line 150
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 72
    :pswitch_0
    move-object/from16 v10, p3

    invoke-virtual {v10, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    return v9

    .line 138
    :pswitch_1
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 142
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 145
    .local v2, "_arg2":J
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub;->onTerminated(ILjava/lang/String;J)V

    .line 146
    return v9

    .line 128
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":J
    :pswitch_2
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 132
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/telephony/ims/RcsContactTerminatedReason;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 133
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactTerminatedReason;>;"
    invoke-virtual {v6, v0, v1}, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub;->onResourceTerminated(ILjava/util/List;)V

    .line 134
    return v9

    .line 118
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactTerminatedReason;>;"
    :pswitch_3
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 122
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 123
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v6, v0, v1}, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub;->onNotifyCapabilitiesUpdate(ILjava/util/List;)V

    .line 124
    return v9

    .line 102
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 106
    .local v11, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 108
    .local v12, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 110
    .local v13, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 112
    .local v14, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 113
    .local v15, "_arg4":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move-object v3, v13

    move v4, v14

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub;->onNetworkRespHeader(IILjava/lang/String;ILjava/lang/String;)V

    .line 114
    return v9

    .line 90
    .end local v11    # "_arg0":I
    .end local v12    # "_arg1":I
    .end local v13    # "_arg2":Ljava/lang/String;
    .end local v14    # "_arg3":I
    .end local v15    # "_arg4":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 94
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 96
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2}, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub;->onNetworkResponse(IILjava/lang/String;)V

    .line 98
    return v9

    .line 80
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 84
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 85
    .restart local v1    # "_arg1":I
    invoke-virtual {v6, v0, v1}, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub;->onCommandError(II)V

    .line 86
    return v9

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
