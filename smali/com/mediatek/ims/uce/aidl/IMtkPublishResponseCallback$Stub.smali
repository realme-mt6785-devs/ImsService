.class public abstract Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback$Stub;
.super Landroid/os/Binder;
.source "IMtkPublishResponseCallback.java"

# interfaces
.implements Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onCommandError:I = 0x1

.field static final TRANSACTION_onNetworkRespHeader:I = 0x3

.field static final TRANSACTION_onNetworkResponse:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 35
    const-string v0, "com.mediatek.ims.uce.aidl.IMtkPublishResponseCallback"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 43
    if-nez p0, :cond_0

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_0
    const-string v0, "com.mediatek.ims.uce.aidl.IMtkPublishResponseCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 47
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback;

    if-eqz v1, :cond_1

    .line 48
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback;

    return-object v1

    .line 50
    :cond_1
    new-instance v1, Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback;
    .locals 1

    .line 208
    sget-object v0, Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback;

    .line 198
    sget-object v0, Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback;

    if-nez v0, :cond_1

    .line 201
    if-eqz p0, :cond_0

    .line 202
    sput-object p0, Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback;

    .line 203
    const/4 v0, 0x1

    return v0

    .line 205
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 199
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 54
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

    .line 58
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    const-string v8, "com.mediatek.ims.uce.aidl.IMtkPublishResponseCallback"

    .line 59
    .local v8, "descriptor":Ljava/lang/String;
    const/4 v9, 0x1

    packed-switch p1, :pswitch_data_0

    .line 67
    move-object/from16 v10, p3

    packed-switch p1, :pswitch_data_1

    .line 109
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 63
    :pswitch_0
    move-object/from16 v10, p3

    invoke-virtual {v10, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    return v9

    .line 93
    :pswitch_1
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 97
    .local v11, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 99
    .local v12, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 101
    .local v13, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 103
    .local v14, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 104
    .local v15, "_arg4":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move-object v3, v13

    move v4, v14

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback$Stub;->onNetworkRespHeader(IILjava/lang/String;ILjava/lang/String;)V

    .line 105
    return v9

    .line 81
    .end local v11    # "_arg0":I
    .end local v12    # "_arg1":I
    .end local v13    # "_arg2":Ljava/lang/String;
    .end local v14    # "_arg3":I
    .end local v15    # "_arg4":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 87
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2}, Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback$Stub;->onNetworkResponse(IILjava/lang/String;)V

    .line 89
    return v9

    .line 71
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {v7, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 75
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 76
    .restart local v1    # "_arg1":I
    invoke-virtual {v6, v0, v1}, Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback$Stub;->onCommandError(II)V

    .line 77
    return v9

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
