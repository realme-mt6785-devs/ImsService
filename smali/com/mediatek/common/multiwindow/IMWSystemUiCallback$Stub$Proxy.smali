.class Lcom/mediatek/common/multiwindow/IMWSystemUiCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMWSystemUiCallback.java"

# interfaces
.implements Lcom/mediatek/common/multiwindow/IMWSystemUiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/multiwindow/IMWSystemUiCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/common/multiwindow/IMWSystemUiCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/mediatek/common/multiwindow/IMWSystemUiCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 84
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/mediatek/common/multiwindow/IMWSystemUiCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 91
    const-string v0, "com.mediatek.common.multiwindow.IMWSystemUiCallback"

    return-object v0
.end method

.method public showRestoreButton(Z)V
    .locals 5
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 98
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 100
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.common.multiwindow.IMWSystemUiCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 101
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-object v4, p0, Lcom/mediatek/common/multiwindow/IMWSystemUiCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 103
    .local v2, "_status":Z
    if-nez v2, :cond_1

    invoke-static {}, Lcom/mediatek/common/multiwindow/IMWSystemUiCallback$Stub;->getDefaultImpl()Lcom/mediatek/common/multiwindow/IMWSystemUiCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 104
    invoke-static {}, Lcom/mediatek/common/multiwindow/IMWSystemUiCallback$Stub;->getDefaultImpl()Lcom/mediatek/common/multiwindow/IMWSystemUiCallback;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/common/multiwindow/IMWSystemUiCallback;->showRestoreButton(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 105
    return-void

    .line 107
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 112
    nop

    .line 113
    return-void

    .line 110
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 111
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 112
    throw v2
.end method
