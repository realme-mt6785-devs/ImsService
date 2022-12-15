.class public abstract Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback$Stub;
.super Landroid/os/Binder;
.source "IMWPhoneWindowCallback.java"

# interfaces
.implements Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.common.multiwindow.IMWPhoneWindowCallback"

.field static final TRANSACTION_setFloatDecorVisibility:I = 0x2

.field static final TRANSACTION_setWindowType:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 35
    const-string v0, "com.mediatek.common.multiwindow.IMWPhoneWindowCallback"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 43
    if-nez p0, :cond_0

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_0
    const-string v0, "com.mediatek.common.multiwindow.IMWPhoneWindowCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 47
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;

    if-eqz v1, :cond_1

    .line 48
    move-object v1, v0

    check-cast v1, Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;

    return-object v1

    .line 50
    :cond_1
    new-instance v1, Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;
    .locals 1

    .line 166
    sget-object v0, Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;

    .line 156
    sget-object v0, Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;

    if-nez v0, :cond_1

    .line 159
    if-eqz p0, :cond_0

    .line 160
    sput-object p0, Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback;

    .line 161
    const/4 v0, 0x1

    return v0

    .line 163
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 157
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

    .line 58
    const-string v0, "com.mediatek.common.multiwindow.IMWPhoneWindowCallback"

    .line 59
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 88
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 63
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    return v1

    .line 79
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 82
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback$Stub;->setFloatDecorVisibility(I)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    return v1

    .line 68
    .end local v2    # "_arg0":I
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 72
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 73
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback$Stub;->setWindowType(Landroid/os/IBinder;I)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    return v1
.end method
