.class public Lcom/mediatek/ims/feature/MtkRcsFeature;
.super Landroid/telephony/ims/feature/RcsFeature;
.source "MtkRcsFeature.java"


# static fields
.field private static final DELAY_IMS_SERVICE_IMPL_QUERY_MS:I = 0x1388

.field private static final LOG_TAG:Ljava/lang/String; = "MtkRcsFeature"

.field private static final MAXMUIM_IMS_SERVICE_IMPL_RETRY:I = 0x3

.field private static final sCapabilitiesByRadioTech:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCapEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

.field private mCapExchangeImpl:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

.field private mContext:Landroid/content/Context;

.field private mImsServiceImpl:Lcom/mediatek/ims/ImsService;

.field private final mImsServiceRcsCallback:Lcom/mediatek/ims/ImsService$IMtkRcsFeatureCallback;

.field private mSlotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 67
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/mediatek/ims/feature/MtkRcsFeature;->sCapabilitiesByRadioTech:Ljava/util/Map;

    .line 70
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    invoke-direct {v2, v4}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    invoke-direct {v2, v4}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 102
    invoke-direct {p0}, Landroid/telephony/ims/feature/RcsFeature;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    .line 86
    new-instance v1, Lcom/mediatek/ims/feature/MtkRcsFeature$1;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/feature/MtkRcsFeature$1;-><init>(Lcom/mediatek/ims/feature/MtkRcsFeature;)V

    iput-object v1, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mImsServiceRcsCallback:Lcom/mediatek/ims/ImsService$IMtkRcsFeatureCallback;

    .line 103
    iput-object p2, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mContext:Landroid/content/Context;

    .line 104
    iput p1, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mSlotId:I

    .line 105
    const/4 v1, 0x0

    .line 107
    .local v1, "retry":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    if-nez v2, :cond_1

    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    .line 108
    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    .line 110
    if-nez v2, :cond_0

    .line 111
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsService is not initialized yet. Query later - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/feature/MtkRcsFeature;->logW(Ljava/lang/String;)V

    .line 112
    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 115
    :catch_0
    move-exception v2

    .line 116
    .local v2, "er":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to get ImsService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/ims/feature/MtkRcsFeature;->logE(Ljava/lang/String;)V

    .line 117
    .end local v2    # "er":Ljava/lang/Exception;
    :cond_0
    :goto_1
    goto :goto_0

    .line 119
    :cond_1
    if-eqz v2, :cond_2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize mContext "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " slotId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkRcsFeature;->logD(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    iget-object v2, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mImsServiceRcsCallback:Lcom/mediatek/ims/ImsService$IMtkRcsFeatureCallback;

    invoke-virtual {v0, p1, v2}, Lcom/mediatek/ims/ImsService;->setRcsFeatureCallback(ILcom/mediatek/ims/ImsService$IMtkRcsFeatureCallback;)V

    .line 122
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/feature/MtkRcsFeature;->setFeatureState(I)V

    .line 125
    :cond_2
    const-string v0, "MtkRcsFeature created"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkRcsFeature;->logD(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/feature/MtkRcsFeature;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/feature/MtkRcsFeature;

    .line 58
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/ims/feature/MtkRcsFeature;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/feature/MtkRcsFeature;
    .param p1, "x1"    # Landroid/content/Context;

    .line 58
    iput-object p1, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/ims/feature/MtkRcsFeature;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/feature/MtkRcsFeature;
    .param p1, "x1"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1}, Lcom/mediatek/ims/feature/MtkRcsFeature;->logD(Ljava/lang/String;)V

    return-void
.end method

.method private logD(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkRcsFeature"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void
.end method

.method private logE(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkRcsFeature"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void
.end method

.method private logI(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkRcsFeature"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void
.end method

.method private logW(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkRcsFeature"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void
.end method


# virtual methods
.method public changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
    .locals 6
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "c"    # Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeEnabledCapabilities: capsToEnable["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToEnable()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkRcsFeature;->logD(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToEnable()Ljava/util/List;

    move-result-object v0

    .line 194
    .local v0, "pairs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 195
    .local v3, "pair":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    sget-object v4, Lcom/mediatek/ims/feature/MtkRcsFeature;->sCapabilitiesByRadioTech:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    .line 196
    .local v4, "caps":Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;
    if-eqz v4, :cond_0

    .line 197
    invoke-virtual {v3}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->addCapabilities(I)V

    .line 199
    .end local v3    # "pair":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    .end local v4    # "caps":Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;
    :cond_0
    goto :goto_0

    .line 201
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeEnabledCapabilities: capsToDisable["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToDisable()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/feature/MtkRcsFeature;->logD(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToDisable()Ljava/util/List;

    move-result-object v0

    .line 204
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 205
    .local v2, "pair":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    sget-object v3, Lcom/mediatek/ims/feature/MtkRcsFeature;->sCapabilitiesByRadioTech:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getRadioTech()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    .line 206
    .local v3, "caps":Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;
    if-eqz v3, :cond_2

    .line 207
    invoke-virtual {v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->removeCapabilities(I)V

    .line 209
    .end local v2    # "pair":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    .end local v3    # "caps":Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;
    :cond_2
    goto :goto_1

    .line 211
    :cond_3
    return-void
.end method

.method public createCapabilityExchangeImpl(Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;
    .locals 3
    .param p1, "listener"    # Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    .line 131
    iput-object p1, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mCapEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    .line 132
    new-instance v0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    iget v1, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mSlotId:I

    iget-object v2, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p1}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;-><init>(ILandroid/content/Context;Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)V

    iput-object v0, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mCapExchangeImpl:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCapabilityExchangeImpl: mCapExchangeImpl["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mCapExchangeImpl:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "],mCapEventListener["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mCapEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkRcsFeature;->logD(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mCapExchangeImpl:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    return-object v0
.end method

.method public destroyCapabilityExchangeImpl(Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;)V
    .locals 2
    .param p1, "capExchangeImpl"    # Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroyCapabilityExchangeImpl: capExchangeImpl["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkRcsFeature;->logD(Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mCapEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    .line 141
    return-void
.end method

.method public disableIms(I)V
    .locals 1
    .param p1, "slotId"    # I

    .line 162
    const-string v0, "disableIms"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkRcsFeature;->logD(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsService;->disableIms(I)V

    .line 166
    :cond_0
    return-void
.end method

.method public enableIms(I)V
    .locals 1
    .param p1, "slotId"    # I

    .line 151
    const-string v0, "enableIms"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkRcsFeature;->logD(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsService;->enableIms(I)V

    .line 155
    :cond_0
    return-void
.end method

.method public getConfigInterface()Lcom/android/ims/internal/IImsConfig;
    .locals 3

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "configInterface":Lcom/android/ims/internal/IImsConfig;
    iget-object v1, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    if-eqz v1, :cond_0

    .line 174
    iget v2, p0, Lcom/mediatek/ims/feature/MtkRcsFeature;->mSlotId:I

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/ImsService;->onGetConfigInterface(I)Lcom/android/ims/internal/IImsConfig;

    move-result-object v0

    .line 176
    :cond_0
    return-object v0
.end method

.method public final onCapabilitiesStatusChanged(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V
    .locals 3
    .param p1, "c"    # Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    .line 181
    :try_start_0
    invoke-super {p0, p1}, Landroid/telephony/ims/feature/RcsFeature;->notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
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

    invoke-direct {p0, v1}, Lcom/mediatek/ims/feature/MtkRcsFeature;->logE(Ljava/lang/String;)V

    .line 185
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    return-void
.end method

.method public onFeatureReady()V
    .locals 1

    .line 147
    const-string v0, "onFeatureReady called!"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkRcsFeature;->logD(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public queryCapabilityConfiguration(II)Z
    .locals 3
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCapabilityConfiguration: radioTech["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], capability["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/feature/MtkRcsFeature;->logD(Ljava/lang/String;)V

    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "caps":Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->rcsSingleRegistrationCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    sget-object v1, Lcom/mediatek/ims/feature/MtkRcsFeature;->sCapabilitiesByRadioTech:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    .line 221
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->isCapable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
