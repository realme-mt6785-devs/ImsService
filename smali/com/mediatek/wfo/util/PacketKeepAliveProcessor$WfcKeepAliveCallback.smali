.class Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;
.super Landroid/net/SocketKeepalive$Callback;
.source "PacketKeepAliveProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WfcKeepAliveCallback"
.end annotation


# instance fields
.field config:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

.field mIsError:Z

.field mIsStarted:Z

.field final synthetic this$0:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;


# direct methods
.method public constructor <init>(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;
    .param p2, "config"    # Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    .line 156
    iput-object p1, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->this$0:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    invoke-direct {p0}, Landroid/net/SocketKeepalive$Callback;-><init>()V

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->mIsStarted:Z

    .line 154
    iput-boolean v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->mIsError:Z

    .line 157
    iput-object p2, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->config:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    .line 158
    return-void
.end method

.method private errorToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "error"    # I

    .line 194
    const-string v0, "unknown"

    .line 195
    .local v0, "str":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 197
    :pswitch_1
    const-string v0, "ERROR_INVALID_NETWORK"

    .line 198
    goto :goto_0

    .line 200
    :pswitch_2
    const-string v0, "ERROR_INVALID_IP_ADDRESS"

    .line 201
    goto :goto_0

    .line 203
    :pswitch_3
    const-string v0, "ERROR_INVALID_PORT"

    .line 204
    goto :goto_0

    .line 206
    :pswitch_4
    const-string v0, "ERROR_INVALID_LENGTH"

    .line 207
    goto :goto_0

    .line 209
    :pswitch_5
    const-string v0, "ERROR_INVALID_INTERVAL"

    .line 210
    goto :goto_0

    .line 212
    :pswitch_6
    const-string v0, "ERROR_HARDWARE_UNSUPPORTED"

    .line 213
    goto :goto_0

    .line 215
    :pswitch_7
    const-string v0, "ERROR_HARDWARE_ERROR"

    .line 216
    nop

    .line 220
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch -0x1f
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public isError()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->mIsError:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->mIsStarted:Z

    return v0
.end method

.method public onError(I)V
    .locals 2
    .param p1, "error"    # I

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keepAlive is failed, error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->errorToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    const-string v1, "PacketKeepAliveProcessor"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->mIsError:Z

    .line 191
    return-void
.end method

.method public onStarted()V
    .locals 5

    .line 170
    const-string v0, "PacketKeepAliveProcessor"

    const-string v1, "keepAlive is started!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->mIsStarted:Z

    .line 172
    iget-object v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->this$0:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    iget-object v0, v0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mWifiPdnHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->this$0:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    iget-object v1, v1, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mWifiPdnHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->config:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    const/16 v3, 0x3ef

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 174
    return-void
.end method

.method public onStopped()V
    .locals 5

    .line 178
    const-string v0, "PacketKeepAliveProcessor"

    const-string v1, "keepAlive is stopped!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->mIsStarted:Z

    .line 180
    iput-boolean v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->mIsError:Z

    .line 181
    iget-object v1, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->config:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    iput-boolean v0, v1, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->enable:Z

    .line 182
    iget-object v1, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->this$0:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    iget-object v1, v1, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mWifiPdnHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->this$0:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    iget-object v2, v2, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mWifiPdnHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->config:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    const/16 v4, 0x3ef

    invoke-virtual {v2, v4, v0, v0, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 184
    return-void
.end method
