.class public Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;
.super Ljava/lang/Object;
.source "PacketKeepAliveProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;,
        Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;,
        Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;
    }
.end annotation


# static fields
.field private static final NATT_PORT:I = 0x1194

.field static final PROPERTY_ENABLE_OFFLOAD:Ljava/lang/String; = "persist.vendor.mtk_enable_keep_alive_offload"

.field static final TAG:Ljava/lang/String; = "PacketKeepAliveProcessor"


# instance fields
.field mConnectivityManager:Landroid/net/ConnectivityManager;

.field mContext:Landroid/content/Context;

.field mKeepAlives:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWifiPdnHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .param p1, "cm"    # Landroid/net/ConnectivityManager;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mKeepAlives:Ljava/util/ArrayList;

    .line 250
    iput-object p1, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 251
    iput-object p2, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mWifiPdnHandler:Landroid/os/Handler;

    .line 252
    iput-object p3, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mContext:Landroid/content/Context;

    .line 253
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStringFromArray([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "result"    # [Ljava/lang/String;

    .line 283
    if-nez p1, :cond_0

    const-string v0, "null"

    return-object v0

    .line 284
    :cond_0
    const-string v0, ""

    .line 285
    .local v0, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private isActiveWifiNetwork(Landroid/net/Network;)Z
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    .line 372
    const-string v0, "PacketKeepAliveProcessor"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 373
    const-string v2, "isActiveWifiNetwork: network null"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return v1

    .line 376
    :cond_0
    iget-object v2, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 377
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    .line 378
    const-string v3, "isActiveWifiNetwork: network info null"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return v1

    .line 381
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    move v1, v3

    :cond_2
    return v1
.end method

.method private isWifiOffloadEnabledFromSystemProperty()Z
    .locals 2

    .line 279
    const-string v0, "persist.vendor.mtk_enable_keep_alive_offload"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private maskString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    return-object p1

    .line 414
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 415
    .local v1, "maskLength":I
    const-string v2, "*"

    const/4 v3, 0x1

    if-ge v1, v3, :cond_1

    .line 416
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 419
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 420
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 422
    .end local v3    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private parseKeepAliveConfig([Ljava/lang/String;)Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;
    .locals 13
    .param p1, "result"    # [Ljava/lang/String;

    .line 295
    const-string v0, "PacketKeepAliveProcessor"

    if-nez p1, :cond_0

    .line 296
    const-string v1, "parseKeepAliveConfig() result is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    invoke-direct {v0, p0}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;-><init>(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;)V

    return-object v0

    .line 300
    :cond_0
    const/4 v1, 0x0

    .line 302
    .local v1, "config":Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;
    const/4 v2, 0x0

    :try_start_0
    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    move v7, v4

    goto :goto_0

    :cond_1
    move v7, v2

    .line 303
    .local v7, "enable":Z
    :goto_0
    aget-object v2, p1, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 304
    .local v8, "interval":I
    const/4 v2, 0x2

    aget-object v9, p1, v2

    .line 305
    .local v9, "srcIp":Ljava/lang/String;
    const/4 v2, 0x3

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 306
    .local v10, "srcPort":I
    const/4 v2, 0x4

    aget-object v11, p1, v2

    .line 307
    .local v11, "dstIp":Ljava/lang/String;
    const/4 v2, 0x5

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 308
    .local v12, "dstPort":I
    new-instance v2, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    move-object v5, v2

    move-object v6, p0

    invoke-direct/range {v5 .. v12}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;-><init>(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;ZILjava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 312
    .end local v7    # "enable":Z
    .end local v8    # "interval":I
    .end local v9    # "srcIp":Ljava/lang/String;
    .end local v10    # "srcPort":I
    .end local v11    # "dstIp":Ljava/lang/String;
    .end local v12    # "dstPort":I
    goto :goto_1

    .line 310
    :catch_0
    move-exception v2

    .line 311
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseKeepAliveConfig() exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseKeepAliveConfig() config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-object v1
.end method


# virtual methods
.method findConfigInList(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;)Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;
    .locals 3
    .param p1, "config"    # Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    .line 395
    iget-object v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mKeepAlives:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;

    .line 396
    .local v1, "kai":Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;
    invoke-virtual {v1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;->getConfig()Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findConfigInList found config: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PacketKeepAliveProcessor"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    return-object v1

    .line 400
    .end local v1    # "kai":Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;
    :cond_0
    goto :goto_0

    .line 401
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleKeepAliveChanged([Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # [Ljava/lang/String;

    .line 260
    invoke-direct {p0}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->isWifiOffloadEnabledFromSystemProperty()Z

    move-result v0

    const-string v1, "PacketKeepAliveProcessor"

    if-nez v0, :cond_0

    .line 261
    const-string v0, "mtk_enable_keep_alive_offload is disabled by System Property."

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void

    .line 265
    :cond_0
    const-string v0, "handleKeepAliveChanged"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->parseKeepAliveConfig([Ljava/lang/String;)Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    move-result-object v0

    .line 267
    .local v0, "config":Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;
    if-nez v0, :cond_1

    .line 268
    const-string v2, "KeepAliveConfig is null, return directly"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void

    .line 271
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->isEnabledAndAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 272
    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->startPacketKeepAlive(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;)V

    goto :goto_0

    .line 274
    :cond_2
    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->stopPacketKeepAlive(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;)V

    .line 276
    :goto_0
    return-void
.end method

.method public notifyWifiDisconnect()V
    .locals 0

    .line 256
    invoke-virtual {p0}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->stopAllPacketKeepAlive()V

    .line 257
    return-void
.end method

.method startPacketKeepAlive(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;)V
    .locals 11
    .param p1, "config"    # Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    .line 318
    iget-object v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string v1, "PacketKeepAliveProcessor"

    if-nez v0, :cond_0

    .line 319
    const-string v0, "ConnectivityManager is null"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mKeepAlives:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startNattKeepalive cannot start! Due to mKeepAlives.size() >=3, size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mKeepAlives:Ljava/util/ArrayList;

    .line 325
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return-void

    .line 329
    :cond_1
    new-instance v0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;-><init>(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;)V

    .line 330
    .local v0, "callback":Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;
    iget-object v2, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v9

    .line 331
    .local v9, "network":Landroid/net/Network;
    invoke-direct {p0, v9}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->isActiveWifiNetwork(Landroid/net/Network;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 333
    :try_start_0
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    move-object v10, v2

    .line 334
    .local v10, "socket":Ljava/net/Socket;
    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p1, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->srcIp:Ljava/net/InetAddress;

    iget v4, p1, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->srcPort:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v10, v2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 335
    invoke-static {v10}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 336
    .local v4, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v10}, Ljava/net/Socket;->close()V

    .line 339
    iget-object v2, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v5, p1, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->srcIp:Ljava/net/InetAddress;

    iget-object v6, p1, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->dstIp:Ljava/net/InetAddress;

    .line 341
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    .line 339
    move-object v3, v9

    move-object v8, v0

    invoke-virtual/range {v2 .. v8}, Landroid/net/ConnectivityManager;->createNattKeepalive(Landroid/net/Network;Landroid/os/ParcelFileDescriptor;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/util/concurrent/Executor;Landroid/net/SocketKeepalive$Callback;)Landroid/net/SocketKeepalive;

    move-result-object v2

    .line 342
    .local v2, "ka":Landroid/net/SocketKeepalive;
    iget v3, p1, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->interval:I

    invoke-virtual {v2, v3}, Landroid/net/SocketKeepalive;->start(I)V

    .line 343
    new-instance v3, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;

    invoke-direct {v3, p0, v2, p1, v0}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;-><init>(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;Landroid/net/SocketKeepalive;Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$WfcKeepAliveCallback;)V

    .line 344
    .local v3, "kai":Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;
    iget-object v5, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mKeepAlives:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    nop

    .end local v2    # "ka":Landroid/net/SocketKeepalive;
    .end local v3    # "kai":Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;
    .end local v4    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v10    # "socket":Ljava/net/Socket;
    goto :goto_0

    .line 345
    :catch_0
    move-exception v2

    .line 346
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startPacketKeepAlive exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 352
    :goto_0
    return-void

    .line 349
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "It\'s not a active wifi network, network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return-void
.end method

.method stopAllPacketKeepAlive()V
    .locals 2

    .line 385
    const-string v0, "PacketKeepAliveProcessor"

    const-string v1, "stopAllPacketKeepAlive"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mKeepAlives:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 387
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;

    .line 389
    .local v1, "kai":Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;
    invoke-virtual {v1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;->stop()V

    .line 390
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 391
    .end local v1    # "kai":Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;
    goto :goto_0

    .line 392
    :cond_0
    return-void
.end method

.method stopAndRemoveKeepAlive(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;)V
    .locals 1
    .param p1, "kai"    # Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;

    .line 405
    invoke-virtual {p1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;->stop()V

    .line 406
    iget-object v0, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mKeepAlives:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 407
    return-void
.end method

.method stopPacketKeepAlive(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;)V
    .locals 4
    .param p1, "config"    # Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;

    .line 355
    const-string v0, "PacketKeepAliveProcessor"

    const-string v1, "stopPacketKeepAlive"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v1, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    .line 357
    const-string v1, "ConnectivityManager is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void

    .line 360
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->findConfigInList(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;)Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;

    move-result-object v0

    .line 361
    .local v0, "foundKai":Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;
    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {p0, v0}, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->stopAndRemoveKeepAlive(Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveInfo;)V

    goto :goto_0

    .line 365
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor$KeepAliveConfig;->enable:Z

    .line 366
    iget-object v2, p0, Lcom/mediatek/wfo/util/PacketKeepAliveProcessor;->mWifiPdnHandler:Landroid/os/Handler;

    const/16 v3, 0x3ef

    invoke-virtual {v2, v3, v1, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 369
    :goto_0
    return-void
.end method
