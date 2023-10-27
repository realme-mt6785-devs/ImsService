.class public Lcom/mediatek/ims/rcsua/RcsUaService;
.super Ljava/lang/Object;
.source "RcsUaService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcsua/RcsUaService$ServiceDeathRecipient;,
        Lcom/mediatek/ims/rcsua/RcsUaService$Callback;,
        Lcom/mediatek/ims/rcsua/RcsUaService$AcsRequestReason;,
        Lcom/mediatek/ims/rcsua/RcsUaService$RegistrationMode;,
        Lcom/mediatek/ims/rcsua/RcsUaService$ImsRadioTech;,
        Lcom/mediatek/ims/rcsua/RcsUaService$RegistrationState;
    }
.end annotation


# static fields
.field public static final ACTION_RCSUA_SERVICE_DOWN:Ljava/lang/String; = "com.mediatek.ims.rcsua.SERVICE_DOWN"

.field public static final ACTION_RCSUA_SERVICE_UP:Ljava/lang/String; = "com.mediatek.ims.rcsua.SERVICE_UP"

.field private static final EXTRA_OPTIONS:Ljava/lang/String; = "service_options"

.field private static final EXTRA_PHONE_ID:Ljava/lang/String; = "phone_id"

.field private static volatile INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService; = null

.field public static final OPTION_DEREG_SUSPEND:Ljava/lang/String; = "OPTION_DEREG_SUSPEND"

.field public static final OPTION_ROI_SUPPORT:Ljava/lang/String; = "OPTION_ROI_SUPPORT"

.field public static final REASON_DEFAULT_SMS_UNKNOWN:I = 0x0

.field public static final REASON_FT_AUTHENTICATE_FAILURE:I = 0x3

.field public static final REASON_RCS_DEFAULT_SMS:I = 0x1

.field public static final REASON_RCS_NOT_DEFAULT_SMS:I = 0x2

.field public static final REG_MODE_IMS:I = 0x1

.field public static final REG_MODE_INTERNET:I = 0x2

.field public static final REG_RADIO_3GPP:I = 0x1

.field public static final REG_RADIO_IEEE802:I = 0x2

.field public static final REG_RADIO_NONE:I = 0x0

.field public static final REG_STATE_DEREGISTERING:I = 0x3

.field public static final REG_STATE_NOT_REGISTERED:I = 0x0

.field public static final REG_STATE_REGISTERED:I = 0x2

.field public static final REG_STATE_REGISTERING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[RcsUaService][API]"


# instance fields
.field private acsCallbacks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/mediatek/ims/rcsua/AcsEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

.field private acsSupported:Z

.field private activated:Z

.field private callerCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

.field private callerContext:Landroid/content/Context;

.field private capabilities:Lcom/mediatek/ims/rcsua/Capability;

.field private clientCount:I

.field private clientIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

.field private clients:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/mediatek/ims/rcsua/Client;",
            ">;"
        }
    .end annotation
.end field

.field private deathRecipient:Lcom/mediatek/ims/rcsua/RcsUaService$ServiceDeathRecipient;

.field private final imsEventCallback:Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

.field private lock:Ljava/lang/Object;

.field private mRetryCount:I

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private volatile serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;


# direct methods
.method private constructor <init>(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "callback"    # Lcom/mediatek/ims/rcsua/RcsUaService$Callback;
    .param p4, "options"    # Landroid/os/Bundle;

    .line 1065
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1167
    new-instance v0, Lcom/mediatek/ims/rcsua/RcsUaService$4;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/rcsua/RcsUaService$4;-><init>(Lcom/mediatek/ims/rcsua/RcsUaService;)V

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->imsEventCallback:Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

    .line 1247
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientCount:I

    .line 1253
    new-instance v1, Lcom/mediatek/ims/rcsua/RcsUaService$ServiceDeathRecipient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/ims/rcsua/RcsUaService$ServiceDeathRecipient;-><init>(Lcom/mediatek/ims/rcsua/RcsUaService;Lcom/mediatek/ims/rcsua/RcsUaService$1;)V

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->deathRecipient:Lcom/mediatek/ims/rcsua/RcsUaService$ServiceDeathRecipient;

    .line 1258
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    .line 1259
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsCallbacks:Ljava/util/HashSet;

    .line 1260
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->lock:Ljava/lang/Object;

    .line 1264
    iput v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->mRetryCount:I

    .line 1066
    new-instance v1, Lcom/mediatek/ims/rcsua/RcsUaService$2;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcsua/RcsUaService$2;-><init>(Lcom/mediatek/ims/rcsua/RcsUaService;)V

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceConnection:Landroid/content/ServiceConnection;

    .line 1104
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    .line 1105
    iput-object p3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    .line 1106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callerCallback value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[RcsUaService][API]"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callerContext value "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    const-string v2, "persist.vendor.service.rcs"

    const-string v3, "1"

    invoke-static {v1, v2, v3}, Lcom/mediatek/ims/rcsua/RcsUaService;->getSystemProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    iput-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->activated:Z

    .line 1110
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isAcsAvailable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    .line 1112
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.ims.rcsua.BIND_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1114
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phone_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1116
    new-instance v1, Landroid/os/Bundle;

    if-nez p4, :cond_1

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_1
    invoke-direct {v1, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1117
    .local v1, "bundle":Landroid/os/Bundle;
    :goto_0
    iget-boolean v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    const-string v4, "OPTION_ACS_SUPPORT"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1118
    const-string v3, "service_options"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1120
    const-string v3, "com.mediatek.ims.rcsua.service"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1122
    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1123
    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceConnection:Landroid/content/ServiceConnection;

    .line 1124
    invoke-virtual {v3, v0, v4, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 1125
    .local v2, "result":Z
    if-nez v2, :cond_2

    .line 1126
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1127
    .local v3, "handler":Landroid/os/Handler;
    new-instance v4, Lcom/mediatek/ims/rcsua/RcsUaService$3;

    invoke-direct {v4, p0, v0, v3}, Lcom/mediatek/ims/rcsua/RcsUaService$3;-><init>(Lcom/mediatek/ims/rcsua/RcsUaService;Landroid/content/Intent;Landroid/os/Handler;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1140
    .end local v3    # "handler":Landroid/os/Handler;
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/rcsua/RcsUaService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/rcsua/RcsUaService;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsCallbacks:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/ims/rcsua/RcsUaService;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/ims/rcsua/RcsUaService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/ims/rcsua/RcsUaService;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/mediatek/ims/rcsua/RcsUaService;Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;
    .param p1, "x1"    # Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    .line 68
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/ims/rcsua/RcsUaService;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->mRetryCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/ims/rcsua/RcsUaService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;
    .param p1, "x1"    # I

    .line 68
    iput p1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->mRetryCount:I

    return p1
.end method

.method static synthetic access$208(Lcom/mediatek/ims/rcsua/RcsUaService;)I
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->mRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->mRetryCount:I

    return v0
.end method

.method static synthetic access$300()Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 1

    .line 68
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/ims/rcsua/RcsUaService;)Lcom/mediatek/ims/rcsua/RcsUaService$ServiceDeathRecipient;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->deathRecipient:Lcom/mediatek/ims/rcsua/RcsUaService$ServiceDeathRecipient;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/ims/rcsua/RcsUaService;)Lcom/mediatek/ims/rcsua/service/IRcsUaService;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/ims/rcsua/RcsUaService;Lcom/mediatek/ims/rcsua/service/IRcsUaService;)Lcom/mediatek/ims/rcsua/service/IRcsUaService;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;
    .param p1, "x1"    # Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    .line 68
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mediatek/ims/rcsua/RcsUaService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->activated:Z

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/ims/rcsua/RcsUaService;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    invoke-direct {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->notifyServiceUp()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/ims/rcsua/RcsUaService;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    invoke-direct {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->notifyServiceDown()V

    return-void
.end method

.method static synthetic access$902(Lcom/mediatek/ims/rcsua/RcsUaService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;
    .param p1, "x1"    # I

    .line 68
    iput p1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientCount:I

    return p1
.end method

.method public static getInstance()Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 1

    .line 326
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->getInstance(I)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(I)Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 2
    .param p0, "phoneId"    # I

    .line 336
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-eqz v0, :cond_0

    .line 340
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    return-object v0

    .line 337
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "startService() must be called before getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getSystemProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 1224
    move-object v0, p2

    .line 1226
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1228
    .local v1, "cl":Ljava/lang/ClassLoader;
    :try_start_0
    const-string v2, "android.os.SystemProperties"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1229
    .local v2, "systemProperties":Ljava/lang/Class;
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 1230
    .local v4, "paramTypes":[Ljava/lang/Class;
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 1231
    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 1232
    const-string v5, "get"

    invoke-virtual {v2, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1233
    .local v5, "get":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    .line 1234
    .local v3, "params":[Ljava/lang/Object;
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v8, v3, v6

    .line 1235
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v6, v3, v7

    .line 1237
    invoke-virtual {v5, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    .line 1240
    .end local v2    # "systemProperties":Ljava/lang/Class;
    .end local v3    # "params":[Ljava/lang/Object;
    .end local v4    # "paramTypes":[Ljava/lang/Class;
    .end local v5    # "get":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 1238
    :catch_0
    move-exception v2

    .line 1242
    :goto_0
    return-object v0
.end method

.method public static isAcsAvailable(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 1035
    const/4 v0, 0x0

    .line 1036
    .local v0, "info":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1037
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "context value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[RcsUaService][API]"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PackageManager pm  value "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    const/4 v2, 0x0

    :try_start_0
    const-string v4, "com.mediatek.rcs.provisioning"

    invoke-virtual {v1, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    move-object v0, v4

    .line 1042
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "info value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    goto :goto_0

    .line 1043
    :catch_0
    move-exception v4

    .line 1046
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAcsAvailable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    move v2, v5

    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    return v5
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 1026
    const-string v0, "persist.vendor.mtk_rcs_ua_support"

    .line 1028
    .local v0, "name":Ljava/lang/String;
    const-string v1, "persist.vendor.mtk_rcs_ua_support"

    const-string v2, "0"

    invoke-static {p0, v1, v2}, Lcom/mediatek/ims/rcsua/RcsUaService;->getSystemProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1029
    .local v1, "value":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[RcsUaService][API]"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private notifyServiceDown()V
    .locals 2

    .line 1156
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    if-eqz v0, :cond_0

    .line 1157
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/rcsua/RcsUaService$Callback;->serviceDisconnected(Lcom/mediatek/ims/rcsua/RcsUaService;)V

    .line 1165
    :cond_0
    return-void
.end method

.method private notifyServiceUp()V
    .locals 2

    .line 1143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyServiceUp to callback["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[RcsUaService][API]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    if-eqz v0, :cond_0

    .line 1145
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/rcsua/RcsUaService$Callback;->serviceConnected(Lcom/mediatek/ims/rcsua/RcsUaService;)V

    .line 1153
    :cond_0
    return-void
.end method

.method public static startService(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;)Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "callback"    # Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    .line 251
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->startService(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    return-object v0
.end method

.method public static startService(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "callback"    # Lcom/mediatek/ims/rcsua/RcsUaService$Callback;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 278
    const-string v0, "[RcsUaService][API]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startService, current instance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-nez v0, :cond_1

    .line 280
    const-class v0, Lcom/mediatek/ims/rcsua/RcsUaService;

    monitor-enter v0

    .line 281
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-nez v1, :cond_0

    .line 282
    new-instance v1, Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mediatek/ims/rcsua/RcsUaService;-><init>(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)V

    sput-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 284
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 287
    :cond_1
    :goto_0
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    return-object v0
.end method

.method public static startService(Landroid/content/Context;Lcom/mediatek/ims/rcsua/RcsUaService$Callback;)Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    .line 238
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/mediatek/ims/rcsua/RcsUaService;->startService(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    return-object v0
.end method

.method public static startService(Landroid/content/Context;Lcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/RcsUaService$Callback;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 264
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/mediatek/ims/rcsua/RcsUaService;->startService(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public activate()V
    .locals 2

    .line 348
    const-string v0, "[RcsUaService][API]"

    const-string v1, "activate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->activated:Z

    goto :goto_0

    .line 353
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->activate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    .line 357
    :goto_0
    return-void
.end method

.method public addCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 2
    .param p1, "feature"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 484
    const-string v0, "[RcsUaService][API]"

    const-string v1, "addCapability"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->addCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    goto :goto_0

    .line 491
    :catch_0
    move-exception v0

    .line 494
    :goto_0
    return-void

    .line 486
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearAcsConfiguration()Z
    .locals 2

    .line 1007
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_0

    .line 1010
    const/4 v0, 0x0

    .line 1012
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->clearAcsConfiguration()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1014
    goto :goto_0

    .line 1013
    :catch_0
    move-exception v1

    .line 1015
    :goto_0
    return v0

    .line 1008
    .end local v0    # "result":Z
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deactivate()V
    .locals 2

    .line 365
    const-string v0, "[RcsUaService][API]"

    const-string v1, "deactivate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->activated:Z

    goto :goto_0

    .line 370
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->deactivate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    goto :goto_0

    .line 371
    :catch_0
    move-exception v0

    .line 374
    :goto_0
    return-void
.end method

.method public getAcsConfigInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "configItem"    # Ljava/lang/String;

    .line 835
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_1

    .line 837
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    const/4 v0, 0x0

    .line 843
    .local v0, "value":I
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsConfigInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 845
    goto :goto_0

    .line 844
    :catch_0
    move-exception v1

    .line 847
    :goto_0
    return v0

    .line 838
    .end local v0    # "value":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 836
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAcsConfigString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "configItem"    # Ljava/lang/String;

    .line 857
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_1

    .line 859
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    const-string v0, ""

    .line 865
    .local v0, "value":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsConfigString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 867
    goto :goto_0

    .line 866
    :catch_0
    move-exception v1

    .line 869
    :goto_0
    return-object v0

    .line 860
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 858
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAcsConfiguration()Lcom/mediatek/ims/rcsua/AcsConfiguration;
    .locals 2

    .line 792
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_1

    .line 794
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    const/4 v0, 0x0

    .line 800
    .local v0, "config":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsConfiguration()Lcom/mediatek/ims/rcsua/AcsConfiguration;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 802
    goto :goto_0

    .line 801
    :catch_0
    move-exception v1

    .line 803
    :goto_0
    return-object v0

    .line 795
    .end local v0    # "config":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 793
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAcsSwitchState()Z
    .locals 2

    .line 966
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_0

    .line 969
    const/4 v0, 0x0

    .line 971
    .local v0, "state":Z
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsSwitchState()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 973
    goto :goto_0

    .line 972
    :catch_0
    move-exception v1

    .line 974
    :goto_0
    return v0

    .line 967
    .end local v0    # "state":Z
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActiveClients()[Lcom/mediatek/ims/rcsua/Client;
    .locals 5

    .line 685
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 688
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 689
    .local v0, "clientList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/ims/rcsua/Client;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 690
    .local v1, "len":I
    new-array v2, v1, [Lcom/mediatek/ims/rcsua/Client;

    .line 691
    .local v2, "client":[Lcom/mediatek/ims/rcsua/Client;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 692
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/rcsua/Client;

    aput-object v4, v2, v3

    .line 691
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 694
    .end local v3    # "i":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveClients client:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[RcsUaService][API]"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    return-object v2

    .line 686
    .end local v0    # "clientList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/ims/rcsua/Client;>;"
    .end local v1    # "len":I
    .end local v2    # "client":[Lcom/mediatek/ims/rcsua/Client;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAospAcsInfo()Ljava/lang/String;
    .locals 3

    .line 812
    const-string v0, ""

    .line 813
    .local v0, "info":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v1, :cond_1

    .line 815
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 819
    const/4 v1, 0x0

    .line 821
    .local v1, "config":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsConfiguration()Lcom/mediatek/ims/rcsua/AcsConfiguration;

    move-result-object v2

    move-object v1, v2

    .line 822
    invoke-virtual {v1}, Lcom/mediatek/ims/rcsua/AcsConfiguration;->readXmlData()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 824
    goto :goto_0

    .line 823
    :catch_0
    move-exception v2

    .line 825
    :goto_0
    return-object v0

    .line 816
    .end local v1    # "config":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "RCS UA service disconnected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 814
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "ACS not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getCapabilities()Lcom/mediatek/ims/rcsua/Capability;
    .locals 2

    .line 626
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    const/4 v0, 0x0

    .line 632
    .local v0, "capability":Lcom/mediatek/ims/rcsua/Capability;
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getCapabilities()Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 635
    goto :goto_0

    .line 633
    :catch_0
    move-exception v1

    .line 637
    :goto_0
    return-object v0

    .line 627
    .end local v0    # "capability":Lcom/mediatek/ims/rcsua/Capability;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 1061
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    return-object v0
.end method

.method public getOptions()Landroid/os/Bundle;
    .locals 2

    .line 704
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    const/4 v0, 0x0

    .line 710
    .local v0, "options":Landroid/os/Bundle;
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getOptions()Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 712
    goto :goto_0

    .line 711
    :catch_0
    move-exception v1

    .line 714
    :goto_0
    return-object v0

    .line 705
    .end local v0    # "options":Landroid/os/Bundle;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAcsConnected()Z
    .locals 2

    .line 878
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_1

    .line 880
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 884
    const/4 v0, 0x0

    .line 886
    .local v0, "connected":Z
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->isAcsConnected()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 888
    goto :goto_0

    .line 887
    :catch_0
    move-exception v1

    .line 890
    :goto_0
    return v0

    .line 881
    .end local v0    # "connected":Z
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 879
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isActivated()Z
    .locals 2

    .line 647
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 648
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->activated:Z

    return v0

    .line 651
    :cond_0
    const/4 v0, 0x1

    .line 653
    .local v0, "activated":Z
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->isActivated()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 656
    goto :goto_0

    .line 654
    :catch_0
    move-exception v1

    .line 658
    :goto_0
    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 1057
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public registerAcsEventCallback(Lcom/mediatek/ims/rcsua/AcsEventCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/AcsEventCallback;

    .line 723
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_2

    .line 725
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 729
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 730
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsCallbacks:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 731
    new-instance v1, Lcom/mediatek/ims/rcsua/RcsUaService$1;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcsua/RcsUaService$1;-><init>(Lcom/mediatek/ims/rcsua/RcsUaService;)V

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 756
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    iget-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    invoke-interface {v1, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->registerAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 758
    goto :goto_0

    .line 757
    :catch_0
    move-exception v1

    .line 760
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsCallbacks:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 761
    monitor-exit v0

    .line 762
    return-void

    .line 761
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 726
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerClient(Lcom/mediatek/ims/rcsua/ImsEventCallback;)Lcom/mediatek/ims/rcsua/Client;
    .locals 4
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/ImsEventCallback;

    .line 564
    const/4 v0, 0x0

    .line 566
    .local v0, "newClient":Lcom/mediatek/ims/rcsua/Client;
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v1, :cond_1

    .line 571
    :try_start_0
    const-string v1, "[RcsUaService][API]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerClient:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",clientCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    :try_start_1
    iget v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientCount:I

    if-nez v2, :cond_0

    .line 575
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->imsEventCallback:Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

    invoke-interface {v2, v3}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->registerClient(Lcom/mediatek/ims/rcsua/service/IImsEventCallback;)Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    .line 578
    :cond_0
    new-instance v2, Lcom/mediatek/ims/rcsua/Client;

    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    invoke-direct {v2, p0, v3}, Lcom/mediatek/ims/rcsua/Client;-><init>(Lcom/mediatek/ims/rcsua/RcsUaService;Lcom/mediatek/ims/rcsua/service/IRcsUaClient;)V

    move-object v0, v2

    .line 579
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/rcsua/Client;->registerImsEventCallback(Lcom/mediatek/ims/rcsua/ImsEventCallback;)V

    .line 580
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 581
    monitor-exit v1

    .line 584
    goto :goto_0

    .line 581
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "newClient":Lcom/mediatek/ims/rcsua/Client;
    .end local p0    # "this":Lcom/mediatek/ims/rcsua/RcsUaService;
    .end local p1    # "callback":Lcom/mediatek/ims/rcsua/ImsEventCallback;
    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 582
    .restart local v0    # "newClient":Lcom/mediatek/ims/rcsua/Client;
    .restart local p0    # "this":Lcom/mediatek/ims/rcsua/RcsUaService;
    .restart local p1    # "callback":Lcom/mediatek/ims/rcsua/ImsEventCallback;
    :catch_0
    move-exception v1

    .line 586
    :goto_0
    return-object v0

    .line 567
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "RCS UA service disconnected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 2
    .param p1, "feature"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 504
    const-string v0, "[RcsUaService][API]"

    const-string v1, "removeCapability"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->removeCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    goto :goto_0

    .line 511
    :catch_0
    move-exception v0

    .line 514
    :goto_0
    return-void

    .line 506
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAcsProvisioningAddress(Ljava/lang/String;)Z
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .line 988
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_0

    .line 991
    const/4 v0, 0x0

    .line 993
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->setAcsProvisioningAddress(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 995
    goto :goto_0

    .line 994
    :catch_0
    move-exception v1

    .line 996
    :goto_0
    return v0

    .line 989
    .end local v0    # "result":Z
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAcsSwitchState(Z)Z
    .locals 2
    .param p1, "state"    # Z

    .line 924
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_0

    .line 927
    const/4 v0, 0x0

    .line 929
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->setAcsSwitchState(Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 931
    goto :goto_0

    .line 930
    :catch_0
    move-exception v1

    .line 932
    :goto_0
    return v0

    .line 925
    .end local v0    # "result":Z
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAcsonfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "rcsVersion"    # Ljava/lang/String;
    .param p2, "rcsProfile"    # Ljava/lang/String;
    .param p3, "clientVendor"    # Ljava/lang/String;
    .param p4, "clientVersion"    # Ljava/lang/String;

    .line 944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAcsonfiguration rcsVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,rcsProfile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,clientVendor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,clientVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[RcsUaService][API]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAcsonfiguration !acsSupported: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_0

    .line 951
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceIntf value "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->setAcsonfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 954
    goto :goto_0

    .line 953
    :catch_0
    move-exception v0

    .line 955
    :goto_0
    return-void

    .line 948
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOptions(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;

    .line 667
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->setOptions(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    goto :goto_0

    .line 673
    :catch_0
    move-exception v0

    .line 676
    :goto_0
    return-void

    .line 668
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopService()V
    .locals 5

    .line 295
    const-string v0, "[RcsUaService][API]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopService, current instance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const-class v0, Lcom/mediatek/ims/rcsua/RcsUaService;

    monitor-enter v0

    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 298
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 300
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    invoke-interface {v1, v3}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->unregisterAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    goto :goto_0

    .line 301
    :catch_0
    move-exception v1

    .line 304
    :goto_0
    :try_start_2
    iput-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsCallbacks:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 307
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 309
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 310
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->deathRecipient:Lcom/mediatek/ims/rcsua/RcsUaService$ServiceDeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 311
    iput-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    .line 312
    iput v4, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientCount:I

    .line 314
    :cond_1
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-eqz v1, :cond_2

    .line 315
    sput-object v2, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 317
    :cond_2
    monitor-exit v0

    .line 318
    return-void

    .line 317
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public triggerAcsRequest(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 900
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_1

    .line 902
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 907
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerAcsRequest(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 909
    goto :goto_0

    .line 908
    :catch_0
    move-exception v0

    .line 910
    :goto_0
    return-void

    .line 903
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 901
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public triggerForceReregistration()V
    .locals 2

    .line 431
    const-string v0, "[RcsUaService][API]"

    const-string v1, "triggerForceReregistration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerForceReregistration(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    goto :goto_0

    .line 438
    :catch_0
    move-exception v0

    .line 441
    :goto_0
    return-void

    .line 433
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public triggerReregistration()V
    .locals 2

    .line 381
    const-string v0, "[RcsUaService][API]"

    const-string v1, "triggerReregistraion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerReregistration(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 391
    :goto_0
    return-void

    .line 383
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public triggerReregistration(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 2
    .param p1, "features"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 448
    const-string v0, "[RcsUaService][API]"

    const-string v1, "triggerReregistraion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerReregistration(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    goto :goto_0

    .line 455
    :catch_0
    move-exception v0

    .line 458
    :goto_0
    return-void

    .line 450
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public triggerRestoration()V
    .locals 2

    .line 465
    const-string v0, "[RcsUaService][API]"

    const-string v1, "triggerRestoration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerRestoration()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    goto :goto_0

    .line 472
    :catch_0
    move-exception v0

    .line 475
    :goto_0
    return-void

    .line 467
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public triggerRoiDeregistration()V
    .locals 2

    .line 398
    const-string v0, "[RcsUaService][API]"

    const-string v1, "triggerRoiDeregistration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerRoiDeregistration()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    .line 408
    :goto_0
    return-void

    .line 400
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public triggerRoiRegistration()V
    .locals 2

    .line 414
    const-string v0, "[RcsUaService][API]"

    const-string v1, "triggerRoiRegistration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerRoiRegistration()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    goto :goto_0

    .line 421
    :catch_0
    move-exception v0

    .line 424
    :goto_0
    return-void

    .line 416
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterAcsEventCallback(Lcom/mediatek/ims/rcsua/AcsEventCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/AcsEventCallback;

    .line 771
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_2

    .line 773
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 774
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsCallbacks:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 775
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsCallbacks:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 777
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v1, :cond_0

    .line 778
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    iget-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    invoke-interface {v1, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->unregisterAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V

    .line 779
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 781
    goto :goto_0

    .line 780
    :catch_0
    move-exception v1

    .line 783
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 784
    return-void

    .line 783
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 772
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterClient(Lcom/mediatek/ims/rcsua/Client;)V
    .locals 3
    .param p1, "client"    # Lcom/mediatek/ims/rcsua/Client;

    .line 597
    const-string v0, "[RcsUaService][API]"

    const-string v1, "unregisterClient"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 599
    const-string v0, "[RcsUaService][API]"

    const-string v1, "unregisterClient: client doesn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    return-void

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 604
    :try_start_0
    iget v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 606
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v1, :cond_1

    .line 607
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    iget-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    invoke-interface {v1, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->unregisterClient(Lcom/mediatek/ims/rcsua/service/IRcsUaClient;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 610
    :cond_1
    goto :goto_0

    .line 608
    :catch_0
    move-exception v1

    .line 611
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    .line 612
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientCount:I

    .line 613
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 615
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 616
    monitor-exit v0

    .line 617
    return-void

    .line 616
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public updateCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 2
    .param p1, "features"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 524
    const-string v0, "[RcsUaService][API]"

    const-string v1, "updateCapabilities"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->updateCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    goto :goto_0

    .line 531
    :catch_0
    move-exception v0

    .line 534
    :goto_0
    return-void

    .line 526
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateCapabilities(Ljava/lang/String;)V
    .locals 2
    .param p1, "featuresText"    # Ljava/lang/String;

    .line 544
    const-string v0, "[RcsUaService][API]"

    const-string v1, "updateCapabilities"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    new-instance v1, Lcom/mediatek/ims/rcsua/Capability;

    invoke-direct {v1, p1}, Lcom/mediatek/ims/rcsua/Capability;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->updateCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    goto :goto_0

    .line 551
    :catch_0
    move-exception v0

    .line 554
    :goto_0
    return-void

    .line 546
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
