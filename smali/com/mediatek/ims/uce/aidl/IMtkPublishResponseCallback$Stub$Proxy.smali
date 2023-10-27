.class Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMtkPublishResponseCallback.java"

# interfaces
.implements Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 119
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 126
    const-string v0, "com.mediatek.ims.uce.aidl.IMtkPublishResponseCallback"

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

    .line 130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 132
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.mediatek.ims.uce.aidl.IMtkPublishResponseCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-object v1, p0, Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 136
    .local v1, "_status":Z
    if-nez v1, :cond_0

    .line 137
    invoke-static {}, Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 138
    invoke-static {}, Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback;->onCommandError(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 139
    return-void

    .line 144
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 145
    nop

    .line 146
    return-void

    .line 144
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 145
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

    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 171
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.mediatek.ims.uce.aidl.IMtkPublishResponseCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 178
    .local v1, "_status":Z
    if-nez v1, :cond_0

    .line 179
    invoke-static {}, Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 180
    invoke-static {}, Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback;

    move-result-object v3

    move v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback;->onNetworkRespHeader(IILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 181
    return-void

    .line 186
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 187
    nop

    .line 188
    return-void

    .line 186
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 187
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

    .line 149
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 151
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.mediatek.ims.uce.aidl.IMtkPublishResponseCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 156
    .local v1, "_status":Z
    if-nez v1, :cond_0

    .line 157
    invoke-static {}, Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 158
    invoke-static {}, Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback$Stub;->getDefaultImpl()Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback;->onNetworkResponse(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 159
    return-void

    .line 164
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 165
    nop

    .line 166
    return-void

    .line 164
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 165
    throw v1
.end method
