.class public Lcom/mediatek/wfo/util/RssiMonitoringProcessor;
.super Ljava/lang/Object;
.source "RssiMonitoringProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wfo/util/RssiMonitoringProcessor$RssiMonitorRequest;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "RssiMonitoringProcessor"


# instance fields
.field mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mRssiMonitoringList:[[Lcom/mediatek/wfo/util/RssiMonitoringProcessor$RssiMonitorRequest;

.field mSimCount:I


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager;)V
    .locals 0
    .param p1, "connectivityManager"    # Landroid/net/ConnectivityManager;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 67
    return-void
.end method

.method private checkInvalidSimIdx(ILjava/lang/String;)Z
    .locals 1
    .param p1, "simIdx"    # I
    .param p2, "dbgMsg"    # Ljava/lang/String;

    .line 138
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;->mSimCount:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 139
    :cond_1
    :goto_0
    const-string v0, "RssiMonitoringProcessor"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method private printIntArray([I)Ljava/lang/String;
    .locals 4
    .param p1, "input"    # [I

    .line 116
    if-nez p1, :cond_0

    const-string v0, "input is null"

    return-object v0

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 118
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 119
    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 120
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method


# virtual methods
.method public initialize(I)V
    .locals 1
    .param p1, "simCount"    # I

    .line 70
    iput p1, p0, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;->mSimCount:I

    .line 71
    new-array v0, p1, [[Lcom/mediatek/wfo/util/RssiMonitoringProcessor$RssiMonitorRequest;

    iput-object v0, p0, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;->mRssiMonitoringList:[[Lcom/mediatek/wfo/util/RssiMonitoringProcessor$RssiMonitorRequest;

    .line 72
    return-void
.end method

.method public notifyMultiSimConfigChanged(I)V
    .locals 2
    .param p1, "activeModemCount"    # I

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyMultiSimConfigChanged, phone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;->mSimCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RssiMonitoringProcessor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iput p1, p0, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;->mSimCount:I

    .line 77
    iget-object v0, p0, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;->mRssiMonitoringList:[[Lcom/mediatek/wfo/util/RssiMonitoringProcessor$RssiMonitorRequest;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/mediatek/wfo/util/RssiMonitoringProcessor$RssiMonitorRequest;

    iput-object v0, p0, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;->mRssiMonitoringList:[[Lcom/mediatek/wfo/util/RssiMonitoringProcessor$RssiMonitorRequest;

    .line 78
    return-void
.end method

.method public registerRssiMonitoring(II[I)V
    .locals 7
    .param p1, "simId"    # I
    .param p2, "size"    # I
    .param p3, "rssiThresholds"    # [I

    .line 84
    const-string v0, "onRssiMonitorRequest: invalid SIM id"

    invoke-direct {p0, p1, v0}, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;->checkInvalidSimIdx(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRssiMonitorRequest simId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rssiThresholds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-direct {p0, p3}, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;->printIntArray([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    const-string v1, "RssiMonitoringProcessor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    .line 90
    const-string v0, "onRssiMonitorRequest: mConnectivityManager is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void

    .line 94
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;->unregisterAllRssiMonitoring(I)V

    .line 96
    new-array v0, p2, [Lcom/mediatek/wfo/util/RssiMonitoringProcessor$RssiMonitorRequest;

    .line 97
    .local v0, "newList":[Lcom/mediatek/wfo/util/RssiMonitoringProcessor$RssiMonitorRequest;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_2

    .line 99
    new-instance v3, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v3}, Landroid/net/NetworkRequest$Builder;-><init>()V

    aget v4, p3, v2

    .line 100
    invoke-virtual {v3, v4}, Landroid/net/NetworkRequest$Builder;->setSignalStrength(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v3

    .line 101
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v3

    .line 102
    invoke-virtual {v3}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v3

    .line 103
    .local v3, "request":Landroid/net/NetworkRequest;
    new-instance v4, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {v4}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 107
    .local v4, "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    iget-object v5, p0, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v3, v4}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 108
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRssiMonitorRequest registerNetworkCallback with rssi: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, p3, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v5, Lcom/mediatek/wfo/util/RssiMonitoringProcessor$RssiMonitorRequest;

    invoke-direct {v5, p0, v3, v4}, Lcom/mediatek/wfo/util/RssiMonitoringProcessor$RssiMonitorRequest;-><init>(Lcom/mediatek/wfo/util/RssiMonitoringProcessor;Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    aput-object v5, v0, v2

    .line 97
    .end local v3    # "request":Landroid/net/NetworkRequest;
    .end local v4    # "callback":Landroid/net/ConnectivityManager$NetworkCallback;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    .end local v2    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;->mRssiMonitoringList:[[Lcom/mediatek/wfo/util/RssiMonitoringProcessor$RssiMonitorRequest;

    aput-object v0, v1, p1

    .line 113
    return-void
.end method

.method public unregisterAllRssiMonitoring(I)V
    .locals 3
    .param p1, "simId"    # I

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterAllRssiMonitoring(), simId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RssiMonitoringProcessor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;->mRssiMonitoringList:[[Lcom/mediatek/wfo/util/RssiMonitoringProcessor$RssiMonitorRequest;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;->mRssiMonitoringList:[[Lcom/mediatek/wfo/util/RssiMonitoringProcessor$RssiMonitorRequest;

    aget-object v2, v1, p1

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/mediatek/wfo/util/RssiMonitoringProcessor;->mConnectivityManager:Landroid/net/ConnectivityManager;

    aget-object v1, v1, p1

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/mediatek/wfo/util/RssiMonitoringProcessor$RssiMonitorRequest;->mCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    aput-object v0, v1, p1

    .line 135
    :cond_1
    return-void
.end method
