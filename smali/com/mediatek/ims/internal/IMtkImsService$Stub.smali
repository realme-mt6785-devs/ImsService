.class public abstract Lcom/mediatek/ims/internal/IMtkImsService$Stub;
.super Landroid/os/Binder;
.source "IMtkImsService.java"

# interfaces
.implements Lcom/mediatek/ims/internal/IMtkImsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/IMtkImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.ims.internal.IMtkImsService"

.field static final TRANSACTION_UpdateImsState:I = 0x9

.field static final TRANSACTION_addImsSmsListener:I = 0x10

.field static final TRANSACTION_changeEnabledCapabilities:I = 0x17

.field static final TRANSACTION_createMtkCallSession:I = 0x2

.field static final TRANSACTION_deregisterIms:I = 0x7

.field static final TRANSACTION_fallBackAospMTFlow:I = 0x15

.field static final TRANSACTION_getConfigInterfaceEx:I = 0xa

.field static final TRANSACTION_getCurrentCallCount:I = 0xe

.field static final TRANSACTION_getImsNetworkState:I = 0xf

.field static final TRANSACTION_getImsRegUriType:I = 0x5

.field static final TRANSACTION_getImsState:I = 0x4

.field static final TRANSACTION_getModemMultiImsCount:I = 0xd

.field static final TRANSACTION_getMtkUtInterface:I = 0xb

.field static final TRANSACTION_getPendingMtkCallSession:I = 0x3

.field static final TRANSACTION_getWfcRegErrorCode:I = 0x19

.field static final TRANSACTION_hangupAllCall:I = 0x6

.field static final TRANSACTION_isCameraAvailable:I = 0x13

.field static final TRANSACTION_registerProprietaryImsListener:I = 0x12

.field static final TRANSACTION_runGbaAuthentication:I = 0xc

.field static final TRANSACTION_sendSms:I = 0x11

.field static final TRANSACTION_setCallIndication:I = 0x1

.field static final TRANSACTION_setImsPreCallInfo:I = 0x1a

.field static final TRANSACTION_setMTRedirect:I = 0x14

.field static final TRANSACTION_setSipHeader:I = 0x16

.field static final TRANSACTION_setWfcRegErrorCode:I = 0x18

.field static final TRANSACTION_updateRadioState:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 197
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 198
    const-string v0, "com.mediatek.ims.internal.IMtkImsService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 206
    if-nez p0, :cond_0

    .line 207
    const/4 v0, 0x0

    return-object v0

    .line 209
    :cond_0
    const-string v0, "com.mediatek.ims.internal.IMtkImsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 210
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/ims/internal/IMtkImsService;

    if-eqz v1, :cond_1

    .line 211
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/internal/IMtkImsService;

    return-object v1

    .line 213
    :cond_1
    new-instance v1, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/ims/internal/IMtkImsService;
    .locals 1

    .line 1273
    sget-object v0, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/ims/internal/IMtkImsService;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/ims/internal/IMtkImsService;

    .line 1263
    sget-object v0, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsService;

    if-nez v0, :cond_1

    .line 1266
    if-eqz p0, :cond_0

    .line 1267
    sput-object p0, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IMtkImsService;

    .line 1268
    const/4 v0, 0x1

    return v0

    .line 1270
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1264
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 217
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 20
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "com.mediatek.ims.internal.IMtkImsService"

    .line 222
    .local v12, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v13, 0x1

    if-eq v9, v0, :cond_c

    const/4 v0, 0x0

    const/4 v6, 0x0

    packed-switch v9, :pswitch_data_0

    .line 561
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 541
    :pswitch_0
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 545
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 547
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 549
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 551
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 552
    .local v6, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v10, v6}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v17

    .line 554
    .local v17, "_arg4":Ljava/util/Map;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v18

    .line 555
    .local v18, "_arg5":[Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v7

    move v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v19, v6

    .end local v6    # "cl":Ljava/lang/ClassLoader;
    .local v19, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->setImsPreCallInfo(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    .line 556
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    return v13

    .line 531
    .end local v7    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":Ljava/util/Map;
    .end local v18    # "_arg5":[Ljava/lang/String;
    .end local v19    # "cl":Ljava/lang/ClassLoader;
    :pswitch_1
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 534
    .local v0, "_arg0":I
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getWfcRegErrorCode(I)I

    move-result v1

    .line 535
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    return v13

    .line 520
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_2
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 524
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 525
    .local v1, "_arg1":I
    invoke-virtual {v8, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->setWfcRegErrorCode(II)V

    .line 526
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    return v13

    .line 504
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_3
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 508
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    sget-object v1, Landroid/telephony/ims/feature/CapabilityChangeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    .local v1, "_arg1":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    goto :goto_0

    .line 512
    .end local v1    # "_arg1":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    :cond_0
    const/4 v1, 0x0

    .line 514
    .restart local v1    # "_arg1":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    :goto_0
    invoke-virtual {v8, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->changeEnabledCapabilities(ILandroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 515
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    return v13

    .line 490
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    :pswitch_4
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 494
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 495
    .local v1, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    .line 497
    .local v2, "_arg1":Ljava/util/Map;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 498
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v8, v0, v2, v3}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->setSipHeader(ILjava/util/Map;Ljava/lang/String;)V

    .line 499
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    return v13

    .line 481
    .end local v0    # "_arg0":I
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v2    # "_arg1":Ljava/util/Map;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 484
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->fallBackAospMTFlow(I)V

    .line 485
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    return v13

    .line 470
    .end local v0    # "_arg0":I
    :pswitch_6
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 474
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v6, v13

    :cond_1
    move v1, v6

    .line 475
    .local v1, "_arg1":Z
    invoke-virtual {v8, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->setMTRedirect(IZ)V

    .line 476
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    return v13

    .line 462
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_7
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->isCameraAvailable()Z

    move-result v0

    .line 464
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 466
    return v13

    .line 447
    .end local v0    # "_result":Z
    :pswitch_8
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 451
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v1

    .line 453
    .local v1, "_arg1":Lcom/android/ims/internal/IImsRegistrationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/internal/IMtkImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;

    move-result-object v2

    .line 455
    .local v2, "_arg2":Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v6, v13

    :cond_2
    move v3, v6

    .line 456
    .local v3, "_arg3":Z
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->registerProprietaryImsListener(ILcom/android/ims/internal/IImsRegistrationListener;Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;Z)V

    .line 457
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    return v13

    .line 426
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/ims/internal/IImsRegistrationListener;
    .end local v2    # "_arg2":Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;
    .end local v3    # "_arg3":Z
    :pswitch_9
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 430
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 432
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 434
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 436
    .local v17, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 438
    .local v18, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v6, v13

    .line 440
    .local v6, "_arg5":Z
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v19

    .line 441
    .local v19, "_arg6":[B
    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->sendSms(IIILjava/lang/String;Ljava/lang/String;Z[B)V

    .line 442
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    return v13

    .line 415
    .end local v6    # "_arg5":Z
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":Ljava/lang/String;
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg6":[B
    :pswitch_a
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 419
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ims/aidl/IImsSmsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsSmsListener;

    move-result-object v1

    .line 420
    .local v1, "_arg1":Landroid/telephony/ims/aidl/IImsSmsListener;
    invoke-virtual {v8, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->addImsSmsListener(ILandroid/telephony/ims/aidl/IImsSmsListener;)V

    .line 421
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    return v13

    .line 405
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/ims/aidl/IImsSmsListener;
    :pswitch_b
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 408
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getImsNetworkState(I)[I

    move-result-object v1

    .line 409
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 411
    return v13

    .line 395
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[I
    :pswitch_c
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 398
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getCurrentCallCount(I)I

    move-result v1

    .line 399
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    return v13

    .line 387
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_d
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getModemMultiImsCount()I

    move-result v0

    .line 389
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    return v13

    .line 363
    .end local v0    # "_result":I
    :pswitch_e
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 367
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .line 369
    .local v14, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v3, v13

    goto :goto_1

    :cond_4
    move v3, v6

    .line 371
    .local v3, "_arg2":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 373
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 374
    .local v16, "_arg4":I
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->runGbaAuthentication(Ljava/lang/String;[BZII)Lcom/mediatek/gba/NafSessionKey;

    move-result-object v0

    .line 375
    .local v0, "_result":Lcom/mediatek/gba/NafSessionKey;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    if-eqz v0, :cond_5

    .line 377
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    invoke-virtual {v0, v11, v13}, Lcom/mediatek/gba/NafSessionKey;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 381
    :cond_5
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    :goto_2
    return v13

    .line 353
    .end local v0    # "_result":Lcom/mediatek/gba/NafSessionKey;
    .end local v3    # "_arg2":Z
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":[B
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_f
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 356
    .local v1, "_arg0":I
    invoke-virtual {v8, v1}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getMtkUtInterface(I)Lcom/mediatek/ims/internal/IMtkImsUt;

    move-result-object v2

    .line 357
    .local v2, "_result":Lcom/mediatek/ims/internal/IMtkImsUt;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    if-eqz v2, :cond_6

    invoke-interface {v2}, Lcom/mediatek/ims/internal/IMtkImsUt;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_6
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 359
    return v13

    .line 343
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Lcom/mediatek/ims/internal/IMtkImsUt;
    :pswitch_10
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 346
    .restart local v1    # "_arg0":I
    invoke-virtual {v8, v1}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getConfigInterfaceEx(I)Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v2

    .line 347
    .local v2, "_result":Lcom/mediatek/ims/internal/IMtkImsConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    if-eqz v2, :cond_7

    invoke-interface {v2}, Lcom/mediatek/ims/internal/IMtkImsConfig;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_7
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 349
    return v13

    .line 334
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Lcom/mediatek/ims/internal/IMtkImsConfig;
    :pswitch_11
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 337
    .local v0, "_arg0":I
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->UpdateImsState(I)V

    .line 338
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    return v13

    .line 323
    .end local v0    # "_arg0":I
    :pswitch_12
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 327
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 328
    .local v1, "_arg1":I
    invoke-virtual {v8, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->updateRadioState(II)V

    .line 329
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    return v13

    .line 314
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_13
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 317
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->deregisterIms(I)V

    .line 318
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    return v13

    .line 305
    .end local v0    # "_arg0":I
    :pswitch_14
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 308
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->hangupAllCall(I)V

    .line 309
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    return v13

    .line 295
    .end local v0    # "_arg0":I
    :pswitch_15
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 298
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getImsRegUriType(I)I

    move-result v1

    .line 299
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    return v13

    .line 285
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_16
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 288
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getImsState(I)I

    move-result v1

    .line 289
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    return v13

    .line 273
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_17
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 277
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v8, v1, v2}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getPendingMtkCallSession(ILjava/lang/String;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v3

    .line 279
    .local v3, "_result":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    if-eqz v3, :cond_8

    invoke-interface {v3}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_8
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 281
    return v13

    .line 252
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :pswitch_18
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 256
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    .line 257
    sget-object v2, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsCallProfile;

    .local v2, "_arg1":Landroid/telephony/ims/ImsCallProfile;
    goto :goto_3

    .line 260
    .end local v2    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :cond_9
    const/4 v2, 0x0

    .line 263
    .restart local v2    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v3

    .line 265
    .local v3, "_arg2":Landroid/telephony/ims/aidl/IImsCallSessionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v4

    .line 266
    .local v4, "_arg3":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {v8, v1, v2, v3, v4}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->createMtkCallSession(ILandroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/android/ims/internal/IImsCallSession;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v5

    .line 267
    .local v5, "_result":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    if-eqz v5, :cond_a

    invoke-interface {v5}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_a
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 269
    return v13

    .line 231
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    .end local v3    # "_arg2":Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .end local v4    # "_arg3":Lcom/android/ims/internal/IImsCallSession;
    .end local v5    # "_result":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :pswitch_19
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 235
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 237
    .local v15, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 239
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 241
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 243
    .restart local v18    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    move v6, v13

    .line 245
    .restart local v6    # "_arg5":Z
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 246
    .local v19, "_arg6":I
    move-object/from16 v0, p0

    move v1, v14

    move-object v2, v15

    move-object/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v18

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->setCallIndication(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V

    .line 247
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    return v13

    .line 226
    .end local v6    # "_arg5":Z
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg6":I
    :cond_c
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    return v13

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
