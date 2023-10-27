.class Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISipEventCallback.java"

# interfaces
.implements Lcom/mediatek/ims/rcsua/service/ISipEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/ims/rcsua/service/ISipEventCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 115
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public availabilityChanged(Z)V
    .locals 5
    .param p1, "isAvailable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 184
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.mediatek.ims.rcsua.service.ISipEventCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 185
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 187
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 188
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/ISipEventCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 189
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/ISipEventCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/ims/rcsua/service/ISipEventCallback;->availabilityChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 190
    return-void

    .line 195
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 196
    nop

    .line 197
    return-void

    .line 195
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 196
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 122
    const-string v0, "com.mediatek.ims.rcsua.service.ISipEventCallback"

    return-object v0
.end method

.method public messageReceived(I[B)V
    .locals 4
    .param p1, "transport"    # I
    .param p2, "message"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 128
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.mediatek.ims.rcsua.service.ISipEventCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 131
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 132
    .local v1, "_status":Z
    if-nez v1, :cond_0

    .line 133
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/ISipEventCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 134
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/ISipEventCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/mediatek/ims/rcsua/service/ISipEventCallback;->messageReceived(I[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 135
    return-void

    .line 140
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 141
    nop

    .line 142
    return-void

    .line 140
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 141
    throw v1
.end method

.method public messageSendFail(Ljava/lang/String;I)V
    .locals 5
    .param p1, "transactionId"    # Ljava/lang/String;
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 165
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.mediatek.ims.rcsua.service.ISipEventCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 169
    .local v1, "_status":Z
    if-nez v1, :cond_0

    .line 170
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/ISipEventCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 171
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/ISipEventCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/mediatek/ims/rcsua/service/ISipEventCallback;->messageSendFail(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 172
    return-void

    .line 177
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 178
    nop

    .line 179
    return-void

    .line 177
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 178
    throw v1
.end method

.method public messageSent(Ljava/lang/String;)V
    .locals 5
    .param p1, "transactionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 147
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.mediatek.ims.rcsua.service.ISipEventCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 150
    .local v1, "_status":Z
    if-nez v1, :cond_0

    .line 151
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/ISipEventCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 152
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/ISipEventCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/ISipEventCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/ims/rcsua/service/ISipEventCallback;->messageSent(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 153
    return-void

    .line 158
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 159
    nop

    .line 160
    return-void

    .line 158
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 159
    throw v1
.end method
