.class public abstract Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;
.super Landroid/os/Binder;
.source "IMtkImsCallSessionListener.java"

# interfaces
.implements Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.ims.internal.IMtkImsCallSessionListener"

.field static final TRANSACTION_callSessionBusy:I = 0x7

.field static final TRANSACTION_callSessionCalling:I = 0x8

.field static final TRANSACTION_callSessionMergeComplete:I = 0x4

.field static final TRANSACTION_callSessionMergeStarted:I = 0x3

.field static final TRANSACTION_callSessionRedialEcc:I = 0x5

.field static final TRANSACTION_callSessionRinging:I = 0x6

.field static final TRANSACTION_callSessionRttEventReceived:I = 0x2

.field static final TRANSACTION_callSessionTextCapabilityChanged:I = 0x1

.field static final TRANSACTION_callSessionVideoRingtoneEventReceived:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "com.mediatek.ims.internal.IMtkImsCallSessionListener"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 57
    if-nez p0, :cond_0

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_0
    const-string v0, "com.mediatek.ims.internal.IMtkImsCallSessionListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    if-eqz v1, :cond_1

    .line 62
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    return-object v1

    .line 64
    :cond_1
    new-instance v1, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;
    .locals 1

    .line 433
    sget-object v0, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    .line 423
    sget-object v0, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    if-nez v0, :cond_1

    .line 426
    if-eqz p0, :cond_0

    .line 427
    sput-object p0, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;

    .line 428
    const/4 v0, 0x1

    return v0

    .line 430
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 424
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 68
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

    .line 72
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "com.mediatek.ims.internal.IMtkImsCallSessionListener"

    .line 73
    .local v9, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v10, 0x1

    if-eq v7, v0, :cond_3

    packed-switch v7, :pswitch_data_0

    .line 195
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 182
    :pswitch_0
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 186
    .local v0, "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 188
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionVideoRingtoneEventReceived(Lcom/mediatek/ims/internal/IMtkImsCallSession;ILjava/lang/String;)V

    .line 190
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    return v10

    .line 173
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 176
    .restart local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual {v6, v0}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionCalling(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V

    .line 177
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    return v10

    .line 164
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :pswitch_2
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 167
    .restart local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual {v6, v0}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionBusy(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V

    .line 168
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    return v10

    .line 148
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :pswitch_3
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 152
    .restart local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    sget-object v1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsCallProfile;

    .local v1, "_arg1":Landroid/telephony/ims/ImsCallProfile;
    goto :goto_0

    .line 156
    .end local v1    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :cond_0
    const/4 v1, 0x0

    .line 158
    .restart local v1    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :goto_0
    invoke-virtual {v6, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionRinging(Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 159
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    return v10

    .line 137
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .end local v1    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_4
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 141
    .restart local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v10

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 142
    .local v1, "_arg1":Z
    :goto_1
    invoke-virtual {v6, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionRedialEcc(Lcom/mediatek/ims/internal/IMtkImsCallSession;Z)V

    .line 143
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    return v10

    .line 128
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .end local v1    # "_arg1":Z
    :pswitch_5
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 131
    .restart local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual {v6, v0}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionMergeComplete(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V

    .line 132
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    return v10

    .line 110
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :pswitch_6
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 114
    .restart local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v1

    .line 116
    .local v1, "_arg1":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    .local v2, "_arg2":Landroid/telephony/ims/ImsCallProfile;
    goto :goto_2

    .line 120
    .end local v2    # "_arg2":Landroid/telephony/ims/ImsCallProfile;
    :cond_2
    const/4 v2, 0x0

    .line 122
    .restart local v2    # "_arg2":Landroid/telephony/ims/ImsCallProfile;
    :goto_2
    invoke-virtual {v6, v0, v1, v2}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionMergeStarted(Lcom/mediatek/ims/internal/IMtkImsCallSession;Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 123
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    return v10

    .line 99
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .end local v1    # "_arg1":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .end local v2    # "_arg2":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_7
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v0

    .line 103
    .restart local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 104
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionRttEventReceived(Lcom/mediatek/ims/internal/IMtkImsCallSession;I)V

    .line 105
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    return v10

    .line 82
    .end local v0    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .end local v1    # "_arg1":I
    :pswitch_8
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v11

    .line 86
    .local v11, "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 88
    .local v12, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 90
    .local v13, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 92
    .local v14, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 93
    .local v15, "_arg4":I
    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;->callSessionTextCapabilityChanged(Lcom/mediatek/ims/internal/IMtkImsCallSession;IIII)V

    .line 94
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    return v10

    .line 77
    .end local v11    # "_arg0":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .end local v12    # "_arg1":I
    .end local v13    # "_arg2":I
    .end local v14    # "_arg3":I
    .end local v15    # "_arg4":I
    :cond_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    return v10

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
