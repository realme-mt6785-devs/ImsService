.class public abstract Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;
.super Landroid/os/Binder;
.source "IMultiWindowManager.java"

# interfaces
.implements Lcom/mediatek/common/multiwindow/IMultiWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/multiwindow/IMultiWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.common.multiwindow.IMultiWindowManager"

.field static final TRANSACTION_activityCreated:I = 0x1e

.field static final TRANSACTION_addConfigNotChangePkg:I = 0x1a

.field static final TRANSACTION_addDisableFloatPkg:I = 0x19

.field static final TRANSACTION_addMiniMaxRestartPkg:I = 0x1b

.field static final TRANSACTION_appErrorHandling:I = 0x1c

.field static final TRANSACTION_closeWindow:I = 0x2

.field static final TRANSACTION_enableFocusedFrame:I = 0xe

.field static final TRANSACTION_getDisableFloatComponentList:I = 0x16

.field static final TRANSACTION_getDisableFloatPkgList:I = 0x15

.field static final TRANSACTION_isFloatingStack:I = 0x7

.field static final TRANSACTION_isInMiniMax:I = 0xb

.field static final TRANSACTION_isStickStack:I = 0xa

.field static final TRANSACTION_isSticky:I = 0x1d

.field static final TRANSACTION_matchConfigChangeList:I = 0x18

.field static final TRANSACTION_matchConfigNotChangeList:I = 0x11

.field static final TRANSACTION_matchDisableFloatActivityList:I = 0x13

.field static final TRANSACTION_matchDisableFloatPkgList:I = 0x12

.field static final TRANSACTION_matchDisableFloatWinList:I = 0x14

.field static final TRANSACTION_matchMinimaxRestartList:I = 0x17

.field static final TRANSACTION_miniMaxTask:I = 0xf

.field static final TRANSACTION_moveActivityTaskToFront:I = 0x1

.field static final TRANSACTION_moveFloatingWindow:I = 0xc

.field static final TRANSACTION_resizeFloatingWindow:I = 0xd

.field static final TRANSACTION_restoreWindow:I = 0x3

.field static final TRANSACTION_setAMSCallback:I = 0x4

.field static final TRANSACTION_setFloatingStack:I = 0x8

.field static final TRANSACTION_setSystemUiCallback:I = 0x5

.field static final TRANSACTION_setWMSCallback:I = 0x9

.field static final TRANSACTION_showRestoreButton:I = 0x10

.field static final TRANSACTION_stickWindow:I = 0x6

.field static final TRANSACTION_taskAdded:I = 0x1f

.field static final TRANSACTION_taskRemoved:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 145
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 146
    const-string v0, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 154
    if-nez p0, :cond_0

    .line 155
    const/4 v0, 0x0

    return-object v0

    .line 157
    :cond_0
    const-string v0, "com.mediatek.common.multiwindow.IMultiWindowManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 158
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    if-eqz v1, :cond_1

    .line 159
    move-object v1, v0

    check-cast v1, Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    return-object v1

    .line 161
    :cond_1
    new-instance v1, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/common/multiwindow/IMultiWindowManager;
    .locals 1

    .line 1206
    sget-object v0, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/common/multiwindow/IMultiWindowManager;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    .line 1196
    sget-object v0, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    if-nez v0, :cond_1

    .line 1199
    if-eqz p0, :cond_0

    .line 1200
    sput-object p0, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/multiwindow/IMultiWindowManager;

    .line 1201
    const/4 v0, 0x1

    return v0

    .line 1203
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1197
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 165
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    const-string v0, "com.mediatek.common.multiwindow.IMultiWindowManager"

    .line 170
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_6

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 490
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 481
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 484
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->taskRemoved(I)V

    .line 485
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    return v2

    .line 472
    .end local v1    # "_arg0":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 475
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->taskAdded(I)V

    .line 476
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    return v2

    .line 463
    .end local v1    # "_arg0":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 466
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->activityCreated(Landroid/os/IBinder;)V

    .line 467
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    return v2

    .line 453
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 456
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->isSticky(Landroid/os/IBinder;)Z

    move-result v3

    .line 457
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    return v2

    .line 439
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 443
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    .line 445
    .local v4, "_arg1":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v1, v2

    .line 446
    .local v1, "_arg2":Z
    :cond_1
    invoke-virtual {p0, v3, v4, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->appErrorHandling(Ljava/lang/String;ZZ)I

    move-result v5

    .line 447
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    return v2

    .line 430
    .end local v1    # "_arg2":Z
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Z
    .end local v5    # "_result":I
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->addMiniMaxRestartPkg(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    return v2

    .line 421
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 424
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->addConfigNotChangePkg(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    return v2

    .line 412
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 415
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->addDisableFloatPkg(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    return v2

    .line 402
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 405
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->matchConfigChangeList(Ljava/lang/String;)Z

    move-result v3

    .line 406
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    return v2

    .line 392
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 395
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->matchMinimaxRestartList(Ljava/lang/String;)Z

    move-result v3

    .line 396
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    return v2

    .line 384
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->getDisableFloatComponentList()Ljava/util/List;

    move-result-object v1

    .line 386
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 388
    return v2

    .line 376
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->getDisableFloatPkgList()Ljava/util/List;

    move-result-object v1

    .line 378
    .restart local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 380
    return v2

    .line 366
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->matchDisableFloatWinList(Ljava/lang/String;)Z

    move-result v3

    .line 370
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    return v2

    .line 356
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 359
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->matchDisableFloatActivityList(Ljava/lang/String;)Z

    move-result v3

    .line 360
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    return v2

    .line 346
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 349
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->matchDisableFloatPkgList(Ljava/lang/String;)Z

    move-result v3

    .line 350
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    return v2

    .line 336
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 339
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->matchConfigNotChangeList(Ljava/lang/String;)Z

    move-result v3

    .line 340
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    return v2

    .line 327
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 330
    .local v1, "_arg0":Z
    :cond_2
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->showRestoreButton(Z)V

    .line 331
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    return v2

    .line 318
    .end local v1    # "_arg0":Z
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 321
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->miniMaxTask(I)V

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    return v2

    .line 309
    .end local v1    # "_arg0":I
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 312
    .local v1, "_arg0":Z
    :cond_3
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->enableFocusedFrame(Z)V

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    return v2

    .line 296
    .end local v1    # "_arg0":Z
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 300
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 302
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 303
    .local v4, "_arg2":I
    invoke-virtual {p0, v1, v3, v4}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->resizeFloatingWindow(III)V

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    return v2

    .line 285
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 289
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 290
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->moveFloatingWindow(II)V

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    return v2

    .line 275
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 278
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->isInMiniMax(I)Z

    move-result v3

    .line 279
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    return v2

    .line 265
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 268
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->isStickStack(I)Z

    move-result v3

    .line 269
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    return v2

    .line 256
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/common/multiwindow/IMWWmsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/multiwindow/IMWWmsCallback;

    move-result-object v1

    .line 259
    .local v1, "_arg0":Lcom/mediatek/common/multiwindow/IMWWmsCallback;
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->setWMSCallback(Lcom/mediatek/common/multiwindow/IMWWmsCallback;)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    return v2

    .line 247
    .end local v1    # "_arg0":Lcom/mediatek/common/multiwindow/IMWWmsCallback;
    :pswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 250
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->setFloatingStack(I)V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    return v2

    .line 237
    .end local v1    # "_arg0":I
    :pswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 240
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->isFloatingStack(I)Z

    move-result v3

    .line 241
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    return v2

    .line 226
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 230
    .local v3, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    .line 231
    .local v1, "_arg1":Z
    :cond_4
    invoke-virtual {p0, v3, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->stickWindow(Landroid/os/IBinder;Z)V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    return v2

    .line 217
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg0":Landroid/os/IBinder;
    :pswitch_1b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/common/multiwindow/IMWSystemUiCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/multiwindow/IMWSystemUiCallback;

    move-result-object v1

    .line 220
    .local v1, "_arg0":Lcom/mediatek/common/multiwindow/IMWSystemUiCallback;
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->setSystemUiCallback(Lcom/mediatek/common/multiwindow/IMWSystemUiCallback;)V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    return v2

    .line 208
    .end local v1    # "_arg0":Lcom/mediatek/common/multiwindow/IMWSystemUiCallback;
    :pswitch_1c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/common/multiwindow/IMWAmsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/multiwindow/IMWAmsCallback;

    move-result-object v1

    .line 211
    .local v1, "_arg0":Lcom/mediatek/common/multiwindow/IMWAmsCallback;
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->setAMSCallback(Lcom/mediatek/common/multiwindow/IMWAmsCallback;)V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    return v2

    .line 197
    .end local v1    # "_arg0":Lcom/mediatek/common/multiwindow/IMWAmsCallback;
    :pswitch_1d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 201
    .restart local v3    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    move v1, v2

    .line 202
    .local v1, "_arg1":Z
    :cond_5
    invoke-virtual {p0, v3, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->restoreWindow(Landroid/os/IBinder;Z)V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    return v2

    .line 188
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg0":Landroid/os/IBinder;
    :pswitch_1e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 191
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->closeWindow(Landroid/os/IBinder;)V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    return v2

    .line 179
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :pswitch_1f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 182
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Lcom/mediatek/common/multiwindow/IMultiWindowManager$Stub;->moveActivityTaskToFront(Landroid/os/IBinder;)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    return v2

    .line 174
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
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
