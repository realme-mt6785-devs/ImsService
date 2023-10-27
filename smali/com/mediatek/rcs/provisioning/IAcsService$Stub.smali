.class public abstract Lcom/mediatek/rcs/provisioning/IAcsService$Stub;
.super Landroid/os/Binder;
.source "IAcsService.java"

# interfaces
.implements Lcom/mediatek/rcs/provisioning/IAcsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/rcs/provisioning/IAcsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/rcs/provisioning/IAcsService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_clearAcsConfiguration:I = 0xd

.field static final TRANSACTION_getAcsConfigInt:I = 0x2

.field static final TRANSACTION_getAcsConfigString:I = 0x3

.field static final TRANSACTION_getAcsConfiguration:I = 0x1

.field static final TRANSACTION_getAcsConnectionStatus:I = 0x5

.field static final TRANSACTION_getAcsSwitchState:I = 0xb

.field static final TRANSACTION_registerAcsCallback:I = 0x7

.field static final TRANSACTION_setAcsMsisdn:I = 0xe

.field static final TRANSACTION_setAcsProvisioningAddress:I = 0xc

.field static final TRANSACTION_setAcsSwitchState:I = 0x9

.field static final TRANSACTION_setAcsonfiguration:I = 0xa

.field static final TRANSACTION_setRcsSwitchState:I = 0x4

.field static final TRANSACTION_triggerAcsRequest:I = 0x6

.field static final TRANSACTION_unregisterAcsCallback:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 183
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 184
    const-string v0, "com.mediatek.rcs.provisioning.IAcsService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/rcs/provisioning/IAcsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/rcs/provisioning/IAcsService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 192
    if-nez p0, :cond_0

    .line 193
    const/4 v0, 0x0

    return-object v0

    .line 195
    :cond_0
    const-string v0, "com.mediatek.rcs.provisioning.IAcsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 196
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/rcs/provisioning/IAcsService;

    if-eqz v1, :cond_1

    .line 197
    move-object v1, v0

    check-cast v1, Lcom/mediatek/rcs/provisioning/IAcsService;

    return-object v1

    .line 199
    :cond_1
    new-instance v1, Lcom/mediatek/rcs/provisioning/IAcsService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/rcs/provisioning/IAcsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/rcs/provisioning/IAcsService;
    .locals 1

    .line 838
    sget-object v0, Lcom/mediatek/rcs/provisioning/IAcsService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/rcs/provisioning/IAcsService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/rcs/provisioning/IAcsService;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/rcs/provisioning/IAcsService;

    .line 828
    sget-object v0, Lcom/mediatek/rcs/provisioning/IAcsService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/rcs/provisioning/IAcsService;

    if-nez v0, :cond_1

    .line 831
    if-eqz p0, :cond_0

    .line 832
    sput-object p0, Lcom/mediatek/rcs/provisioning/IAcsService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/rcs/provisioning/IAcsService;

    .line 833
    const/4 v0, 0x1

    return v0

    .line 835
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 829
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 203
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

    .line 207
    const-string v0, "com.mediatek.rcs.provisioning.IAcsService"

    .line 208
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 216
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_1

    .line 360
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 212
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    return v1

    .line 350
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 353
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/rcs/provisioning/IAcsService$Stub;->setAcsMsisdn(Ljava/lang/String;)Z

    move-result v3

    .line 354
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    return v1

    .line 342
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Lcom/mediatek/rcs/provisioning/IAcsService$Stub;->clearAcsConfiguration()Z

    move-result v2

    .line 344
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    return v1

    .line 332
    .end local v2    # "_result":Z
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/rcs/provisioning/IAcsService$Stub;->setAcsProvisioningAddress(Ljava/lang/String;)Z

    move-result v3

    .line 336
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    return v1

    .line 324
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Lcom/mediatek/rcs/provisioning/IAcsService$Stub;->getAcsSwitchState()Z

    move-result v2

    .line 326
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    return v1

    .line 309
    .end local v2    # "_result":Z
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 317
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 318
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/mediatek/rcs/provisioning/IAcsService$Stub;->setAcsonfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    return v1

    .line 299
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    .line 302
    .local v2, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v2}, Lcom/mediatek/rcs/provisioning/IAcsService$Stub;->setAcsSwitchState(Z)Z

    move-result v3

    .line 303
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    return v1

    .line 290
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/rcs/provisioning/IAcsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/rcs/provisioning/IAcsCallback;

    move-result-object v2

    .line 293
    .local v2, "_arg0":Lcom/mediatek/rcs/provisioning/IAcsCallback;
    invoke-virtual {p0, v2}, Lcom/mediatek/rcs/provisioning/IAcsService$Stub;->unregisterAcsCallback(Lcom/mediatek/rcs/provisioning/IAcsCallback;)V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    return v1

    .line 281
    .end local v2    # "_arg0":Lcom/mediatek/rcs/provisioning/IAcsCallback;
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/rcs/provisioning/IAcsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/rcs/provisioning/IAcsCallback;

    move-result-object v2

    .line 284
    .restart local v2    # "_arg0":Lcom/mediatek/rcs/provisioning/IAcsCallback;
    invoke-virtual {p0, v2}, Lcom/mediatek/rcs/provisioning/IAcsService$Stub;->registerAcsCallback(Lcom/mediatek/rcs/provisioning/IAcsCallback;)V

    .line 285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    return v1

    .line 271
    .end local v2    # "_arg0":Lcom/mediatek/rcs/provisioning/IAcsCallback;
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 274
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/rcs/provisioning/IAcsService$Stub;->triggerAcsRequest(I)Z

    move-result v3

    .line 275
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    return v1

    .line 263
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcom/mediatek/rcs/provisioning/IAcsService$Stub;->getAcsConnectionStatus()I

    move-result v2

    .line 265
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    return v1

    .line 254
    .end local v2    # "_result":I
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    .line 257
    .local v2, "_arg0":Z
    :cond_1
    invoke-virtual {p0, v2}, Lcom/mediatek/rcs/provisioning/IAcsService$Stub;->setRcsSwitchState(Z)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    return v1

    .line 244
    .end local v2    # "_arg0":Z
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/rcs/provisioning/IAcsService$Stub;->getAcsConfigString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    return v1

    .line 234
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 237
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/rcs/provisioning/IAcsService$Stub;->getAcsConfigInt(Ljava/lang/String;)I

    move-result v3

    .line 238
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    return v1

    .line 220
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/mediatek/rcs/provisioning/IAcsService$Stub;->getAcsConfiguration()Lcom/mediatek/rcs/provisioning/AcsConfigInfo;

    move-result-object v3

    .line 222
    .local v3, "_result":Lcom/mediatek/rcs/provisioning/AcsConfigInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    if-eqz v3, :cond_2

    .line 224
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    invoke-virtual {v3, p3, v1}, Lcom/mediatek/rcs/provisioning/AcsConfigInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 228
    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
