.class Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IImsEventCallback.java"

# interfaces
.implements Lcom/mediatek/ims/rcsua/service/IImsEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/ims/rcsua/service/IImsEventCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 126
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 133
    const-string v0, "com.mediatek.ims.rcsua.service.IImsEventCallback"

    return-object v0
.end method

.method public onDeregStarted(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V
    .locals 5
    .param p1, "regInfo"    # Lcom/mediatek/ims/rcsua/RegistrationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 187
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.mediatek.ims.rcsua.service.IImsEventCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 188
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    invoke-virtual {p1, v0, v2}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 196
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 197
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 198
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/ims/rcsua/service/IImsEventCallback;->onDeregStarted(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 199
    return-void

    .line 204
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 205
    nop

    .line 206
    return-void

    .line 204
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 205
    throw v1
.end method

.method public onReregistered(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V
    .locals 5
    .param p1, "regInfo"    # Lcom/mediatek/ims/rcsua/RegistrationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 163
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.mediatek.ims.rcsua.service.IImsEventCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 164
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    invoke-virtual {p1, v0, v2}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 172
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 173
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 174
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/ims/rcsua/service/IImsEventCallback;->onReregistered(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 175
    return-void

    .line 180
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 181
    nop

    .line 182
    return-void

    .line 180
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 181
    throw v1
.end method

.method public onStatusChanged(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V
    .locals 4
    .param p1, "regInfo"    # Lcom/mediatek/ims/rcsua/RegistrationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 139
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.mediatek.ims.rcsua.service.IImsEventCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 140
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    invoke-virtual {p1, v0, v1}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 148
    .local v1, "_status":Z
    if-nez v1, :cond_1

    .line 149
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 150
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/ims/rcsua/service/IImsEventCallback;->onStatusChanged(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 151
    return-void

    .line 156
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 157
    nop

    .line 158
    return-void

    .line 156
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 157
    throw v1
.end method

.method public onVopsIndication(I)V
    .locals 5
    .param p1, "vops"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 211
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.mediatek.ims.rcsua.service.IImsEventCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 214
    .local v1, "_status":Z
    if-nez v1, :cond_0

    .line 215
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 216
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IImsEventCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/ims/rcsua/service/IImsEventCallback;->onVopsIndication(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 217
    return-void

    .line 222
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 223
    nop

    .line 224
    return-void

    .line 222
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 223
    throw v1
.end method
