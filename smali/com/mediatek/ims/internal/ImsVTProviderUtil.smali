.class public Lcom/mediatek/ims/internal/ImsVTProviderUtil;
.super Ljava/lang/Object;
.source "ImsVTProviderUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTMessagePacker;,
        Lcom/mediatek/ims/internal/ImsVTProviderUtil$NetworkAvailableCallback;,
        Lcom/mediatek/ims/internal/ImsVTProviderUtil$SimStateReceiver;,
        Lcom/mediatek/ims/internal/ImsVTProviderUtil$VTPhoneStateListener;,
        Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;,
        Lcom/mediatek/ims/internal/ImsVTProviderUtil$Size;
    }
.end annotation


# static fields
.field public static final CALL_RAT_LTE:I = 0x0

.field public static final CALL_RAT_NR:I = 0x2

.field public static final CALL_RAT_WIFI:I = 0x1

.field private static final EXTRA_PHONE_ID:Ljava/lang/String; = "phone_id"

.field public static final HIDE_ME_TYPE_DISABLE:I = 0x1

.field public static final HIDE_ME_TYPE_FREEZE:I = 0x2

.field public static final HIDE_ME_TYPE_NONE:I = 0x0

.field public static final HIDE_ME_TYPE_PICTURE:I = 0x3

.field public static final HIDE_YOU_TYPE_DISABLE:I = 0x0

.field public static final HIDE_YOU_TYPE_ENABLE:I = 0x1

.field private static final MSG_BIND:I = 0x2

.field private static final MSG_INIT_REFVTP:I = 0x1

.field private static final MSG_REINIT_REFVTP:I = 0x7

.field private static final MSG_RESET_WRAPPER:I = 0x6

.field private static final MSG_SETUIMODE:I = 0x3

.field private static final MSG_SWITCH_FEATURE:I = 0x4

.field private static final MSG_SWITCH_ROAMING:I = 0x5

.field private static final MSG_TRIGGER_OPERATOR_ID:I = 0x8

.field public static final PROPERTY_MAX_DRAM_SIZE:Ljava/lang/String; = "ro.vendor.mtk_config_max_dram_size"

.field private static final PROPERTY_NO_CAMERA_MODE:Ljava/lang/String; = "persist.vendor.vt.no_camera_mode"

.field public static final PROPERTY_RIL_ICCID_SIM:Ljava/lang/String; = "vendor.ril.iccid.sim"

.field public static final PROPERTY_TEL_LOG:Ljava/lang/String; = "persist.log.tag.tel_dbg"

.field private static final PROPERTY_VILTE_ENABLE:Ljava/lang/String; = "persist.vendor.mtk.vilte.enable"

.field private static final PROPERTY_VIWIFI_ENABLE:Ljava/lang/String; = "persist.vendor.mtk.viwifi.enable"

.field private static final SIM_NUM:I

.field private static final TAG:Ljava/lang/String; = "ImsVT Util"

.field public static final TAG_VILTE_MOBILE:I = -0x1000000

.field public static final TAG_VILTE_WIFI:I = -0xf00000

.field public static final TURN_OFF_CAMERA:I = -0x1

.field public static final UI_MODE_BG:I = 0x1

.field public static final UI_MODE_CAMERA_STREAM:I = 0x5

.field public static final UI_MODE_DESTROY:I = 0x10000

.field public static final UI_MODE_FG:I = 0x0

.field public static final UI_MODE_FULL_SCREEN:I = 0x2

.field public static final UI_MODE_IMAGE_STREAM:I = 0x4

.field public static final UI_MODE_NORMAL_SCREEN:I = 0x3

.field public static final UI_MODE_RESET:I = 0x6

.field public static final UI_MODE_UNCHANGED:I = -0x1

.field private static final VILTE_SUPPORT:Ljava/lang/String; = "persist.vendor.vilte_support"

.field private static final VIWIFI_SUPPORT:Ljava/lang/String; = "persist.vendor.viwifi_support"

.field public static final VT_SIM_ID_ABSENT:I = -0x1

.field private static mInstance:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

.field public static sIsNoCameraMode:Z


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field public mContext:Landroid/content/Context;

.field private mDataUsageById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mFeatureValueReceiver:Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;

.field private mNetworkAvailableCallback:Lcom/mediatek/ims/internal/ImsVTProviderUtil$NetworkAvailableCallback;

.field private mPacker:Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTMessagePacker;

.field private mPhoneServicesStateListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/PhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderHandler:Landroid/os/Handler;

.field protected mProviderHandlerThread:Landroid/os/HandlerThread;

.field private mSimAppState:[I

.field private mSimCardState:[I

.field private mSimReadyVariable:[Landroid/os/ConditionVariable;

.field private mSimStateReceiver:Lcom/mediatek/ims/internal/ImsVTProviderUtil$SimStateReceiver;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSubscriptionsChangedlistener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 131
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->SIM_NUM:I

    .line 181
    nop

    .line 182
    const-string v0, "persist.vendor.vt.no_camera_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->sIsNoCameraMode:Z

    .line 523
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getInstance()Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mInstance:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTMessagePacker;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTMessagePacker;-><init>(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mPacker:Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTMessagePacker;

    .line 496
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    .line 497
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mDataUsageById:Ljava/util/Map;

    .line 499
    sget v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->SIM_NUM:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimCardState:[I

    .line 500
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimAppState:[I

    .line 501
    new-array v0, v0, [Landroid/os/ConditionVariable;

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimReadyVariable:[Landroid/os/ConditionVariable;

    .line 512
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mPhoneServicesStateListeners:Ljava/util/Map;

    .line 513
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$1;-><init>(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSubscriptionsChangedlistener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 527
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ProviderHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderHandlerThread:Landroid/os/HandlerThread;

    .line 528
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 530
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$2;

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$2;-><init>(Lcom/mediatek/ims/internal/ImsVTProviderUtil;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderHandler:Landroid/os/Handler;

    .line 616
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;-><init>(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mFeatureValueReceiver:Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;

    .line 617
    invoke-virtual {v0, p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->setOwner(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)V

    .line 619
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 620
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimCardState:[I

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;->getSimCardState(I)I

    move-result v2

    aput v2, v1, v0

    .line 621
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimAppState:[I

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;->getSimApplicationState(I)I

    move-result v2

    aput v2, v1, v0

    .line 622
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimReadyVariable:[Landroid/os/ConditionVariable;

    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    aput-object v2, v1, v0

    .line 619
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 625
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$SimStateReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$SimStateReceiver;-><init>(Lcom/mediatek/ims/internal/ImsVTProviderUtil;Lcom/mediatek/ims/internal/ImsVTProviderUtil$1;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimStateReceiver:Lcom/mediatek/ims/internal/ImsVTProviderUtil$SimStateReceiver;

    .line 626
    invoke-virtual {v0, p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$SimStateReceiver;->setOwner(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)V

    .line 628
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$NetworkAvailableCallback;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$NetworkAvailableCallback;-><init>(Lcom/mediatek/ims/internal/ImsVTProviderUtil;Lcom/mediatek/ims/internal/ImsVTProviderUtil$1;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mNetworkAvailableCallback:Lcom/mediatek/ims/internal/ImsVTProviderUtil$NetworkAvailableCallback;

    .line 629
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 119
    sget v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->SIM_NUM:I

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)[Landroid/os/ConditionVariable;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 119
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimReadyVariable:[Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 119
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 119
    invoke-direct {p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->updateServiceStateListeners()V

    return-void
.end method

.method public static getInstance()Lcom/mediatek/ims/internal/ImsVTProviderUtil;
    .locals 2

    .line 632
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mInstance:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    if-nez v0, :cond_0

    .line 633
    const-class v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    monitor-enter v0

    .line 634
    :try_start_0
    new-instance v1, Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-direct {v1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;-><init>()V

    sput-object v1, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mInstance:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 635
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 637
    :cond_0
    :goto_0
    sget-object v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mInstance:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    return-object v0
.end method

.method public static is512mbProject()Z
    .locals 2

    .line 863
    const-string v0, "ro.vendor.mtk_config_max_dram_size"

    const-string v1, "0x40000000"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x20000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCameraAvailable()Z
    .locals 2

    .line 874
    invoke-static {}, Lcom/mediatek/ims/internal/VTSource;->getAllCameraResolutions()[Lcom/mediatek/ims/internal/VTSource$Resolution;

    move-result-object v0

    .line 876
    .local v0, "cams_info":[Lcom/mediatek/ims/internal/VTSource$Resolution;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isTelephonyLogEnable()Z
    .locals 2

    .line 880
    const-string v0, "persist.log.tag.tel_dbg"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isVideoCallOnByPlatform()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isVideoCallOnByPlatform_nope()Z
    .locals 3

    .line 857
    const-string v0, "persist.vendor.vilte_support"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 858
    const-string v0, "persist.vendor.viwifi_support"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 857
    :goto_1
    return v0
.end method

.method public static isVideoQualityTestMode()Z
    .locals 4

    .line 868
    const-string v0, "persist.vendor.vt.lab_op_code"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 869
    .local v0, "labOp":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method private updateServiceStateListeners()V
    .locals 9

    .line 653
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const-string v1, "ImsVT Util"

    if-nez v0, :cond_0

    .line 654
    const-string v0, "[updateServiceStateListeners] Unexpected error, mSubscriptionManager=null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    return-void

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    .line 659
    const-string v0, "[updateServiceStateListeners] Unexpected error, mTelephonyManager=null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    return-void

    .line 663
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mPhoneServicesStateListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 664
    .local v0, "unUsedSubscriptions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 666
    .local v2, "slist":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v2, :cond_3

    .line 668
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 670
    .local v4, "subInfoRecord":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    .line 672
    .local v5, "subId":I
    iget-object v6, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mPhoneServicesStateListeners:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    .line 675
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[updateServiceStateListeners] create ServicesStateListener for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    new-instance v6, Lcom/mediatek/ims/internal/ImsVTProviderUtil$VTPhoneStateListener;

    invoke-direct {v6, p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$VTPhoneStateListener;-><init>(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)V

    .line 679
    .local v6, "listener":Lcom/mediatek/ims/internal/ImsVTProviderUtil$VTPhoneStateListener;
    iget-object v7, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v6, v8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 680
    iget-object v7, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mPhoneServicesStateListeners:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    .end local v6    # "listener":Lcom/mediatek/ims/internal/ImsVTProviderUtil$VTPhoneStateListener;
    goto :goto_1

    .line 686
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 688
    .end local v4    # "subInfoRecord":Landroid/telephony/SubscriptionInfo;
    .end local v5    # "subId":I
    :goto_1
    goto :goto_0

    .line 691
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 692
    .local v4, "key":Ljava/lang/Integer;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[updateServiceStateListeners] remove unused ServicesStateListener for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mPhoneServicesStateListeners:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/PhoneStateListener;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 694
    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mPhoneServicesStateListeners:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    .end local v4    # "key":Ljava/lang/Integer;
    goto :goto_2

    .line 697
    :cond_4
    return-void
.end method


# virtual methods
.method public bind(Lcom/mediatek/ims/internal/ImsVTProvider;II)V
    .locals 3
    .param p1, "p"    # Lcom/mediatek/ims/internal/ImsVTProvider;
    .param p2, "CallId"    # I
    .param p3, "PhoneId"    # I

    .line 895
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 896
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 897
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 898
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 899
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 900
    return-void
.end method

.method public bindInternal(Lcom/mediatek/ims/internal/ImsVTProvider;II)V
    .locals 0

    return-void
.end method

.method public bindInternal_nope(Lcom/mediatek/ims/internal/ImsVTProvider;II)V
    .locals 8
    .param p1, "p"    # Lcom/mediatek/ims/internal/ImsVTProvider;
    .param p2, "CallId"    # I
    .param p3, "PhoneId"    # I

    .line 986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindInternal(), vtp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", phone id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Util"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    iget v0, p1, Lcom/mediatek/ims/internal/ImsVTProvider;->mMode:I

    const/high16 v2, 0x10000

    if-ne v2, v0, :cond_0

    .line 990
    const-string v0, "Ignore bind ImsVTProvider because UI_MODE_DESTROY"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    return-void

    .line 994
    :cond_0
    if-nez p1, :cond_1

    .line 995
    const-string v0, "ImsVTProvider == null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    return-void

    .line 1002
    :cond_1
    move v0, p2

    .line 1003
    .local v0, "id":I
    const/4 v2, 0x1

    .line 1005
    .local v2, "ImsCount":I
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/ims/ImsService;->getModemMultiImsCount()I

    move-result v2

    .line 1006
    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 1007
    shl-int/lit8 v4, p3, 0x10

    or-int v0, v4, p2

    .line 1010
    :cond_2
    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v4

    const/16 v5, -0x2710

    if-ne v4, v5, :cond_6

    .line 1015
    const/4 v4, 0x0

    .line 1016
    .local v4, "wait_time":I
    const-string v5, "bind ImsVTProvider check if exist the same id"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_3
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordGet(I)Lcom/mediatek/ims/internal/ImsVTProvider;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1018
    const-string v5, "bind ImsVTProvider the same id exist, wait ..."

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const-wide/16 v5, 0x190

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1023
    goto :goto_0

    .line 1022
    :catch_0
    move-exception v5

    .line 1025
    :goto_0
    add-int/lit8 v4, v4, 0x1

    .line 1026
    const/16 v5, 0xa

    if-le v4, v5, :cond_3

    .line 1027
    const-string v5, "bind ImsVTProvider the same id exist, break!"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :cond_4
    invoke-virtual {p1, v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->setId(I)V

    .line 1033
    invoke-virtual {p1, p3}, Lcom/mediatek/ims/internal/ImsVTProvider;->setSimId(I)V

    .line 1034
    new-instance v1, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->usageGet(I)Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    move-result-object v5

    const-string v6, "Init"

    invoke-direct {v1, v6, v5}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;-><init>(Ljava/lang/String;Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V

    .line 1035
    .local v1, "initUsage":Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    iget-object v5, p1, Lcom/mediatek/ims/internal/ImsVTProvider;->mUsager:Lcom/mediatek/ims/internal/ImsVTUsageManager;

    invoke-virtual {v5, v1}, Lcom/mediatek/ims/internal/ImsVTUsageManager;->setInitUsage(Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V

    .line 1037
    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordAdd(ILcom/mediatek/ims/internal/ImsVTProvider;)V

    .line 1039
    sget-boolean v5, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->sIsNoCameraMode:Z

    if-eqz v5, :cond_5

    .line 1040
    new-instance v5, Lcom/mediatek/ims/internal/VTDummySource;

    invoke-direct {v5}, Lcom/mediatek/ims/internal/VTDummySource;-><init>()V

    iput-object v5, p1, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    goto :goto_1

    .line 1042
    :cond_5
    new-instance v5, Lcom/mediatek/ims/internal/VTSource;

    const/4 v6, 0x2

    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v7

    invoke-direct {v5, v6, v7, p1}, Lcom/mediatek/ims/internal/VTSource;-><init>(IILcom/mediatek/ims/internal/VTSource$EventCallback;)V

    iput-object v5, p1, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    .line 1046
    :goto_1
    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSimId()I

    move-result v5

    invoke-static {v0, v5}, Lcom/mediatek/ims/internal/ImsVTProvider;->nInitialization(II)I

    .line 1047
    iput-boolean v3, p1, Lcom/mediatek/ims/internal/ImsVTProvider;->mInitComplete:Z

    .line 1049
    .end local v1    # "initUsage":Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    .end local v4    # "wait_time":I
    :cond_6
    return-void
.end method

.method public getBooleanFromCarrierConfig(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "simId"    # I

    .line 1098
    invoke-static {p2}, Lcom/mediatek/ims/common/SubscriptionManagerHelper;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 1099
    .local v0, "subId":I
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    .line 1100
    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 1101
    .local v1, "configMgr":Landroid/telephony/CarrierConfigManager;
    nop

    .line 1102
    invoke-virtual {v1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 1103
    .local v2, "carrierConfig":Landroid/os/PersistableBundle;
    invoke-virtual {v2, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1104
    .local v3, "result":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBooleanFromCarrierConfig() key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ImsVT Util"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    return v3
.end method

.method public getImsExtCallUtil()Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;
    .locals 2

    .line 642
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeExtensionPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ExtensionPluginFactory;

    move-result-object v0

    .line 643
    .local v0, "facotry":Lcom/mediatek/ims/plugin/ExtensionPluginFactory;
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/plugin/ExtensionPluginFactory;->makeImsCallPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    move-result-object v1

    return-object v1
.end method

.method public getImsOemCallUtil()Lcom/mediatek/ims/plugin/ImsCallOemPlugin;
    .locals 2

    .line 648
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v0

    .line 649
    .local v0, "facotry":Lcom/mediatek/ims/plugin/OemPluginFactory;
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsCallPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsCallOemPlugin;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized getSimAppState(I)I
    .locals 1
    .param p1, "simId"    # I

    monitor-enter p0

    .line 787
    if-ltz p1, :cond_0

    :try_start_0
    sget v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->SIM_NUM:I

    if-ge p1, v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimAppState:[I

    aget v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 786
    .end local p0    # "this":Lcom/mediatek/ims/internal/ImsVTProviderUtil;
    .end local p1    # "simId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 791
    .restart local p0    # "this":Lcom/mediatek/ims/internal/ImsVTProviderUtil;
    .restart local p1    # "simId":I
    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized getSimCardState(I)I
    .locals 1
    .param p1, "simId"    # I

    monitor-enter p0

    .line 773
    if-ltz p1, :cond_0

    :try_start_0
    sget v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->SIM_NUM:I

    if-ge p1, v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimCardState:[I

    aget v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 772
    .end local p0    # "this":Lcom/mediatek/ims/internal/ImsVTProviderUtil;
    .end local p1    # "simId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 777
    .restart local p0    # "this":Lcom/mediatek/ims/internal/ImsVTProviderUtil;
    .restart local p1    # "simId":I
    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0
.end method

.method public isSimStateStable(I)Z
    .locals 3
    .param p1, "simId"    # I

    .line 801
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->getSimCardState(I)I

    move-result v0

    .line 804
    .local v0, "cardState":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v2, 0xb

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isViWifiOn(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 853
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mFeatureValueReceiver:Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->getInitViWifiValue(I)Z

    move-result v0

    return v0
.end method

.method public isVideoCallOn(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 849
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mFeatureValueReceiver:Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->getInitViLTEValue(I)Z

    move-result v0

    return v0
.end method

.method public packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;
    .locals 1
    .param p1, "VideoProfile"    # Landroid/telecom/VideoProfile;

    .line 700
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mPacker:Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTMessagePacker;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTMessagePacker;->packFromVdoProfile(Landroid/telecom/VideoProfile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public quitAllThread()V
    .locals 4

    .line 819
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 821
    .local v1, "p":Ljava/lang/Object;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quitThread, id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, v1

    check-cast v3, Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsVT Util"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    move-object v2, v1

    check-cast v2, Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->quitThread()V

    .line 823
    .end local v1    # "p":Ljava/lang/Object;
    goto :goto_0

    .line 825
    :cond_0
    return-void
.end method

.method public reInitRefVTP()V
    .locals 4

    .line 888
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 890
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 891
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 892
    return-void
.end method

.method public recordAdd(ILcom/mediatek/ims/internal/ImsVTProvider;)V
    .locals 3
    .param p1, "Id"    # I
    .param p2, "p"    # Lcom/mediatek/ims/internal/ImsVTProvider;

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recordAdd id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Util"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    return-void
.end method

.method public recordContain(I)Z
    .locals 2
    .param p1, "Id"    # I

    .line 759
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public recordGet(I)Lcom/mediatek/ims/internal/ImsVTProvider;
    .locals 3
    .param p1, "Id"    # I

    .line 742
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isTelephonyLogEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recordGet id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Util"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/ImsVTProvider;

    return-object v0
.end method

.method public recordPopId()I
    .locals 2

    .line 750
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 752
    .local v0, "p":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v1}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v1

    return v1

    .line 755
    .end local v0    # "p":Ljava/lang/Object;
    :cond_0
    const/16 v0, -0x2710

    return v0
.end method

.method public recordRemove(I)V
    .locals 3
    .param p1, "Id"    # I

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recordRemove id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Util"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    return-void
.end method

.method public recordRemoveAll()V
    .locals 2

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recordRemoveAll, size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->recordSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Util"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 738
    return-void
.end method

.method public recordSize()I
    .locals 1

    .line 763
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public registerNetworkRequestWithCallback(I)V
    .locals 4
    .param p1, "cap"    # I

    .line 971
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 972
    .local v0, "builder":Landroid/net/NetworkRequest$Builder;
    invoke-virtual {v0, p1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 973
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 975
    .local v1, "networkRequest":Landroid/net/NetworkRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerNetworkRequestwithCallback(), networkRequest:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsVT Util"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_0

    .line 978
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    .line 979
    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 981
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mNetworkAvailableCallback:Lcom/mediatek/ims/internal/ImsVTProviderUtil$NetworkAvailableCallback;

    invoke-virtual {v2, v1, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 982
    return-void
.end method

.method public releaseVTSourceAll()V
    .locals 4

    .line 840
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 842
    .local v1, "p":Ljava/lang/Object;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseVTSourceAll, id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, v1

    check-cast v3, Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsVT Util"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    move-object v2, v1

    check-cast v2, Lcom/mediatek/ims/internal/ImsVTProvider;

    iget-object v2, v2, Lcom/mediatek/ims/internal/ImsVTProvider;->mSource:Lcom/mediatek/ims/internal/VTSource;

    invoke-virtual {v2}, Lcom/mediatek/ims/internal/VTSource;->release()V

    .line 844
    .end local v1    # "p":Ljava/lang/Object;
    goto :goto_0

    .line 846
    :cond_0
    return-void
.end method

.method public resetWrapper(Lcom/mediatek/ims/internal/ImsVTProvider;)V
    .locals 3
    .param p1, "p"    # Lcom/mediatek/ims/internal/ImsVTProvider;

    .line 925
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 926
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 927
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 928
    return-void
.end method

.method public resetWrapperInternal(Lcom/mediatek/ims/internal/ImsVTProvider;)V
    .locals 0
    .param p1, "p"    # Lcom/mediatek/ims/internal/ImsVTProvider;

    .line 1092
    if-eqz p1, :cond_0

    .line 1093
    invoke-virtual {p1}, Lcom/mediatek/ims/internal/ImsVTProvider;->onResetWrapper()V

    .line 1095
    :cond_0
    return-void
.end method

.method public setContextAndInitRefVTP(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 884
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 885
    return-void
.end method

.method public setContextAndInitRefVTPInternal(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setContextAndInitRefVTPInternal(), context ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Util"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    .line 935
    sget-boolean v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->sIsNoCameraMode:Z

    if-eqz v0, :cond_0

    .line 936
    invoke-static {p1}, Lcom/mediatek/ims/internal/VTDummySource;->setContext(Landroid/content/Context;)V

    goto :goto_0

    .line 938
    :cond_0
    invoke-static {p1}, Lcom/mediatek/ims/internal/VTSource;->setContext(Landroid/content/Context;)V

    .line 940
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 942
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mFeatureValueReceiver:Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;

    if-eqz v0, :cond_1

    .line 943
    const-string v0, "setContextAndInitRefVTP, register FeatureValueReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 945
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.android.intent.action.IMS_FEATURE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 946
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mFeatureValueReceiver:Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 949
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimStateReceiver:Lcom/mediatek/ims/internal/ImsVTProviderUtil$SimStateReceiver;

    if-eqz v0, :cond_2

    .line 950
    const-string v0, "setContextAndInitRefVTP, register SimStateReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 954
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimStateReceiver:Lcom/mediatek/ims/internal/ImsVTProviderUtil$SimStateReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 957
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 958
    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSubscriptionsChangedlistener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 960
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->registerNetworkRequestWithCallback(I)V

    .line 961
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->registerNetworkRequestWithCallback(I)V

    .line 963
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isVideoCallOnByPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 964
    const-string v0, "setContextAndInitRefVTPInternal(), ViLTE on, do natvie init"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProvider;->nInitRefVTP()I

    .line 966
    const/16 v0, 0x3e9

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsVTProvider;->nTagSocketWithUid(I)I

    .line 968
    :cond_3
    return-void
.end method

.method public declared-synchronized setSimAppState(II)V
    .locals 1
    .param p1, "simId"    # I
    .param p2, "state"    # I

    monitor-enter p0

    .line 781
    if-ltz p1, :cond_0

    :try_start_0
    sget v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->SIM_NUM:I

    if-ge p1, v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimAppState:[I

    aput p2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 780
    .end local p0    # "this":Lcom/mediatek/ims/internal/ImsVTProviderUtil;
    .end local p1    # "simId":I
    .end local p2    # "state":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 784
    .restart local p0    # "this":Lcom/mediatek/ims/internal/ImsVTProviderUtil;
    .restart local p1    # "simId":I
    .restart local p2    # "state":I
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setSimCardState(II)V
    .locals 1
    .param p1, "simId"    # I
    .param p2, "state"    # I

    monitor-enter p0

    .line 767
    if-ltz p1, :cond_0

    :try_start_0
    sget v0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->SIM_NUM:I

    if-ge p1, v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimCardState:[I

    aput p2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 766
    .end local p0    # "this":Lcom/mediatek/ims/internal/ImsVTProviderUtil;
    .end local p1    # "simId":I
    .end local p2    # "state":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 770
    .restart local p0    # "this":Lcom/mediatek/ims/internal/ImsVTProviderUtil;
    .restart local p1    # "simId":I
    .restart local p2    # "state":I
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public setUIMode(Lcom/mediatek/ims/internal/ImsVTProvider;I)V
    .locals 3
    .param p1, "p"    # Lcom/mediatek/ims/internal/ImsVTProvider;
    .param p2, "mode"    # I

    .line 903
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 904
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 905
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 906
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 907
    return-void
.end method

.method public setUIModeInternal(Lcom/mediatek/ims/internal/ImsVTProvider;I)V
    .locals 0
    .param p1, "p"    # Lcom/mediatek/ims/internal/ImsVTProvider;
    .param p2, "mode"    # I

    .line 1052
    if-eqz p1, :cond_0

    .line 1053
    invoke-virtual {p1, p2}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSetUIMode(I)V

    .line 1055
    :cond_0
    return-void
.end method

.method public switchFeature(IIZ)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "feature"    # I
    .param p3, "isOn"    # Z

    .line 910
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 911
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 912
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 913
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 914
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 915
    return-void
.end method

.method public switchFeatureInternal(IIZ)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "feature"    # I
    .param p3, "isOn"    # Z

    .line 1059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchFeatureInternal, feature = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "isOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Util"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1062
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1064
    .local v2, "p":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSimId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 1066
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchFeatureInternal, id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v2

    check-cast v4, Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    move-object v3, v2

    check-cast v3, Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v3, p2, p3}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSwitchFeature(IZ)V

    .line 1070
    .end local v2    # "p":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 1072
    :cond_1
    return-void
.end method

.method public switchRoaming(IZ)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "isRoaming"    # Z

    .line 918
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 919
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 920
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 921
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 922
    return-void
.end method

.method public switchRoamingInternal(IZ)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "isRoaming"    # Z

    .line 1076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchRoamingInternal, phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "isRoaming = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Util"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1079
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1081
    .local v2, "p":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->getSimId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 1083
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchRoamingInternal, id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v2

    check-cast v4, Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v4}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    move-object v3, v2

    check-cast v3, Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v3, p2}, Lcom/mediatek/ims/internal/ImsVTProvider;->onSwitchRoaming(Z)V

    .line 1087
    .end local v2    # "p":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 1089
    :cond_1
    return-void
.end method

.method public unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;
    .locals 1
    .param p1, "flattened"    # Ljava/lang/String;

    .line 704
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mPacker:Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTMessagePacker;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil$ImsVTMessagePacker;->unPackToVdoProfile(Ljava/lang/String;)Landroid/telecom/VideoProfile;

    move-result-object v0

    return-object v0
.end method

.method public updateCameraUsage(I)V
    .locals 4
    .param p1, "Id"    # I

    .line 828
    const-string v0, "ImsVT Util"

    const-string v1, "updateCameraUsage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 830
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mProviderById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 832
    .local v1, "p":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-virtual {v2}, Lcom/mediatek/ims/internal/ImsVTProvider;->getId()I

    move-result v2

    if-eq v2, p1, :cond_0

    .line 833
    move-object v2, v1

    check-cast v2, Lcom/mediatek/ims/internal/ImsVTProvider;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/internal/ImsVTProvider;->setCameraInternal(Ljava/lang/String;)V

    .line 835
    .end local v1    # "p":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 837
    :cond_1
    return-void
.end method

.method public usageGet(I)Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    .locals 3
    .param p1, "Id"    # I

    .line 713
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mDataUsageById:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    .line 715
    .local v0, "usage":Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
    if-nez v0, :cond_0

    .line 716
    new-instance v1, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    const-string v2, "Dummy"

    invoke-direct {v1, v2}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 718
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[usageGet][id ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsVT Util"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    return-object v0
.end method

.method public usageSet(ILcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V
    .locals 4
    .param p1, "Id"    # I
    .param p2, "usage"    # Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[usageSet][id ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Util"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mDataUsageById:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    const-string v3, "Record"

    invoke-direct {v2, v3, p2}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;-><init>(Ljava/lang/String;Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    return-void
.end method

.method public waitSimStateStable(I)V
    .locals 2
    .param p1, "simId"    # I

    .line 810
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->isSimStateStable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "waitSimStateStable, simId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Util"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimReadyVariable:[Landroid/os/ConditionVariable;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 814
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->mSimReadyVariable:[Landroid/os/ConditionVariable;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 816
    :cond_0
    return-void
.end method
