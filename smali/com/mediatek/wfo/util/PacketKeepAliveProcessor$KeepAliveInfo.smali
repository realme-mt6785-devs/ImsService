.class public Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;
.super Ljava/lang/Object;
.source "PacketKeepAliveProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeepAliveInfo"
.end annotation


# instance fields
.field callback:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;

.field config:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

.field ka:Landroid/net/SocketKeepalive;

.field final synthetic this$0:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;


# direct methods
.method public constructor <init>(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;Landroid/net/SocketKeepalive;Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;
    .param p2, "pka"    # Landroid/net/SocketKeepalive;
    .param p3, "c"    # Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;
    .param p4, "callback"    # Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;

    .line 229
    iput-object p1, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;->this$0:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p2, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;->ka:Landroid/net/SocketKeepalive;

    .line 231
    iput-object p3, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;->config:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    .line 232
    iput-object p4, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;->callback:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;

    .line 233
    return-void
.end method


# virtual methods
.method public getConfig()Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;->config:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    return-object v0
.end method

.method public stop()V
    .locals 2

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeepAliveInfo.stop, config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;->config:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isStarted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;->callback:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;

    .line 241
    invoke-virtual {v1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;->callback:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;

    .line 242
    invoke-virtual {v1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->isError()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    const-string v1, "PacketKeepAliveProcessor"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;->callback:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;

    invoke-virtual {v0}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;->callback:Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;

    invoke-virtual {v0}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;->ka:Landroid/net/SocketKeepalive;

    invoke-virtual {v0}, Landroid/net/SocketKeepalive;->stop()V

    .line 246
    :cond_1
    return-void
.end method
