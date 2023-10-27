.class public Lcom/mediatek/ims/feature/MtkMmTelFeature;
.super Landroid/telephony/ims/feature/MmTelFeature;
.source "MtkMmTelFeature.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/feature/MtkMmTelFeature$ConfigListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DELAY_IMS_SERVICE_IMPL_QUERY_MS:I = 0x1388

.field public static final FEATURE_DISABLED:I = 0x0

.field public static final FEATURE_ENABLED:I = 0x1

.field public static final FEATURE_TYPE_UNKNOWN:I = -0x1

.field public static final FEATURE_TYPE_UT_OVER_LTE:I = 0x4

.field public static final FEATURE_TYPE_UT_OVER_WIFI:I = 0x5

.field public static final FEATURE_TYPE_VIDEO_OVER_LTE:I = 0x1

.field public static final FEATURE_TYPE_VIDEO_OVER_NR:I = 0x7

.field public static final FEATURE_TYPE_VIDEO_OVER_WIFI:I = 0x3

.field public static final FEATURE_TYPE_VOICE_OVER_LTE:I = 0x0

.field public static final FEATURE_TYPE_VOICE_OVER_NR:I = 0x6

.field public static final FEATURE_TYPE_VOICE_OVER_WIFI:I = 0x2

.field public static final FEATURE_UNKNOWN:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "MtkMmTelFeature"

.field private static final MAXMUIM_IMS_SERVICE_IMPL_RETRY:I = 0x3

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final REG_TECH_TO_NET_TYPE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final WAIT_TIMEOUT_MS:I = 0x7d0


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mImsServiceCallback:Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

.field private mImsServiceImpl:Lcom/mediatek/ims/ImsService;

.field private mSlotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 108
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 109
    const-string v0, "persist.vendor.log.tel_dbg"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->DEBUG:Z

    .line 121
    new-instance v0, Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0xd

    .line 125
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 124
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    .line 127
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 126
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    .line 129
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 128
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .param p1, "slotId"    # I

    .line 219
    invoke-direct {p0}, Landroid/telephony/ims/feature/MmTelFeature;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    .line 156
    new-instance v1, Lcom/mediatek/ims/feature/MtkMmTelFeature$1;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/feature/MtkMmTelFeature$1;-><init>(Lcom/mediatek/ims/feature/MtkMmTelFeature;)V

    iput-object v1, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mImsServiceCallback:Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    .line 220
    iput p1, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mSlotId:I

    .line 222
    const/4 v1, 0x0

    .line 223
    .local v1, "retry":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    if-nez v2, :cond_1

    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    .line 224
    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    .line 226
    if-nez v2, :cond_0

    .line 227
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsService is not initialized yet. Query later - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->log(Ljava/lang/String;)V

    .line 228
    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 231
    :catch_0
    move-exception v2

    .line 232
    .local v2, "er":Ljava/lang/InterruptedException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to get ImsService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->loge(Ljava/lang/String;)V

    .line 233
    .end local v2    # "er":Ljava/lang/InterruptedException;
    :cond_0
    :goto_1
    goto :goto_0

    .line 235
    :cond_1
    if-eqz v2, :cond_2

    .line 236
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mImsServiceCallback:Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    invoke-virtual {v2, p1, v0}, Lcom/mediatek/ims/ImsService;->setMmTelFeatureCallback(ILcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;)V

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize mContext "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " slotId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->log(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->initialize(Landroid/content/Context;I)V

    .line 239
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->setFeatureState(I)V

    .line 241
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mSlotId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] MtkMmTelFeature created"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->log(Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/feature/MtkMmTelFeature;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/feature/MtkMmTelFeature;

    .line 104
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/ims/feature/MtkMmTelFeature;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/feature/MtkMmTelFeature;
    .param p1, "x1"    # Landroid/content/Context;

    .line 104
    iput-object p1, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/ims/feature/MtkMmTelFeature;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/feature/MtkMmTelFeature;
    .param p1, "x1"    # Ljava/lang/String;

    .line 104
    invoke-direct {p0, p1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 104
    sget-boolean v0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->DEBUG:Z

    return v0
.end method

.method private convertCapabilities([I)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    .locals 6
    .param p1, "enabledFeatures"    # [I

    .line 312
    array-length v0, p1

    new-array v0, v0, [Z

    .line 313
    .local v0, "featuresEnabled":[Z
    const/4 v1, 0x0

    .line 314
    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-gt v1, v3, :cond_2

    array-length v5, p1

    if-ge v1, v5, :cond_2

    .line 315
    aget v3, p1, v1

    if-ne v3, v1, :cond_0

    .line 316
    aput-boolean v4, v0, v1

    goto :goto_1

    .line 317
    :cond_0
    aget v3, p1, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 319
    aput-boolean v2, v0, v1

    .line 314
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 322
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    invoke-direct {v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;-><init>()V

    .line 323
    .local v1, "capabilities":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    aget-boolean v2, v0, v2

    const/4 v5, 0x2

    if-nez v2, :cond_3

    aget-boolean v2, v0, v5

    if-eqz v2, :cond_4

    .line 326
    :cond_3
    invoke-virtual {v1, v4}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 328
    :cond_4
    aget-boolean v2, v0, v4

    if-nez v2, :cond_5

    const/4 v2, 0x3

    aget-boolean v2, v0, v2

    if-eqz v2, :cond_6

    .line 331
    :cond_5
    invoke-virtual {v1, v5}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 333
    :cond_6
    const/4 v2, 0x4

    aget-boolean v4, v0, v2

    if-nez v4, :cond_7

    aget-boolean v3, v0, v3

    if-eqz v3, :cond_8

    .line 336
    :cond_7
    invoke-virtual {v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 338
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertCapabilities - capabilities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->log(Ljava/lang/String;)V

    .line 339
    return-object v1
.end method

.method private convertCapability(II)I
    .locals 3
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I

    .line 343
    const/4 v0, -0x1

    .line 344
    .local v0, "capConverted":I
    if-nez p2, :cond_0

    .line 345
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 353
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 350
    :pswitch_2
    const/4 v0, 0x1

    .line 351
    goto :goto_0

    .line 347
    :pswitch_3
    const/4 v0, 0x0

    .line 348
    nop

    .line 354
    :goto_0
    goto :goto_3

    .line 356
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 357
    packed-switch p1, :pswitch_data_1

    :pswitch_4
    goto :goto_1

    .line 365
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_1

    .line 362
    :pswitch_6
    const/4 v0, 0x3

    .line 363
    goto :goto_1

    .line 359
    :pswitch_7
    const/4 v0, 0x2

    .line 360
    nop

    .line 366
    :goto_1
    goto :goto_3

    .line 368
    :cond_1
    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    .line 369
    packed-switch p1, :pswitch_data_2

    goto :goto_2

    .line 374
    :pswitch_8
    const/4 v0, 0x7

    goto :goto_2

    .line 371
    :pswitch_9
    const/4 v0, 0x6

    .line 372
    nop

    .line 375
    :goto_2
    goto :goto_3

    .line 378
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to convertCapability, cap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", tech:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->loge(Ljava/lang/String;)V

    .line 380
    :goto_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method private getSmsFormat()Ljava/lang/String;
    .locals 1

    .line 714
    invoke-virtual {p0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsSmsImplBase;->getSmsFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkMmTelFeature"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkMmTelFeature"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkMmTelFeature"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    return-void
.end method


# virtual methods
.method public changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
    .locals 16
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "c"    # Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    .line 442
    move-object/from16 v8, p0

    if-nez p1, :cond_0

    .line 443
    return-void

    .line 446
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->getConfigInterface()Lcom/android/ims/internal/IImsConfig;

    move-result-object v0

    .line 448
    .local v0, "imsConfig":Lcom/android/ims/internal/IImsConfig;
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToDisable()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, " radioTech: "

    const-string v13, "changeEnabledCapabilities - cap: "

    const/4 v14, -0x1

    const/4 v15, 0x1

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 449
    .local v7, "cap":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v15}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v15, v1

    .line 450
    .local v15, "latch":Ljava/util/concurrent/CountDownLatch;
    invoke-virtual {v7}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v1

    invoke-virtual {v7}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v2

    invoke-direct {v8, v1, v2}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->convertCapability(II)I

    move-result v1

    move v6, v1

    .line 451
    .local v6, "capConverted":I
    sget-object v1, Lcom/mediatek/ims/feature/MtkMmTelFeature;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    invoke-virtual {v7}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 452
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 451
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v14, v1

    .line 453
    .local v14, "radioTechConverted":I
    sget-boolean v1, Lcom/mediatek/ims/feature/MtkMmTelFeature;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->log(Ljava/lang/String;)V

    .line 457
    :cond_1
    if-gez v6, :cond_2

    .line 458
    goto :goto_0

    .line 460
    :cond_2
    const/4 v10, 0x0

    new-instance v13, Lcom/mediatek/ims/feature/MtkMmTelFeature$3;

    move-object v1, v13

    move-object/from16 v2, p0

    move v3, v6

    move v4, v14

    move-object v5, v15

    move v11, v6

    .end local v6    # "capConverted":I
    .local v11, "capConverted":I
    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/mediatek/ims/feature/MtkMmTelFeature$3;-><init>(Lcom/mediatek/ims/feature/MtkMmTelFeature;IILjava/util/concurrent/CountDownLatch;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;)V

    invoke-interface {v0, v11, v14, v10, v13}, Lcom/android/ims/internal/IImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    .line 477
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v15, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 478
    nop

    .end local v7    # "cap":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    .end local v11    # "capConverted":I
    .end local v14    # "radioTechConverted":I
    .end local v15    # "latch":Ljava/util/concurrent/CountDownLatch;
    goto :goto_0

    .line 480
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToEnable()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 481
    .restart local v7    # "cap":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v15}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v11, v1

    .line 482
    .local v11, "latch":Ljava/util/concurrent/CountDownLatch;
    invoke-virtual {v7}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v1

    invoke-virtual {v7}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v2

    invoke-direct {v8, v1, v2}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->convertCapability(II)I

    move-result v1

    move v12, v1

    .line 483
    .local v12, "capConverted":I
    sget-object v1, Lcom/mediatek/ims/feature/MtkMmTelFeature;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    invoke-virtual {v7}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 484
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 483
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v6, v1

    .line 485
    .local v6, "radioTechConverted":I
    sget-boolean v1, Lcom/mediatek/ims/feature/MtkMmTelFeature;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " enabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->log(Ljava/lang/String;)V

    .line 489
    :cond_4
    if-gez v12, :cond_5

    .line 490
    goto :goto_1

    .line 492
    :cond_5
    new-instance v5, Lcom/mediatek/ims/feature/MtkMmTelFeature$4;

    move-object v1, v5

    move-object/from16 v2, p0

    move v3, v12

    move v4, v6

    move-object v14, v5

    move-object v5, v11

    move v15, v6

    .end local v6    # "radioTechConverted":I
    .local v15, "radioTechConverted":I
    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/mediatek/ims/feature/MtkMmTelFeature$4;-><init>(Lcom/mediatek/ims/feature/MtkMmTelFeature;IILjava/util/concurrent/CountDownLatch;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;)V

    const/4 v1, 0x1

    invoke-interface {v0, v12, v15, v1, v14}, Lcom/android/ims/internal/IImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    .line 509
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v11, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 510
    move v15, v1

    const/4 v14, -0x1

    .end local v7    # "cap":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    .end local v11    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v12    # "capConverted":I
    .end local v15    # "radioTechConverted":I
    goto :goto_1

    .line 513
    .end local v0    # "imsConfig":Lcom/android/ims/internal/IImsConfig;
    :cond_6
    goto :goto_2

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeEnabledCapabilities: Error processing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->log(Ljava/lang/String;)V

    .line 514
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public close()V
    .locals 3

    .line 747
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    if-eqz v0, :cond_0

    .line 748
    iget v1, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mSlotId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ims/ImsService;->setMmTelFeatureCallback(ILcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;)V

    .line 749
    const-string v0, "Unregister callback from ImsService"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->logi(Ljava/lang/String;)V

    .line 751
    :cond_0
    return-void
.end method

.method public createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;
    .locals 3
    .param p1, "callSessionType"    # I
    .param p2, "callType"    # I

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCallProfile: callSessionType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",  callType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->log(Ljava/lang/String;)V

    .line 538
    const/4 v0, 0x0

    .line 539
    .local v0, "profile":Landroid/telephony/ims/ImsCallProfile;
    iget-object v1, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    if-eqz v1, :cond_0

    .line 540
    iget v2, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mSlotId:I

    invoke-virtual {v1, v2, p1, p2}, Lcom/mediatek/ims/ImsService;->onCreateCallProfile(III)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 542
    :cond_0
    return-object v0
.end method

.method public createCallSession(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .locals 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 554
    const-string v0, "createCallSession"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->log(Ljava/lang/String;)V

    .line 556
    const/4 v0, 0x0

    .line 557
    .local v0, "callSessionProxy":Lcom/mediatek/ims/ImsCallSessionProxy;
    iget-object v1, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    if-eqz v1, :cond_0

    .line 558
    iget v2, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mSlotId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/mediatek/ims/ImsService;->onCreateCallSessionProxy(ILandroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;)Lcom/mediatek/ims/ImsCallSessionProxy;

    move-result-object v0

    .line 560
    :cond_0
    return-object v0
.end method

.method public disableIms(I)V
    .locals 1
    .param p1, "slotId"    # I

    .line 741
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    if-eqz v0, :cond_0

    .line 742
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsService;->disableIms(I)V

    .line 744
    :cond_0
    return-void
.end method

.method public enableIms(I)V
    .locals 1
    .param p1, "slotId"    # I

    .line 731
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    if-eqz v0, :cond_0

    .line 732
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsService;->enableIms(I)V

    .line 734
    :cond_0
    return-void
.end method

.method public getConfigInterface()Lcom/android/ims/internal/IImsConfig;
    .locals 3

    .line 695
    const/4 v0, 0x0

    .line 696
    .local v0, "configInterface":Lcom/android/ims/internal/IImsConfig;
    iget-object v1, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    if-eqz v1, :cond_0

    .line 697
    iget v2, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mSlotId:I

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ImsService;->onGetConfigInterface(I)Lcom/android/ims/internal/IImsConfig;

    move-result-object v0

    .line 699
    :cond_0
    return-object v0
.end method

.method public getEcbm()Landroid/telephony/ims/stub/ImsEcbmImplBase;
    .locals 3

    .line 641
    const-string v0, "getEcbm"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->log(Ljava/lang/String;)V

    .line 643
    const/4 v0, 0x0

    .line 644
    .local v0, "ecbm":Landroid/telephony/ims/stub/ImsEcbmImplBase;
    iget-object v1, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    if-eqz v1, :cond_0

    .line 645
    iget v2, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mSlotId:I

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ImsService;->onGetEcbmProxy(I)Landroid/telephony/ims/stub/ImsEcbmImplBase;

    move-result-object v0

    .line 647
    :cond_0
    return-object v0
.end method

.method protected getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 596
    const-string v0, "getEcbmInterface"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->log(Ljava/lang/String;)V

    .line 598
    invoke-virtual {p0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->getEcbm()Landroid/telephony/ims/stub/ImsEcbmImplBase;

    move-result-object v0

    .line 599
    .local v0, "ecbm":Landroid/telephony/ims/stub/ImsEcbmImplBase;
    if-eqz v0, :cond_0

    .line 600
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsEcbmImplBase;->getImsEcbm()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v1

    return-object v1

    .line 602
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMultiEndpoint()Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    .locals 3

    .line 657
    const-string v0, "getMultiEndpoint"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->log(Ljava/lang/String;)V

    .line 659
    const/4 v0, 0x0

    .line 660
    .local v0, "multiendpoint":Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    iget-object v1, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    if-eqz v1, :cond_0

    .line 661
    iget v2, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mSlotId:I

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ImsService;->onGetMultiEndpointProxy(I)Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    move-result-object v0

    .line 663
    :cond_0
    return-object v0
.end method

.method public getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 610
    const-string v0, "getMultiEndpointInterface"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->log(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->getMultiEndpoint()Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    move-result-object v0

    .line 613
    .local v0, "multiendpoint":Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->getIImsMultiEndpoint()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v1

    return-object v1

    .line 616
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;
    .locals 3

    .line 710
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mSlotId:I

    iget-object v2, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/feature/MtkImsSmsImpl;->getInstance(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/feature/MtkImsSmsImpl;

    move-result-object v0

    return-object v0
.end method

.method public getUt()Landroid/telephony/ims/stub/ImsUtImplBase;
    .locals 4

    .line 625
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mSlotId:I

    iget-object v2, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/ImsUtImpl;->getInstance(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/ImsUtImpl;

    move-result-object v0

    .local v0, "inst":Landroid/telephony/ims/stub/ImsUtImplBase;
    goto :goto_0

    .line 628
    .end local v0    # "inst":Landroid/telephony/ims/stub/ImsUtImplBase;
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeLegacyComponentFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/LegacyComponentFactory;

    move-result-object v0

    .line 629
    .local v0, "factory":Lcom/mediatek/ims/plugin/LegacyComponentFactory;
    iget-object v1, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mSlotId:I

    iget-object v3, p0, Lcom/mediatek/ims/feature/MtkMmTelFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/ims/plugin/LegacyComponentFactory;->makeImsUt(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)Landroid/telephony/ims/stub/ImsUtImplBase;

    move-result-object v1

    move-object v0, v1

    .line 632
    .local v0, "inst":Landroid/telephony/ims/stub/ImsUtImplBase;
    :goto_0
    return-object v0
.end method

.method protected getUtInterface()Lcom/android/ims/internal/IImsUt;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 587
    invoke-virtual {p0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->getUt()Landroid/telephony/ims/stub/ImsUtImplBase;

    move-result-object v0

    .line 588
    .local v0, "utImpl":Landroid/telephony/ims/stub/ImsUtImplBase;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsUtImplBase;->getInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public final onCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .locals 3
    .param p1, "c"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 297
    :try_start_0
    invoke-super {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCapabilitiesStatusChanged error. msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->loge(Ljava/lang/String;)V

    .line 301
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    return-void
.end method

.method public onFeatureReady()V
    .locals 1

    .line 727
    const-string v0, "onFeatureReady called!"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->log(Ljava/lang/String;)V

    .line 728
    return-void
.end method

.method public onFeatureRemoved()V
    .locals 0

    .line 721
    return-void
.end method

.method public onNotifyIncomingCall(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "c"    # Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 304
    invoke-super {p0, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature;->notifyIncomingCall(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V

    .line 305
    return-void
.end method

.method public onNotifyIncomingCallSession(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "c"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 308
    invoke-super {p0, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature;->notifyIncomingCallSession(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V

    .line 309
    return-void
.end method

.method public queryCapabilityConfiguration(II)Z
    .locals 16
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I

    .line 394
    move-object/from16 v9, p0

    invoke-direct/range {p0 .. p2}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->convertCapability(II)I

    move-result v10

    .line 396
    .local v10, "capConverted":I
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v11, 0x1

    invoke-direct {v0, v11}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v12, v0

    .line 397
    .local v12, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v13, v11, [I

    .line 398
    .local v13, "returnValue":[I
    const/4 v14, 0x0

    const/4 v0, -0x1

    aput v0, v13, v14

    .line 399
    sget-object v1, Lcom/mediatek/ims/feature/MtkMmTelFeature;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 400
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 399
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 402
    .local v15, "regTech":I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->getConfigInterface()Lcom/android/ims/internal/IImsConfig;

    move-result-object v0

    .line 403
    .local v0, "imsConfig":Lcom/android/ims/internal/IImsConfig;
    if-eqz v0, :cond_0

    .line 404
    new-instance v8, Lcom/mediatek/ims/feature/MtkMmTelFeature$2;

    move-object v1, v8

    move-object/from16 v2, p0

    move v3, v10

    move v4, v15

    move-object v5, v12

    move-object v6, v13

    move/from16 v7, p1

    move-object v11, v8

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/mediatek/ims/feature/MtkMmTelFeature$2;-><init>(Lcom/mediatek/ims/feature/MtkMmTelFeature;IILjava/util/concurrent/CountDownLatch;[III)V

    invoke-interface {v0, v10, v15, v11}, Lcom/android/ims/internal/IImsConfig;->getFeatureValue(IILcom/android/ims/ImsConfigListener;)V

    goto :goto_0

    .line 414
    :cond_0
    const-string v1, "Fail to queryCapabilityConfiguration, getConfigInterface is null"

    invoke-direct {v9, v1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .end local v0    # "imsConfig":Lcom/android/ims/internal/IImsConfig;
    :goto_0
    goto :goto_1

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to queryCapabilityConfiguration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->loge(Ljava/lang/String;)V

    .line 420
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const-wide/16 v0, 0x7d0

    :try_start_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v12, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 423
    goto :goto_2

    .line 421
    :catch_1
    move-exception v0

    .line 422
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryCapabilityConfiguration - error waiting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->loge(Ljava/lang/String;)V

    .line 424
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_2
    aget v0, v13, v14

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v11, v1

    goto :goto_3

    :cond_1
    move v11, v14

    :goto_3
    return v11
.end method

.method public setUiTtyMode(ILandroid/os/Message;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "onCompleteMessage"    # Landroid/os/Message;

    .line 689
    return-void
.end method

.method public shouldProcessCall([Ljava/lang/String;)I
    .locals 1
    .param p1, "numbers"    # [Ljava/lang/String;

    .line 577
    const-string v0, "shouldProcessCall"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkMmTelFeature;->log(Ljava/lang/String;)V

    .line 579
    const/4 v0, 0x0

    return v0
.end method
