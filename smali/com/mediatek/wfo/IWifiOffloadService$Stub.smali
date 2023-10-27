.class public abstract Lcom/mediatek/wfo/IWifiOffloadService$Stub;
.super Landroid/os/Binder;
.source "IWifiOffloadService.java"

# interfaces
.implements Lcom/mediatek/wfo/IWifiOffloadService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/IWifiOffloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wfo/IWifiOffloadService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_factoryReset:I = 0xb

.field static final TRANSACTION_getDisconnectCause:I = 0x4

.field static final TRANSACTION_getMccMncAllowList:I = 0xa

.field static final TRANSACTION_getRatType:I = 0x3

.field static final TRANSACTION_isWifiConnected:I = 0x7

.field static final TRANSACTION_registerForHandoverEvent:I = 0x1

.field static final TRANSACTION_setEpdgFqdn:I = 0x5

.field static final TRANSACTION_setMccMncAllowList:I = 0x9

.field static final TRANSACTION_setWifiOff:I = 0xc

.field static final TRANSACTION_unregisterForHandoverEvent:I = 0x2

.field static final TRANSACTION_updateCallState:I = 0x6

.field static final TRANSACTION_updateRadioState:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 63
    const-string v0, "com.mediatek.wfo.IWifiOffloadService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/wfo/IWifiOffloadService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 71
    if-nez p0, :cond_0

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_0
    const-string v0, "com.mediatek.wfo.IWifiOffloadService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 75
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/wfo/IWifiOffloadService;

    if-eqz v1, :cond_1

    .line 76
    move-object v1, v0

    check-cast v1, Lcom/mediatek/wfo/IWifiOffloadService;

    return-object v1

    .line 78
    :cond_1
    new-instance v1, Lcom/mediatek/wfo/IWifiOffloadService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/wfo/IWifiOffloadService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/wfo/IWifiOffloadService;
    .locals 1

    .line 544
    sget-object v0, Lcom/mediatek/wfo/IWifiOffloadService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/wfo/IWifiOffloadService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/wfo/IWifiOffloadService;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/wfo/IWifiOffloadService;

    .line 534
    sget-object v0, Lcom/mediatek/wfo/IWifiOffloadService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/wfo/IWifiOffloadService;

    if-nez v0, :cond_1

    .line 537
    if-eqz p0, :cond_0

    .line 538
    sput-object p0, Lcom/mediatek/wfo/IWifiOffloadService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/wfo/IWifiOffloadService;

    .line 539
    const/4 v0, 0x1

    return v0

    .line 541
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 535
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 82
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

    .line 86
    const-string v0, "com.mediatek.wfo.IWifiOffloadService"

    .line 87
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 95
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_1

    .line 225
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 91
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    return v1

    .line 217
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->setWifiOff()Z

    move-result v2

    .line 219
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    return v1

    .line 210
    .end local v2    # "_result":Z
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->factoryReset()V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    return v1

    .line 200
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 203
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->getMccMncAllowList(I)[Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 206
    return v1

    .line 190
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->setMccMncAllowList([Ljava/lang/String;)Z

    move-result v3

    .line 194
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    return v1

    .line 179
    .end local v2    # "_arg0":[Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 183
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 184
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->updateRadioState(II)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    return v1

    .line 171
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->isWifiConnected()Z

    move-result v2

    .line 173
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    return v1

    .line 156
    .end local v2    # "_result":Z
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 160
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 162
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 164
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 165
    .local v5, "_arg3":I
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->updateCallState(IIII)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    return v1

    .line 143
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 147
    .local v3, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v2, v1

    .line 150
    .local v2, "_arg2":Z
    :cond_0
    invoke-virtual {p0, v3, v4, v2}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->setEpdgFqdn(ILjava/lang/String;Z)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    return v1

    .line 127
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 130
    .restart local v3    # "_arg0":I
    invoke-virtual {p0, v3}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->getDisconnectCause(I)Lcom/mediatek/wfo/DisconnectCause;

    move-result-object v4

    .line 131
    .local v4, "_result":Lcom/mediatek/wfo/DisconnectCause;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v4, :cond_1

    .line 133
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    invoke-virtual {v4, p3, v1}, Lcom/mediatek/wfo/DisconnectCause;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    :goto_0
    return v1

    .line 117
    .end local v3    # "_arg0":I
    .end local v4    # "_result":Lcom/mediatek/wfo/DisconnectCause;
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 120
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->getRatType(I)I

    move-result v3

    .line 121
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    return v1

    .line 108
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/wfo/IWifiOffloadListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/wfo/IWifiOffloadListener;

    move-result-object v2

    .line 111
    .local v2, "_arg0":Lcom/mediatek/wfo/IWifiOffloadListener;
    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->unregisterForHandoverEvent(Lcom/mediatek/wfo/IWifiOffloadListener;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    return v1

    .line 99
    .end local v2    # "_arg0":Lcom/mediatek/wfo/IWifiOffloadListener;
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/wfo/IWifiOffloadListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/wfo/IWifiOffloadListener;

    move-result-object v2

    .line 102
    .restart local v2    # "_arg0":Lcom/mediatek/wfo/IWifiOffloadListener;
    invoke-virtual {p0, v2}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;->registerForHandoverEvent(Lcom/mediatek/wfo/IWifiOffloadListener;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
