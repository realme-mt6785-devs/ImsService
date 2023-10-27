.class public Lcom/mediatek/wfo/impl/MwiService;
.super Lcom/mediatek/wfo/IMwiService$Stub;
.source "MwiService.java"


# static fields
.field static final MWIS_LOG_TAG:Ljava/lang/String; = "MWIS"

.field private static final VDBG:Z = true

.field private static mInstance:Lcom/mediatek/wfo/impl/MwiService;

.field private static mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;


# instance fields
.field private mContext:Landroid/content/Context;

.field mHandlerThread:Landroid/os/HandlerThread;

.field private mMultiSimConfigChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

.field private mSimCount:I

.field private mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

.field private mWfcLocationHandler:Lcom/mediatek/wfo/impl/WfcLocationHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/wfo/impl/MwiService;->mInstance:Lcom/mediatek/wfo/impl/MwiService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 89
    invoke-direct {p0}, Lcom/mediatek/wfo/IMwiService$Stub;-><init>()V

    .line 76
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MwiServiceHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/MwiService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 128
    new-instance v0, Lcom/mediatek/wfo/impl/MwiService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/wfo/impl/MwiService$1;-><init>(Lcom/mediatek/wfo/impl/MwiService;)V

    iput-object v0, p0, Lcom/mediatek/wfo/impl/MwiService;->mMultiSimConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    const-string v0, "Construct MwiService"

    invoke-static {v0}, Lcom/mediatek/wfo/impl/MwiService;->logd(Ljava/lang/String;)V

    .line 91
    iput-object p1, p0, Lcom/mediatek/wfo/impl/MwiService;->mContext:Landroid/content/Context;

    .line 93
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 94
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    iput v1, p0, Lcom/mediatek/wfo/impl/MwiService;->mSimCount:I

    goto :goto_0

    .line 97
    :cond_0
    const-string v1, "telephonyManager = null"

    invoke-static {v1}, Lcom/mediatek/wfo/impl/MwiService;->logd(Ljava/lang/String;)V

    .line 99
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/wfo/impl/MwiService;->mSimCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/wfo/impl/MwiService;->logd(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/mediatek/wfo/impl/MwiService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 106
    iget v1, p0, Lcom/mediatek/wfo/impl/MwiService;->mSimCount:I

    new-array v1, v1, [Lcom/mediatek/wfo/ril/MwiRIL;

    iput-object v1, p0, Lcom/mediatek/wfo/impl/MwiService;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    .line 107
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lcom/mediatek/wfo/impl/MwiService;->mSimCount:I

    if-ge v1, v2, :cond_1

    .line 108
    iget-object v2, p0, Lcom/mediatek/wfo/impl/MwiService;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    new-instance v3, Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v4, p0, Lcom/mediatek/wfo/impl/MwiService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p1, v1, v4}, Lcom/mediatek/wfo/ril/MwiRIL;-><init>(Landroid/content/Context;ILandroid/os/Looper;)V

    aput-object v3, v2, v1

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 113
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Lcom/mediatek/wfo/impl/WifiPdnHandler;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/MwiService;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/wfo/impl/MwiService;->mSimCount:I

    iget-object v4, p0, Lcom/mediatek/wfo/impl/MwiService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 114
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/wfo/impl/MwiService;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler;-><init>(Landroid/content/Context;ILandroid/os/Looper;[Lcom/mediatek/wfo/ril/MwiRIL;)V

    sput-object v1, Lcom/mediatek/wfo/impl/MwiService;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    .line 115
    iget-object v2, p0, Lcom/mediatek/wfo/impl/MwiService;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/wfo/impl/MwiService;->mSimCount:I

    iget-object v4, p0, Lcom/mediatek/wfo/impl/MwiService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 116
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/wfo/impl/MwiService;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    .line 115
    invoke-static {v2, v1, v3, v4, v5}, Lcom/mediatek/wfo/impl/WfcHandler;->getInstance(Landroid/content/Context;Lcom/mediatek/wfo/impl/WifiPdnHandler;ILandroid/os/Looper;[Lcom/mediatek/wfo/ril/MwiRIL;)Lcom/mediatek/wfo/impl/WfcHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/wfo/impl/MwiService;->mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

    .line 117
    new-instance v1, Lcom/mediatek/wfo/impl/WfcLocationHandler;

    iget-object v3, p0, Lcom/mediatek/wfo/impl/MwiService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/wfo/impl/MwiService;->mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

    sget-object v5, Lcom/mediatek/wfo/impl/MwiService;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    iget v6, p0, Lcom/mediatek/wfo/impl/MwiService;->mSimCount:I

    iget-object v2, p0, Lcom/mediatek/wfo/impl/MwiService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 118
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/wfo/impl/MwiService;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/mediatek/wfo/impl/WfcLocationHandler;-><init>(Landroid/content/Context;Lcom/mediatek/wfo/impl/WfcHandler;Lcom/mediatek/wfo/impl/WifiPdnHandler;ILandroid/os/Looper;[Lcom/mediatek/wfo/ril/MwiRIL;)V

    iput-object v1, p0, Lcom/mediatek/wfo/impl/MwiService;->mWfcLocationHandler:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    .line 120
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "processName":Ljava/lang/String;
    const-string v2, "com.mediatek.ims"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 122
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 123
    .local v2, "multiSimConfigChanged":Landroid/content/IntentFilter;
    const-string v3, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    iget-object v3, p0, Lcom/mediatek/wfo/impl/MwiService;->mMultiSimConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    .end local v2    # "multiSimConfigChanged":Landroid/content/IntentFilter;
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/wfo/impl/MwiService;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/MwiService;

    .line 62
    iget v0, p0, Lcom/mediatek/wfo/impl/MwiService;->mSimCount:I

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/wfo/impl/MwiService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/MwiService;
    .param p1, "x1"    # I

    .line 62
    iput p1, p0, Lcom/mediatek/wfo/impl/MwiService;->mSimCount:I

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/wfo/impl/MwiService;)[Lcom/mediatek/wfo/ril/MwiRIL;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/MwiService;

    .line 62
    iget-object v0, p0, Lcom/mediatek/wfo/impl/MwiService;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/wfo/impl/MwiService;[Lcom/mediatek/wfo/ril/MwiRIL;)[Lcom/mediatek/wfo/ril/MwiRIL;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/MwiService;
    .param p1, "x1"    # [Lcom/mediatek/wfo/ril/MwiRIL;

    .line 62
    iput-object p1, p0, Lcom/mediatek/wfo/impl/MwiService;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/wfo/impl/MwiService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/MwiService;

    .line 62
    iget-object v0, p0, Lcom/mediatek/wfo/impl/MwiService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Lcom/mediatek/wfo/impl/WifiPdnHandler;
    .locals 1

    .line 62
    sget-object v0, Lcom/mediatek/wfo/impl/MwiService;->mWifiPdnHandler:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/wfo/impl/MwiService;)Lcom/mediatek/wfo/impl/WfcHandler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/MwiService;

    .line 62
    iget-object v0, p0, Lcom/mediatek/wfo/impl/MwiService;->mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/wfo/impl/MwiService;)Lcom/mediatek/wfo/impl/WfcLocationHandler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wfo/impl/MwiService;

    .line 62
    iget-object v0, p0, Lcom/mediatek/wfo/impl/MwiService;->mWfcLocationHandler:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    return-object v0
.end method

.method public static getInstance()Lcom/mediatek/wfo/impl/MwiService;
    .locals 1

    .line 86
    sget-object v0, Lcom/mediatek/wfo/impl/MwiService;->mInstance:Lcom/mediatek/wfo/impl/MwiService;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mediatek/wfo/impl/MwiService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 79
    sget-object v0, Lcom/mediatek/wfo/impl/MwiService;->mInstance:Lcom/mediatek/wfo/impl/MwiService;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/mediatek/wfo/impl/MwiService;

    invoke-direct {v0, p0}, Lcom/mediatek/wfo/impl/MwiService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/wfo/impl/MwiService;->mInstance:Lcom/mediatek/wfo/impl/MwiService;

    .line 82
    :cond_0
    sget-object v0, Lcom/mediatek/wfo/impl/MwiService;->mInstance:Lcom/mediatek/wfo/impl/MwiService;

    return-object v0
.end method

.method private is93RilMode()Z
    .locals 2

    .line 168
    const-string v0, "ro.vendor.mtk_ril_mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "c6m_1rild"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const/4 v0, 0x1

    return v0

    .line 171
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .param p0, "l"    # Ljava/lang/String;

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MwiService] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MWIS"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 181
    const-string v0, "dispose()"

    invoke-static {v0}, Lcom/mediatek/wfo/impl/MwiService;->logd(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/mediatek/wfo/impl/MwiService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 183
    iget-object v0, p0, Lcom/mediatek/wfo/impl/MwiService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 184
    return-void
.end method

.method public getMwiRIL(I)Lcom/mediatek/wfo/ril/MwiRIL;
    .locals 2
    .param p1, "slotId"    # I

    .line 160
    iget v0, p0, Lcom/mediatek/wfo/impl/MwiService;->mSimCount:I

    if-lt p1, v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Out of the bounds, slotId is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MWIS"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v0, 0x0

    return-object v0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/MwiService;->mMwiRil:[Lcom/mediatek/wfo/ril/MwiRIL;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getWfcHandlerInterface()Lcom/mediatek/wfo/IWifiOffloadService;
    .locals 1

    .line 176
    const-string v0, "getWfcHandlerInterface"

    invoke-static {v0}, Lcom/mediatek/wfo/impl/MwiService;->logd(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/mediatek/wfo/impl/MwiService;->mWfcHandler:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-virtual {v0}, Lcom/mediatek/wfo/impl/WfcHandler;->getWfoInterface()Lcom/mediatek/wfo/IWifiOffloadService;

    move-result-object v0

    return-object v0
.end method
