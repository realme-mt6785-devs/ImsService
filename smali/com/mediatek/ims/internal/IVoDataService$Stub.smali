.class public abstract Lcom/mediatek/ims/internal/IVoDataService$Stub;
.super Landroid/os/Binder;
.source "IVoDataService.java"

# interfaces
.implements Lcom/mediatek/ims/internal/IVoDataService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/IVoDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/IVoDataService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.ims.internal.IVoDataService"

.field static final TRANSACTION_getEnabled:I = 0x2

.field static final TRANSACTION_getImsPdnStatus:I = 0x4

.field static final TRANSACTION_setEnabled:I = 0x1

.field static final TRANSACTION_setImsPdnStatus:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    const-string v0, "com.mediatek.ims.internal.IVoDataService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/internal/IVoDataService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IVoDataService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 63
    if-nez p0, :cond_0

    .line 64
    const/4 v0, 0x0

    return-object v0

    .line 66
    :cond_0
    const-string v0, "com.mediatek.ims.internal.IVoDataService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 67
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/ims/internal/IVoDataService;

    if-eqz v1, :cond_1

    .line 68
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/internal/IVoDataService;

    return-object v1

    .line 70
    :cond_1
    new-instance v1, Lcom/mediatek/ims/internal/IVoDataService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/IVoDataService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/ims/internal/IVoDataService;
    .locals 1

    .line 270
    sget-object v0, Lcom/mediatek/ims/internal/IVoDataService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IVoDataService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/ims/internal/IVoDataService;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/ims/internal/IVoDataService;

    .line 260
    sget-object v0, Lcom/mediatek/ims/internal/IVoDataService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IVoDataService;

    if-nez v0, :cond_1

    .line 263
    if-eqz p0, :cond_0

    .line 264
    sput-object p0, Lcom/mediatek/ims/internal/IVoDataService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/ims/internal/IVoDataService;

    .line 265
    const/4 v0, 0x1

    return v0

    .line 267
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 261
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 74
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    const-string v0, "com.mediatek.ims.internal.IVoDataService"

    .line 79
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

    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 83
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    return v1

    .line 120
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 123
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/IVoDataService$Stub;->getImsPdnStatus(I)I

    move-result v3

    .line 124
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    return v1

    .line 109
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 113
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 114
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/ims/internal/IVoDataService$Stub;->setImsPdnStatus(II)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    return v1

    .line 99
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 102
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/internal/IVoDataService$Stub;->getEnabled(I)Z

    move-result v3

    .line 103
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    return v1

    .line 88
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 92
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    .line 93
    .local v3, "_arg1":Z
    :goto_0
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/ims/internal/IVoDataService$Stub;->setEnabled(IZ)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    return v1
.end method
