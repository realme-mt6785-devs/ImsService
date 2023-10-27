.class Lcom/mediatek/ims/uce/aidl/IMtkPresenceService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMtkPresenceService.java"

# interfaces
.implements Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/uce/aidl/IMtkPresenceService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/mediatek/ims/uce/aidl/IMtkPresenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 113
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/mediatek/ims/uce/aidl/IMtkPresenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getContactListCap(Ljava/util/List;ILcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;)V
    .locals 5
    .param p2, "userData"    # I
    .param p3, "cb"    # Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;I",
            "Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    .local p1, "contactList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 148
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 150
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.uce.aidl.IMtkPresenceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 152
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 154
    iget-object v2, p0, Lcom/mediatek/ims/uce/aidl/IMtkPresenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 155
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 156
    invoke-static {}, Lcom/mediatek/ims/uce/aidl/IMtkPresenceService$Stub;->getDefaultImpl()Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 157
    invoke-static {}, Lcom/mediatek/ims/uce/aidl/IMtkPresenceService$Stub;->getDefaultImpl()Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;->getContactListCap(Ljava/util/List;ILcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 158
    return-void

    .line 161
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 166
    nop

    .line 167
    return-void

    .line 164
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 166
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 120
    const-string v0, "com.mediatek.ims.uce.aidl.IMtkPresenceService"

    return-object v0
.end method

.method public publishMyCap(Ljava/lang/String;ILcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback;)V
    .locals 5
    .param p1, "pidfXml"    # Ljava/lang/String;
    .param p2, "userData"    # I
    .param p3, "cb"    # Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 125
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 127
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.uce.aidl.IMtkPresenceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 131
    iget-object v2, p0, Lcom/mediatek/ims/uce/aidl/IMtkPresenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 132
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 133
    invoke-static {}, Lcom/mediatek/ims/uce/aidl/IMtkPresenceService$Stub;->getDefaultImpl()Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 134
    invoke-static {}, Lcom/mediatek/ims/uce/aidl/IMtkPresenceService$Stub;->getDefaultImpl()Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;->publishMyCap(Ljava/lang/String;ILcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 135
    return-void

    .line 138
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 143
    nop

    .line 144
    return-void

    .line 141
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 143
    throw v2
.end method

.method public setRcsCapabilityExchangeAvailable(ZLandroid/telephony/ims/aidl/ICapabilityExchangeEventListener;)V
    .locals 5
    .param p1, "value"    # Z
    .param p2, "listener"    # Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 171
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 173
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.uce.aidl.IMtkPresenceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 174
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 176
    iget-object v3, p0, Lcom/mediatek/ims/uce/aidl/IMtkPresenceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 177
    .local v2, "_status":Z
    if-nez v2, :cond_2

    .line 178
    invoke-static {}, Lcom/mediatek/ims/uce/aidl/IMtkPresenceService$Stub;->getDefaultImpl()Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 179
    invoke-static {}, Lcom/mediatek/ims/uce/aidl/IMtkPresenceService$Stub;->getDefaultImpl()Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;->setRcsCapabilityExchangeAvailable(ZLandroid/telephony/ims/aidl/ICapabilityExchangeEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 180
    return-void

    .line 183
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 188
    nop

    .line 189
    return-void

    .line 186
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 188
    throw v2
.end method
