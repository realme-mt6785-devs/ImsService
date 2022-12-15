.class Lcom/mediatek/wfo/impl/PingDns$SimpleSocketCheck;
.super Ljava/lang/Object;
.source "PingDns.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/PingDns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleSocketCheck"
.end annotation


# instance fields
.field protected final mAddressFamily:I

.field protected mFileDescriptor:Ljava/io/FileDescriptor;

.field protected mSocketAddress:Ljava/net/SocketAddress;

.field protected final mTarget:Ljava/net/InetAddress;

.field final synthetic this$0:Lcom/mediatek/wfo/impl/PingDns;


# direct methods
.method protected constructor <init>(Lcom/mediatek/wfo/impl/PingDns;Ljava/net/InetAddress;)V
    .locals 4
    .param p2, "target"    # Ljava/net/InetAddress;

    .line 270
    iput-object p1, p0, Lcom/mediatek/wfo/impl/PingDns$SimpleSocketCheck;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/wfo/impl/PingDns$SimpleSocketCheck;->mSocketAddress:Ljava/net/SocketAddress;

    .line 271
    instance-of v1, p2, Ljava/net/Inet6Address;

    if-eqz v1, :cond_2

    .line 272
    const/4 v1, 0x0

    .line 273
    .local v1, "targetWithScopeId":Ljava/net/Inet6Address;
    invoke-virtual {p2}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/mediatek/wfo/impl/PingDns;->access$400()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 275
    nop

    .line 276
    :try_start_0
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-static {}, Lcom/mediatek/wfo/impl/PingDns;->access$400()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 275
    invoke-static {v0, v2, v3}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 279
    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "err in SimpleSocketCheck:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/mediatek/wfo/impl/PingDns;->access$500(Lcom/mediatek/wfo/impl/PingDns;Ljava/lang/String;)V

    .line 281
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, p2

    :goto_1
    iput-object v0, p0, Lcom/mediatek/wfo/impl/PingDns$SimpleSocketCheck;->mTarget:Ljava/net/InetAddress;

    .line 282
    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    iput v0, p0, Lcom/mediatek/wfo/impl/PingDns$SimpleSocketCheck;->mAddressFamily:I

    .line 283
    .end local v1    # "targetWithScopeId":Ljava/net/Inet6Address;
    goto :goto_2

    .line 284
    :cond_2
    iput-object p2, p0, Lcom/mediatek/wfo/impl/PingDns$SimpleSocketCheck;->mTarget:Ljava/net/InetAddress;

    .line 285
    sget v0, Landroid/system/OsConstants;->AF_INET:I

    iput v0, p0, Lcom/mediatek/wfo/impl/PingDns$SimpleSocketCheck;->mAddressFamily:I

    .line 287
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAddressFamily : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/wfo/impl/PingDns$SimpleSocketCheck;->mAddressFamily:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mediatek/wfo/impl/PingDns;->access$100(Lcom/mediatek/wfo/impl/PingDns;Ljava/lang/String;)V

    .line 288
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/mediatek/wfo/impl/PingDns$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 327
    return-void
.end method

.method protected getSocketAddressString()Ljava/lang/String;
    .locals 7

    .line 312
    const-string v0, "null"

    .line 313
    .local v0, "socAddr":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/PingDns$SimpleSocketCheck;->mSocketAddress:Ljava/net/SocketAddress;

    if-eqz v1, :cond_1

    .line 314
    check-cast v1, Ljava/net/InetSocketAddress;

    .line 315
    .local v1, "inetSockAddr":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 317
    .local v2, "localAddr":Ljava/net/InetAddress;
    instance-of v3, v2, Ljava/net/Inet6Address;

    if-eqz v3, :cond_0

    const-string v3, "[%s]:%d"

    goto :goto_0

    :cond_0
    const-string v3, "%s:%d"

    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 318
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 316
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 320
    .end local v1    # "inetSockAddr":Ljava/net/InetSocketAddress;
    .end local v2    # "localAddr":Ljava/net/InetAddress;
    :cond_1
    return-object v0
.end method

.method protected setupSocket(IIJJI)V
    .locals 4
    .param p1, "sockType"    # I
    .param p2, "protocol"    # I
    .param p3, "writeTimeout"    # J
    .param p5, "readTimeout"    # J
    .param p7, "dstPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/mediatek/wfo/impl/PingDns$SimpleSocketCheck;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupSocket: sockType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", protocol ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mAddressFamily"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/wfo/impl/PingDns$SimpleSocketCheck;->mAddressFamily:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/wfo/impl/PingDns;->access$100(Lcom/mediatek/wfo/impl/PingDns;Ljava/lang/String;)V

    .line 296
    iget v0, p0, Lcom/mediatek/wfo/impl/PingDns$SimpleSocketCheck;->mAddressFamily:I

    invoke-static {v0, p1, p2}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wfo/impl/PingDns$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 298
    sget v1, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v2, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    .line 299
    invoke-static {p3, p4}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v3

    .line 298
    invoke-static {v0, v1, v2, v3}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 300
    iget-object v0, p0, Lcom/mediatek/wfo/impl/PingDns$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    sget v1, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v2, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    .line 301
    invoke-static {p5, p6}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v3

    .line 300
    invoke-static {v0, v1, v2, v3}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 303
    iget-object v0, p0, Lcom/mediatek/wfo/impl/PingDns$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/system/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 304
    .local v0, "local":Ljava/net/InetSocketAddress;
    iget-object v1, p0, Lcom/mediatek/wfo/impl/PingDns$SimpleSocketCheck;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupSocket: sockname = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", PORT = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", fd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/wfo/impl/PingDns$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/wfo/impl/PingDns;->access$100(Lcom/mediatek/wfo/impl/PingDns;Ljava/lang/String;)V

    .line 306
    iget-object v1, p0, Lcom/mediatek/wfo/impl/PingDns$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/PingDns$SimpleSocketCheck;->mTarget:Ljava/net/InetAddress;

    invoke-static {v1, v2, p7}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 307
    iget-object v1, p0, Lcom/mediatek/wfo/impl/PingDns$SimpleSocketCheck;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    const-string v2, "socket connect succssfully"

    invoke-static {v1, v2}, Lcom/mediatek/wfo/impl/PingDns;->access$100(Lcom/mediatek/wfo/impl/PingDns;Ljava/lang/String;)V

    .line 308
    return-void
.end method
