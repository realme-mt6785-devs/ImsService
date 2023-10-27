.class public Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;
.super Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;
.source "MtkRcsCapabilityExchangeImpl.java"


# static fields
.field private static final PUBLISH_USER_BASE:I = 0x1

.field private static final SUBSCRIBE_USER_BASE:I = 0x400000

.field private static final TAG:Ljava/lang/String; = "[SR-IMS][MtkRcsCapExchangeImpl]"


# instance fields
.field private mCapEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPresenceService:Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;

.field private mPublishCallbacks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mPublishResponseCallback:Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback;

.field private mPublishUserData:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRetryCount:I

.field private mSlotId:I

.field private mSubscribeCallbacks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mSubscribeResponseCallback:Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;

.field private mSubscribeUserData:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mtkCapabilityEventListener:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    .line 92
    invoke-direct {p0}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mPresenceService:Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mSlotId:I

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mPublishUserData:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v1, 0x400000

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mSubscribeUserData:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mPublishCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mSubscribeCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mHandler:Landroid/os/Handler;

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mRetryCount:I

    .line 147
    new-instance v0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$1;-><init>(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)V

    iput-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mtkCapabilityEventListener:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    .line 175
    new-instance v0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$2;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$2;-><init>(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)V

    iput-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mPublishResponseCallback:Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback;

    .line 223
    new-instance v0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$3;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$3;-><init>(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)V

    iput-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mSubscribeResponseCallback:Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;

    .line 342
    new-instance v0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$5;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$5;-><init>(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)V

    iput-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->serviceConnection:Landroid/content/ServiceConnection;

    .line 377
    new-instance v0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$6;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$6;-><init>(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)V

    iput-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 93
    iput p1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mSlotId:I

    .line 94
    iput-object p2, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mContext:Landroid/content/Context;

    .line 95
    iput-object p3, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mCapEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    .line 96
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->rcsSingleRegistrationCapable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 98
    .local v1, "manager":Landroid/os/UserManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    const-string v2, "user locked"

    invoke-direct {p0, v2}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->logD(Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->connectToRcsCoreService()V

    .line 105
    .end local v1    # "manager":Landroid/os/UserManager;
    :cond_1
    :goto_0
    const-string v0, "MtkRcsCapabilityExchangeImpl created"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->logD(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 74
    invoke-direct {p0, p1}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->logD(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)Landroid/telephony/ims/stub/CapabilityExchangeEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    .line 74
    iget-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mCapEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    .line 74
    iget-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mPresenceService:Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;)Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;
    .param p1, "x1"    # Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;

    .line 74
    iput-object p1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mPresenceService:Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    .line 74
    invoke-direct {p0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->connectToRcsCoreService()V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    .line 74
    iget-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 74
    invoke-direct {p0, p1}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->logE(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    .line 74
    iget-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mPublishCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    .line 74
    iget-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mSubscribeCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    .line 74
    iget-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->serviceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    .line 74
    iget-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    .line 74
    iget v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mRetryCount:I

    return v0
.end method

.method static synthetic access$702(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;
    .param p1, "x1"    # I

    .line 74
    iput p1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mRetryCount:I

    return p1
.end method

.method static synthetic access$708(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)I
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    .line 74
    iget v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mRetryCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    .line 74
    iget-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    .line 74
    iget v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mSlotId:I

    return v0
.end method

.method private connectToRcsCoreService()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$4;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$4;-><init>(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 340
    return-void
.end method

.method private getPresenceService()Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mPresenceService:Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;

    return-object v0
.end method

.method private logD(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SR-IMS][MtkRcsCapExchangeImpl]"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-void
.end method

.method private logE(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SR-IMS][MtkRcsCapExchangeImpl]"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    return-void
.end method


# virtual methods
.method public publishCapabilities(Ljava/lang/String;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;)V
    .locals 3
    .param p1, "pidfXml"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;

    .line 110
    const-string v0, "pidfXml should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    const-string v0, "PublishResponseCallback should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publishCapabilities >> cb["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->logD(Ljava/lang/String;)V

    .line 113
    if-nez p2, :cond_0

    .line 114
    return-void

    .line 118
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->getPresenceService()Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mPublishCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mPublishUserData:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-direct {p0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->getPresenceService()Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mPublishUserData:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mPublishResponseCallback:Lcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback;

    invoke-interface {v0, p1, v1, v2}, Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;->publishMyCap(Ljava/lang/String;ILcom/mediatek/ims/uce/aidl/IMtkPublishResponseCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_1
    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "publishCapabilities Fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->logE(Ljava/lang/String;)V

    .line 125
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public subscribeForCapabilities(Ljava/util/Collection;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)V
    .locals 4
    .param p2, "cb"    # Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;",
            ")V"
        }
    .end annotation

    .line 129
    .local p1, "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    const-string v0, "Subscribe uris should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 130
    const-string v0, "SubscribeResponseCallback should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subscribeForCapabilities >> cb["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->logD(Ljava/lang/String;)V

    .line 132
    if-nez p2, :cond_0

    .line 133
    return-void

    .line 135
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v0, "contactList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->getPresenceService()Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 138
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 139
    iget-object v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mSubscribeCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mSubscribeUserData:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-direct {p0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->getPresenceService()Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mSubscribeUserData:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mSubscribeResponseCallback:Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;

    invoke-interface {v1, v0, v2, v3}, Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;->getContactListCap(Ljava/util/List;ILcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :cond_1
    goto :goto_0

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subscribeForCapabilities fail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->logE(Ljava/lang/String;)V

    .line 145
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
