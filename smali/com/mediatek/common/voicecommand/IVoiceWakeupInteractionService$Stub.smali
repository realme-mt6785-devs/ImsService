.class public abstract Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionService$Stub;
.super Landroid/os/Binder;
.source "IVoiceWakeupInteractionService.java"

# interfaces
.implements Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.common.voicecommand.IVoiceWakeupInteractionService"

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_setCurrentUserOnSwitch:I = 0x4

.field static final TRANSACTION_startRecognition:I = 0x2

.field static final TRANSACTION_stopRecognition:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 48
    const-string v0, "com.mediatek.common.voicecommand.IVoiceWakeupInteractionService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 56
    if-nez p0, :cond_0

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_0
    const-string v0, "com.mediatek.common.voicecommand.IVoiceWakeupInteractionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionService;

    if-eqz v1, :cond_1

    .line 61
    move-object v1, v0

    check-cast v1, Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionService;

    return-object v1

    .line 63
    :cond_1
    new-instance v1, Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionService;
    .locals 1

    .line 244
    sget-object v0, Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionService;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionService;

    .line 234
    sget-object v0, Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionService;

    if-nez v0, :cond_1

    .line 237
    if-eqz p0, :cond_0

    .line 238
    sput-object p0, Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionService;

    .line 239
    const/4 v0, 0x1

    return v0

    .line 241
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 235
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 67
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    const-string v0, "com.mediatek.common.voicecommand.IVoiceWakeupInteractionService"

    .line 72
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 76
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    return v1

    .line 106
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 109
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionService$Stub;->setCurrentUserOnSwitch(I)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    return v1

    .line 98
    .end local v2    # "_arg0":I
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionService$Stub;->stopRecognition()Z

    move-result v2

    .line 100
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    return v1

    .line 90
    .end local v2    # "_result":Z
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionService$Stub;->startRecognition()Z

    move-result v2

    .line 92
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    return v1

    .line 81
    .end local v2    # "_result":Z
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback;

    move-result-object v2

    .line 84
    .local v2, "_arg0":Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback;
    invoke-virtual {p0, v2}, Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionService$Stub;->registerCallback(Lcom/mediatek/common/voicecommand/IVoiceWakeupInteractionCallback;)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    return v1
.end method
