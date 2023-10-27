.class public Lcom/mediatek/ims/rcse/UaServiceManager;
.super Ljava/lang/Object;
.source "UaServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcse/UaServiceManager$SipCallback;,
        Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/mediatek/ims/rcse/UaServiceManager; = null

.field private static final LOG_TAG:Ljava/lang/String; = "[SR-IMS][UaServiceManager]"


# instance fields
.field private acsCallback:Lcom/mediatek/ims/rcsua/AcsEventCallback;

.field private callbackHandler:Landroid/os/Handler;

.field private capability:Lcom/mediatek/ims/rcsua/Capability;

.field private hdlrThread:Landroid/os/HandlerThread;

.field private imsCallback:Lcom/mediatek/ims/rcsua/ImsEventCallback;

.field private imsClient:Lcom/mediatek/ims/rcsua/Client;

.field private imsEventCallback:Lcom/mediatek/ims/rcsua/ImsEventCallback;

.field private mContext:Landroid/content/Context;

.field private mPhoneId:I

.field private mUpdateRcsFeatureTagState:Z

.field private serviceCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

.field private serviceStarted:Z

.field private sipCallback:Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;

.field private sipCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mediatek/ims/rcse/UaServiceManager$SipCallback;",
            ">;"
        }
    .end annotation
.end field

.field private sipChannel:Lcom/mediatek/ims/rcsua/SipChannel;

.field private sipEventCallback:Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;

.field private stateCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private uaService:Lcom/mediatek/ims/rcsua/RcsUaService;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    new-instance v0, Lcom/mediatek/ims/rcse/UaServiceManager$3;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/rcse/UaServiceManager$3;-><init>(Lcom/mediatek/ims/rcse/UaServiceManager;)V

    iput-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->imsEventCallback:Lcom/mediatek/ims/rcsua/ImsEventCallback;

    .line 454
    new-instance v0, Lcom/mediatek/ims/rcse/UaServiceManager$4;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/rcse/UaServiceManager$4;-><init>(Lcom/mediatek/ims/rcse/UaServiceManager;)V

    iput-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->sipEventCallback:Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;

    .line 529
    new-instance v0, Lcom/mediatek/ims/rcse/UaServiceManager$5;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/rcse/UaServiceManager$5;-><init>(Lcom/mediatek/ims/rcse/UaServiceManager;)V

    iput-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->serviceCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    .line 600
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->stateCallbacks:Ljava/util/Set;

    .line 601
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->sipCallbacks:Ljava/util/Set;

    .line 567
    iput-object p1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->mContext:Landroid/content/Context;

    .line 568
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/rcse/UaServiceManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/UaServiceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcse/UaServiceManager;->logD(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/ims/rcse/UaServiceManager;)Lcom/mediatek/ims/rcsua/SipChannel;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/UaServiceManager;

    .line 63
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->sipChannel:Lcom/mediatek/ims/rcsua/SipChannel;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/ims/rcse/UaServiceManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/UaServiceManager;

    .line 63
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/ims/rcse/UaServiceManager;Lcom/mediatek/ims/rcsua/SipChannel;)Lcom/mediatek/ims/rcsua/SipChannel;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/UaServiceManager;
    .param p1, "x1"    # Lcom/mediatek/ims/rcsua/SipChannel;

    .line 63
    iput-object p1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->sipChannel:Lcom/mediatek/ims/rcsua/SipChannel;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/mediatek/ims/rcse/UaServiceManager;)Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/UaServiceManager;

    .line 63
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/mediatek/ims/rcse/UaServiceManager;Lcom/mediatek/ims/rcsua/RcsUaService;)Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/UaServiceManager;
    .param p1, "x1"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 63
    iput-object p1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/mediatek/ims/rcse/UaServiceManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/UaServiceManager;

    .line 63
    iget v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->mPhoneId:I

    return v0
.end method

.method static synthetic access$1300(Lcom/mediatek/ims/rcse/UaServiceManager;)Lcom/mediatek/ims/rcsua/RcsUaService$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/UaServiceManager;

    .line 63
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->serviceCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/rcse/UaServiceManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/UaServiceManager;

    .line 63
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->stateCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/ims/rcse/UaServiceManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/UaServiceManager;

    .line 63
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->callbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/ims/rcse/UaServiceManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/UaServiceManager;

    .line 63
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->sipCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/ims/rcse/UaServiceManager;)Lcom/mediatek/ims/rcsua/Client;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/UaServiceManager;

    .line 63
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->imsClient:Lcom/mediatek/ims/rcsua/Client;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/ims/rcse/UaServiceManager;Lcom/mediatek/ims/rcsua/Client;)Lcom/mediatek/ims/rcsua/Client;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/UaServiceManager;
    .param p1, "x1"    # Lcom/mediatek/ims/rcsua/Client;

    .line 63
    iput-object p1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->imsClient:Lcom/mediatek/ims/rcsua/Client;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mediatek/ims/rcse/UaServiceManager;)Lcom/mediatek/ims/rcsua/ImsEventCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/UaServiceManager;

    .line 63
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->imsEventCallback:Lcom/mediatek/ims/rcsua/ImsEventCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/ims/rcse/UaServiceManager;)Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/UaServiceManager;

    .line 63
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->sipEventCallback:Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/ims/rcse/UaServiceManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/UaServiceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcse/UaServiceManager;->logE(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/ims/rcse/UaServiceManager;)Lcom/mediatek/ims/rcsua/AcsEventCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/UaServiceManager;

    .line 63
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->acsCallback:Lcom/mediatek/ims/rcsua/AcsEventCallback;

    return-object v0
.end method

.method static synthetic access$902(Lcom/mediatek/ims/rcse/UaServiceManager;Lcom/mediatek/ims/rcsua/AcsEventCallback;)Lcom/mediatek/ims/rcsua/AcsEventCallback;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/UaServiceManager;
    .param p1, "x1"    # Lcom/mediatek/ims/rcsua/AcsEventCallback;

    .line 63
    iput-object p1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->acsCallback:Lcom/mediatek/ims/rcsua/AcsEventCallback;

    return-object p1
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/mediatek/ims/rcse/UaServiceManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 68
    sget-object v0, Lcom/mediatek/ims/rcse/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcse/UaServiceManager;

    if-nez v0, :cond_1

    .line 69
    const-class v0, Lcom/mediatek/ims/rcse/UaServiceManager;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/rcse/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcse/UaServiceManager;

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcse/UaServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mediatek/ims/rcse/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcse/UaServiceManager;

    .line 73
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 75
    :cond_1
    :goto_0
    sget-object v0, Lcom/mediatek/ims/rcse/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcse/UaServiceManager;

    return-object v0
.end method

.method public static deleteInstance()V
    .locals 1

    .line 79
    sget-object v0, Lcom/mediatek/ims/rcse/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcse/UaServiceManager;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->stopService()V

    .line 82
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/mediatek/ims/rcse/UaServiceManager;
    .locals 1

    .line 85
    sget-object v0, Lcom/mediatek/ims/rcse/UaServiceManager;->INSTANCE:Lcom/mediatek/ims/rcse/UaServiceManager;

    return-object v0
.end method

.method private logD(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 575
    const-string v0, "[SR-IMS][UaServiceManager]"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    return-void
.end method

.method private logE(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 587
    const-string v0, "[SR-IMS][UaServiceManager]"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    return-void
.end method

.method private logI(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 579
    const-string v0, "[SR-IMS][UaServiceManager]"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    return-void
.end method

.method private logW(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 583
    const-string v0, "[SR-IMS][UaServiceManager]"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activate >> uaService["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->activate()V

    .line 196
    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deactivate >> uaService["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->deactivate()V

    .line 202
    :cond_0
    return-void
.end method

.method public getAcsConfigInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "config"    # Ljava/lang/String;

    .line 277
    const/4 v0, 0x0

    .line 279
    .local v0, "result":I
    iget-object v1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {v1, p1}, Lcom/mediatek/ims/rcsua/RcsUaService;->getAcsConfigInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 282
    :cond_0
    const-string v1, "Not ready to getAcsConfigInt"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->logE(Ljava/lang/String;)V

    .line 284
    :goto_0
    return v0
.end method

.method public getAcsConfigString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "config"    # Ljava/lang/String;

    .line 288
    const/4 v0, 0x0

    .line 290
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-eqz v1, :cond_0

    .line 291
    invoke-virtual {v1, p1}, Lcom/mediatek/ims/rcsua/RcsUaService;->getAcsConfigString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 293
    :cond_0
    const-string v1, "Not ready to getAcsConfigString"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->logE(Ljava/lang/String;)V

    .line 295
    :goto_0
    return-object v0
.end method

.method public getAcsConfiguration()Lcom/mediatek/ims/rcsua/AcsConfiguration;
    .locals 2

    .line 266
    const/4 v0, 0x0

    .line 268
    .local v0, "configuration":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    iget-object v1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-eqz v1, :cond_0

    .line 269
    invoke-virtual {v1}, Lcom/mediatek/ims/rcsua/RcsUaService;->getAcsConfiguration()Lcom/mediatek/ims/rcsua/AcsConfiguration;

    move-result-object v0

    goto :goto_0

    .line 271
    :cond_0
    const-string v1, "Not ready to getAcsConfiguration"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->logE(Ljava/lang/String;)V

    .line 273
    :goto_0
    return-object v0
.end method

.method public getCallbackHandler()Landroid/os/Handler;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->callbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getCapabilities()Lcom/mediatek/ims/rcsua/Capability;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->getCapabilities()Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRegistrationInfo()Lcom/mediatek/ims/rcsua/RegistrationInfo;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->imsClient:Lcom/mediatek/ims/rcsua/Client;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/Client;->getRegistrationInfo()Lcom/mediatek/ims/rcsua/RegistrationInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getService()Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 2

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getService: uaService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    return-object v0
.end method

.method public getUpdateRcsFeatureTagState()Z
    .locals 1

    .line 330
    iget-boolean v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->mUpdateRcsFeatureTagState:Z

    return v0
.end method

.method public imsRegistered()Z
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->imsClient:Lcom/mediatek/ims/rcsua/Client;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/Client;->getRegistrationInfo()Lcom/mediatek/ims/rcsua/RegistrationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isActivated()Z
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readConfiguraion()Lcom/mediatek/ims/rcsua/Configuration;
    .locals 1

    .line 319
    invoke-virtual {p0}, Lcom/mediatek/ims/rcse/UaServiceManager;->imsRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->imsClient:Lcom/mediatek/ims/rcsua/Client;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/Client;->getRegistrationInfo()Lcom/mediatek/ims/rcsua/RegistrationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->readImsConfiguration()Lcom/mediatek/ims/rcsua/Configuration;

    move-result-object v0

    return-object v0

    .line 322
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAcsCallback(Lcom/mediatek/ims/rcsua/AcsEventCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/AcsEventCallback;

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerAcsCallback >> callback["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->acsCallback:Lcom/mediatek/ims/rcsua/AcsEventCallback;

    if-eqz v0, :cond_0

    .line 170
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/rcsua/RcsUaService;->registerAcsEventCallback(Lcom/mediatek/ims/rcsua/AcsEventCallback;)V

    goto :goto_0

    .line 175
    :cond_1
    iput-object p1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->acsCallback:Lcom/mediatek/ims/rcsua/AcsEventCallback;

    .line 177
    :goto_0
    return-void
.end method

.method public registerSipCallback(Lcom/mediatek/ims/rcse/UaServiceManager$SipCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/ims/rcse/UaServiceManager$SipCallback;

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerSipCallback >> channel["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->sipChannel:Lcom/mediatek/ims/rcsua/SipChannel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], callback["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->sipCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->sipChannel:Lcom/mediatek/ims/rcsua/SipChannel;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mediatek/ims/rcse/UaServiceManager$2;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/ims/rcse/UaServiceManager$2;-><init>(Lcom/mediatek/ims/rcse/UaServiceManager;Lcom/mediatek/ims/rcse/UaServiceManager$SipCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 241
    :cond_0
    return-void
.end method

.method public registerStateCallback(Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerStateCallback >> uaService["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "],client["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->imsClient:Lcom/mediatek/ims/rcsua/Client;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], callback["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->stateCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->imsClient:Lcom/mediatek/ims/rcsua/Client;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mediatek/ims/rcse/UaServiceManager$1;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/ims/rcse/UaServiceManager$1;-><init>(Lcom/mediatek/ims/rcse/UaServiceManager;Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    :cond_0
    return-void
.end method

.method public sendSipMessage(Landroid/telephony/ims/SipMessage;)Z
    .locals 3
    .param p1, "message"    # Landroid/telephony/ims/SipMessage;

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendSipMessage >> message["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSipMessage >> sipChannel["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->sipChannel:Lcom/mediatek/ims/rcsua/SipChannel;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], is connected ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->sipChannel:Lcom/mediatek/ims/rcsua/SipChannel;

    invoke-virtual {v2}, Lcom/mediatek/ims/rcsua/SipChannel;->isConnected()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->sipChannel:Lcom/mediatek/ims/rcsua/SipChannel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/SipChannel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->sipChannel:Lcom/mediatek/ims/rcsua/SipChannel;

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->toEncodedMessage()[B

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getViaBranchParameter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/rcsua/SipChannel;->sendMessageAsync([BLjava/lang/String;)V

    .line 221
    const/4 v0, 0x1

    return v0

    .line 223
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public serviceConnected()Z
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAcsonfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "rcsVersion"    # Ljava/lang/String;
    .param p2, "rcsProfile"    # Ljava/lang/String;
    .param p3, "clientVendor"    # Ljava/lang/String;
    .param p4, "clientVersion"    # Ljava/lang/String;

    .line 250
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/ims/rcsua/RcsUaService;->setAcsonfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_0
    const-string v0, "Not ready to setAcsconfiguration"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->logE(Ljava/lang/String;)V

    .line 255
    :goto_0
    return-void
.end method

.method public setUpdateRcsFeatureTagState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .line 326
    iput-boolean p1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->mUpdateRcsFeatureTagState:Z

    .line 327
    return-void
.end method

.method public startService(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startService >> phoneId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 91
    iput p1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->mPhoneId:I

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startService >> is RcsUaService available ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mediatek/ims/rcsua/RcsUaService;->isAvailable(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "], uaService["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "IMS-RCSUA-WORKER"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->hdlrThread:Landroid/os/HandlerThread;

    .line 95
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 96
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->hdlrThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->callbackHandler:Landroid/os/Handler;

    .line 98
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 99
    .local v0, "options":Landroid/os/Bundle;
    const/4 v2, 0x1

    const-string v3, "OPTION_ROI_SUPPORT"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    iget-object v2, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->serviceCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    invoke-static {v2, p1, v3, v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->startService(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startService >> uaService["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 103
    .end local v0    # "options":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public stopService()V
    .locals 3

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopService >> uaService["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->sipChannel:Lcom/mediatek/ims/rcsua/SipChannel;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/SipChannel;->close()V

    .line 111
    iput-object v1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->sipChannel:Lcom/mediatek/ims/rcsua/SipChannel;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->sipCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 114
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->imsClient:Lcom/mediatek/ims/rcsua/Client;

    if-eqz v0, :cond_1

    .line 115
    iget-object v2, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v2, v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->unregisterClient(Lcom/mediatek/ims/rcsua/Client;)V

    .line 116
    iput-object v1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->imsClient:Lcom/mediatek/ims/rcsua/Client;

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->stateCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 120
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->stopService()V

    .line 121
    iput-object v1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->hdlrThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 124
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 125
    iput-object v1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->hdlrThread:Landroid/os/HandlerThread;

    .line 127
    :cond_3
    return-void
.end method

.method public triggerAcsRequest(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 258
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/rcsua/RcsUaService;->triggerAcsRequest(I)V

    goto :goto_0

    .line 261
    :cond_0
    const-string v0, "Not ready to triggerAcRequest"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->logE(Ljava/lang/String;)V

    .line 263
    :goto_0
    return-void
.end method

.method public triggerRestoration()V
    .locals 2

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerRestoration >> uaService["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->triggerRestoration()V

    .line 214
    :cond_0
    return-void
.end method

.method public unregisterAcsCallback(Lcom/mediatek/ims/rcsua/AcsEventCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/AcsEventCallback;

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterAcsCallback >> callback["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 182
    if-nez p1, :cond_0

    .line 183
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/rcsua/RcsUaService;->unregisterAcsEventCallback(Lcom/mediatek/ims/rcsua/AcsEventCallback;)V

    goto :goto_0

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->acsCallback:Lcom/mediatek/ims/rcsua/AcsEventCallback;

    if-ne v0, p1, :cond_2

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->acsCallback:Lcom/mediatek/ims/rcsua/AcsEventCallback;

    .line 190
    :cond_2
    :goto_0
    return-void
.end method

.method public unregisterSipCallback(Lcom/mediatek/ims/rcse/UaServiceManager$SipCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/ims/rcse/UaServiceManager$SipCallback;

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterSipCallback >> channel[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->sipChannel:Lcom/mediatek/ims/rcsua/SipChannel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], callback["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->sipCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 247
    return-void
.end method

.method public unregisterStateCallback(Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterStateCallback >> callback["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->stateCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method

.method public updateCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 2
    .param p1, "capability"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCapabilities >> uaService["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->logD(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager;->uaService:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/rcsua/RcsUaService;->updateCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 208
    :cond_0
    return-void
.end method
