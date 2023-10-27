.class Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMtkSubscribeResponseCallback.java"

# interfaces
.implements Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 160
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 167
    const-string v0, "com.mediatek.ims.uce.aidl.IMtkSubscribeResponseCallback"

    return-object v0
.end method

.method public onCommandError(II)V
    .locals 4
    .param p1, "userData"    # I
    .param p2, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 173
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.mediatek.ims.uce.aidl.IMtkSubscribeResponseCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-object v1, p0, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 177
    .local v1, "_status":Z
    if-nez v1, :cond_0

    .line 178
    invoke-static {}, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 179
    invoke-static {}, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;->onCommandError(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 180
    return-void

    .line 185
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 186
    nop

    .line 187
    return-void

    .line 185
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 186
    throw v1
.end method

.method public onNetworkRespHeader(IILjava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p1, "userData"    # I
    .param p2, "code"    # I
    .param p3, "reasonPhrase"    # Ljava/lang/String;
    .param p4, "reasonHeaderCause"    # I
    .param p5, "reasonHeaderText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 212
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.mediatek.ims.uce.aidl.IMtkSubscribeResponseCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 219
    .local v1, "_status":Z
    if-nez v1, :cond_0

    .line 220
    invoke-static {}, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 221
    invoke-static {}, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;

    move-result-object v3

    move v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;->onNetworkRespHeader(IILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 222
    return-void

    .line 227
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 228
    nop

    .line 229
    return-void

    .line 227
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 228
    throw v1
.end method

.method public onNetworkResponse(IILjava/lang/String;)V
    .locals 5
    .param p1, "userData"    # I
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 192
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.mediatek.ims.uce.aidl.IMtkSubscribeResponseCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 197
    .local v1, "_status":Z
    if-nez v1, :cond_0

    .line 198
    invoke-static {}, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 199
    invoke-static {}, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;->onNetworkResponse(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 200
    return-void

    .line 205
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 206
    nop

    .line 207
    return-void

    .line 205
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 206
    throw v1
.end method

.method public onNotifyCapabilitiesUpdate(ILjava/util/List;)V
    .locals 5
    .param p1, "userData"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 232
    .local p2, "pidfXmls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 234
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.mediatek.ims.uce.aidl.IMtkSubscribeResponseCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 237
    iget-object v1, p0, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 238
    .local v1, "_status":Z
    if-nez v1, :cond_0

    .line 239
    invoke-static {}, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 240
    invoke-static {}, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;->onNotifyCapabilitiesUpdate(ILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 241
    return-void

    .line 246
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 247
    nop

    .line 248
    return-void

    .line 246
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 247
    throw v1
.end method

.method public onResourceTerminated(ILjava/util/List;)V
    .locals 5
    .param p1, "userData"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactTerminatedReason;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    .local p2, "uriTerminatedReason":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactTerminatedReason;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 253
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.mediatek.ims.uce.aidl.IMtkSubscribeResponseCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 256
    iget-object v1, p0, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 257
    .local v1, "_status":Z
    if-nez v1, :cond_0

    .line 258
    invoke-static {}, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 259
    invoke-static {}, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;->onResourceTerminated(ILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 260
    return-void

    .line 265
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 266
    nop

    .line 267
    return-void

    .line 265
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 266
    throw v1
.end method

.method public onTerminated(ILjava/lang/String;J)V
    .locals 5
    .param p1, "userData"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "retryAfterMilliseconds"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 270
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 272
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.mediatek.ims.uce.aidl.IMtkSubscribeResponseCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 276
    iget-object v1, p0, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 277
    .local v1, "_status":Z
    if-nez v1, :cond_0

    .line 278
    invoke-static {}, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 279
    invoke-static {}, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;->onTerminated(ILjava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 280
    return-void

    .line 285
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 286
    nop

    .line 287
    return-void

    .line 285
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 286
    throw v1
.end method
