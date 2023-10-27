.class public abstract Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;
.super Landroid/os/Binder;
.source "IRcsUaService.java"

# interfaces
.implements Lcom/mediatek/ims/rcsua/service/IRcsUaService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcsua/service/IRcsUaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_activate:I = 0x1

.field static final TRANSACTION_addCapability:I = 0x8

.field static final TRANSACTION_clearAcsConfiguration:I = 0x1c

.field static final TRANSACTION_deactivate:I = 0x2

.field static final TRANSACTION_getAcsConfigInt:I = 0x14

.field static final TRANSACTION_getAcsConfigString:I = 0x15

.field static final TRANSACTION_getAcsConfiguration:I = 0x13

.field static final TRANSACTION_getAcsSwitchState:I = 0x1a

.field static final TRANSACTION_getCapabilities:I = 0xf

.field static final TRANSACTION_getOptions:I = 0xe

.field static final TRANSACTION_isAcsConnected:I = 0x16

.field static final TRANSACTION_isActivated:I = 0x10

.field static final TRANSACTION_registerAcsCallback:I = 0x11

.field static final TRANSACTION_registerClient:I = 0xb

.field static final TRANSACTION_removeCapability:I = 0x9

.field static final TRANSACTION_setAcsProvisioningAddress:I = 0x1b

.field static final TRANSACTION_setAcsSwitchState:I = 0x18

.field static final TRANSACTION_setAcsonfiguration:I = 0x19

.field static final TRANSACTION_setOptions:I = 0xd

.field static final TRANSACTION_triggerAcsRequest:I = 0x17

.field static final TRANSACTION_triggerForceReregistration:I = 0x6

.field static final TRANSACTION_triggerReregistration:I = 0x3

.field static final TRANSACTION_triggerRestoration:I = 0x7

.field static final TRANSACTION_triggerRoiDeregistration:I = 0x4

.field static final TRANSACTION_triggerRoiRegistration:I = 0x5

.field static final TRANSACTION_unregisterAcsCallback:I = 0x12

.field static final TRANSACTION_unregisterClient:I = 0xc

.field static final TRANSACTION_updateCapabilities:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 116
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 117
    const-string v0, "com.mediatek.ims.rcsua.service.IRcsUaService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/IRcsUaService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 125
    if-nez p0, :cond_0

    .line 126
    const/4 v0, 0x0

    return-object v0

    .line 128
    :cond_0
    const-string v0, "com.mediatek.ims.rcsua.service.IRcsUaService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 129
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v1, :cond_1

    .line 130
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    return-object v1

    .line 132
    :cond_1
    new-instance v1, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaService;
    .locals 1

    .line 1164
    sget-object v0, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/ims/rcsua/service/IRcsUaService;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    .line 1154
    sget-object v0, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-nez v0, :cond_1

    .line 1157
    if-eqz p0, :cond_0

    .line 1158
    sput-object p0, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    .line 1159
    const/4 v0, 0x1

    return v0

    .line 1161
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1155
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 136
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

    .line 140
    const-string v0, "com.mediatek.ims.rcsua.service.IRcsUaService"

    .line 141
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 149
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_1

    .line 447
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 145
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    return v1

    .line 439
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->clearAcsConfiguration()Z

    move-result v2

    .line 441
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    return v1

    .line 429
    .end local v2    # "_result":Z
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 432
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->setAcsProvisioningAddress(Ljava/lang/String;)Z

    move-result v3

    .line 433
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    return v1

    .line 421
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getAcsSwitchState()Z

    move-result v2

    .line 423
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    return v1

    .line 406
    .end local v2    # "_result":Z
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 410
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 412
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 414
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 415
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->setAcsonfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    return v1

    .line 396
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    .line 399
    .local v2, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->setAcsSwitchState(Z)Z

    move-result v3

    .line 400
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    return v1

    .line 387
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 390
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->triggerAcsRequest(I)V

    .line 391
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    return v1

    .line 379
    .end local v2    # "_arg0":I
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->isAcsConnected()Z

    move-result v2

    .line 381
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    return v1

    .line 369
    .end local v2    # "_result":Z
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getAcsConfigString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 373
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 375
    return v1

    .line 359
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 362
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getAcsConfigInt(Ljava/lang/String;)I

    move-result v3

    .line 363
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    return v1

    .line 345
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getAcsConfiguration()Lcom/mediatek/ims/rcsua/AcsConfiguration;

    move-result-object v3

    .line 347
    .local v3, "_result":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    if-eqz v3, :cond_1

    .line 349
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    invoke-virtual {v3, p3, v1}, Lcom/mediatek/ims/rcsua/AcsConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 353
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    :goto_0
    return v1

    .line 336
    .end local v3    # "_result":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/rcsua/service/IAcsEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    move-result-object v2

    .line 339
    .local v2, "_arg0":Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->unregisterAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    return v1

    .line 327
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/rcsua/service/IAcsEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    move-result-object v2

    .line 330
    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->registerAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V

    .line 331
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    return v1

    .line 319
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->isActivated()Z

    move-result v2

    .line 321
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    return v1

    .line 305
    .end local v2    # "_result":Z
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getCapabilities()Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v3

    .line 307
    .local v3, "_result":Lcom/mediatek/ims/rcsua/Capability;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    if-eqz v3, :cond_2

    .line 309
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    invoke-virtual {v3, p3, v1}, Lcom/mediatek/ims/rcsua/Capability;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 313
    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    :goto_1
    return v1

    .line 291
    .end local v3    # "_result":Lcom/mediatek/ims/rcsua/Capability;
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->getOptions()Landroid/os/Bundle;

    move-result-object v3

    .line 293
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    if-eqz v3, :cond_3

    .line 295
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    invoke-virtual {v3, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 299
    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    :goto_2
    return v1

    .line 277
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 280
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .local v2, "_arg0":Landroid/os/Bundle;
    goto :goto_3

    .line 283
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :cond_4
    const/4 v2, 0x0

    .line 285
    .restart local v2    # "_arg0":Landroid/os/Bundle;
    :goto_3
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->setOptions(Landroid/os/Bundle;)V

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    return v1

    .line 268
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    move-result-object v2

    .line 271
    .local v2, "_arg0":Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->unregisterClient(Lcom/mediatek/ims/rcsua/service/IRcsUaClient;)V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    return v1

    .line 258
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

    move-result-object v2

    .line 261
    .local v2, "_arg0":Lcom/mediatek/ims/rcsua/service/IImsEventCallback;
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->registerClient(Lcom/mediatek/ims/rcsua/service/IImsEventCallback;)Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    move-result-object v3

    .line 262
    .local v3, "_result":Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    if-eqz v3, :cond_5

    invoke-interface {v3}, Lcom/mediatek/ims/rcsua/service/IRcsUaClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 264
    return v1

    .line 244
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/service/IImsEventCallback;
    .end local v3    # "_result":Lcom/mediatek/ims/rcsua/service/IRcsUaClient;
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    .line 247
    sget-object v2, Lcom/mediatek/ims/rcsua/Capability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcsua/Capability;

    .local v2, "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    goto :goto_5

    .line 250
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :cond_6
    const/4 v2, 0x0

    .line 252
    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :goto_5
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->updateCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    return v1

    .line 230
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 233
    sget-object v2, Lcom/mediatek/ims/rcsua/Capability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcsua/Capability;

    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    goto :goto_6

    .line 236
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :cond_7
    const/4 v2, 0x0

    .line 238
    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :goto_6
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->removeCapability(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    return v1

    .line 216
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    .line 219
    sget-object v2, Lcom/mediatek/ims/rcsua/Capability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcsua/Capability;

    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    goto :goto_7

    .line 222
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :cond_8
    const/4 v2, 0x0

    .line 224
    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :goto_7
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->addCapability(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    return v1

    .line 209
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->triggerRestoration()V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    return v1

    .line 195
    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    .line 198
    sget-object v2, Lcom/mediatek/ims/rcsua/Capability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcsua/Capability;

    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    goto :goto_8

    .line 201
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :cond_9
    const/4 v2, 0x0

    .line 203
    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :goto_8
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->triggerForceReregistration(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    return v1

    .line 188
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :pswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->triggerRoiRegistration()V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    return v1

    .line 181
    :pswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->triggerRoiDeregistration()V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    return v1

    .line 167
    :pswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    .line 170
    sget-object v2, Lcom/mediatek/ims/rcsua/Capability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/rcsua/Capability;

    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    goto :goto_9

    .line 173
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :cond_a
    const/4 v2, 0x0

    .line 175
    .restart local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :goto_9
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->triggerReregistration(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    return v1

    .line 160
    .end local v2    # "_arg0":Lcom/mediatek/ims/rcsua/Capability;
    :pswitch_1b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->deactivate()V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    return v1

    .line 153
    :pswitch_1c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService$Stub;->activate()V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
    .end packed-switch
.end method
