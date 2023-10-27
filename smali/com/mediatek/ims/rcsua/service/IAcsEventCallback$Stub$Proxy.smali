.class Lcom/mediatek/ims/rcsua/service/IAcsEventCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAcsEventCallback.java"

# interfaces
.implements Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcsua/service/IAcsEventCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/service/IAcsEventCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 91
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/service/IAcsEventCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 98
    const-string v0, "com.mediatek.ims.rcsua.service.IAcsEventCallback"

    return-object v0
.end method

.method public onConfigChanged(ZI)V
    .locals 4
    .param p1, "valid"    # Z
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 104
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.mediatek.ims.rcsua.service.IAcsEventCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 105
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/service/IAcsEventCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 108
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 109
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IAcsEventCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 110
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IAcsEventCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;->onConfigChanged(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 111
    return-void

    .line 116
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 117
    nop

    .line 118
    return-void

    .line 116
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 117
    throw v1
.end method

.method public onConnectionChanged(Z)V
    .locals 5
    .param p1, "status"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 123
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.mediatek.ims.rcsua.service.IAcsEventCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 124
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/service/IAcsEventCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 126
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 127
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IAcsEventCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 128
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IAcsEventCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;->onConnectionChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 129
    return-void

    .line 134
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 135
    nop

    .line 136
    return-void

    .line 134
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 135
    throw v1
.end method
