.class Lcom/mediatek/ims/rcsua/service/IRcsUaClient$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRcsUaClient.java"

# interfaces
.implements Lcom/mediatek/ims/rcsua/service/IRcsUaClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcsua/service/IRcsUaClient$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/service/IRcsUaClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 120
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/service/IRcsUaClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 127
    const-string v0, "com.mediatek.ims.rcsua.service.IRcsUaClient"

    return-object v0
.end method

.method public getRegistrationInfo()Lcom/mediatek/ims/rcsua/RegistrationInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 179
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 182
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.rcsua.service.IRcsUaClient"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 183
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/service/IRcsUaClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 184
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 185
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaClient$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 186
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaClient$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/ims/rcsua/service/IRcsUaClient;->getRegistrationInfo()Lcom/mediatek/ims/rcsua/RegistrationInfo;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 186
    return-object v3

    .line 189
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 190
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    sget-object v3, Lcom/mediatek/ims/rcsua/RegistrationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/rcsua/RegistrationInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "_result":Lcom/mediatek/ims/rcsua/RegistrationInfo;
    goto :goto_0

    .line 194
    .end local v3    # "_result":Lcom/mediatek/ims/rcsua/RegistrationInfo;
    :cond_1
    const/4 v3, 0x0

    .line 198
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lcom/mediatek/ims/rcsua/RegistrationInfo;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 200
    nop

    .line 201
    return-object v3

    .line 198
    .end local v3    # "_result":Lcom/mediatek/ims/rcsua/RegistrationInfo;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 200
    throw v2
.end method

.method public openSipChannel(Lcom/mediatek/ims/rcsua/service/ISipEventCallback;ILcom/mediatek/ims/rcsua/service/RcsUaException;)Lcom/mediatek/ims/rcsua/service/ISipChannel;
    .locals 5
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/service/ISipEventCallback;
    .param p2, "mode"    # I
    .param p3, "exeception"    # Lcom/mediatek/ims/rcsua/service/RcsUaException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 132
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 135
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.rcsua.service.IRcsUaClient"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 136
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/mediatek/ims/rcsua/service/ISipEventCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 137
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/service/IRcsUaClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 139
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 140
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaClient$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 141
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaClient$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/ims/rcsua/service/IRcsUaClient;->openSipChannel(Lcom/mediatek/ims/rcsua/service/ISipEventCallback;ILcom/mediatek/ims/rcsua/service/RcsUaException;)Lcom/mediatek/ims/rcsua/service/ISipChannel;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 141
    return-object v3

    .line 144
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 145
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/ims/rcsua/service/ISipChannel$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/rcsua/service/ISipChannel;

    move-result-object v3

    .line 146
    .local v3, "_result":Lcom/mediatek/ims/rcsua/service/ISipChannel;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 147
    invoke-virtual {p3, v1}, Lcom/mediatek/ims/rcsua/service/RcsUaException;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    .end local v2    # "_status":Z
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 153
    nop

    .line 154
    return-object v3

    .line 151
    .end local v3    # "_result":Lcom/mediatek/ims/rcsua/service/ISipChannel;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 153
    throw v2
.end method

.method public resumeImsDeregistration()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 159
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 161
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.mediatek.ims.rcsua.service.IRcsUaClient"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/service/IRcsUaClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 163
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 164
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaClient$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 165
    invoke-static {}, Lcom/mediatek/ims/rcsua/service/IRcsUaClient$Stub;->getDefaultImpl()Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/ims/rcsua/service/IRcsUaClient;->resumeImsDeregistration()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 166
    return-void

    .line 169
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 174
    nop

    .line 175
    return-void

    .line 172
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 174
    throw v2
.end method
