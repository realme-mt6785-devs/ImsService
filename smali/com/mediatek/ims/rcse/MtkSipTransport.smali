.class public Lcom/mediatek/ims/rcse/MtkSipTransport;
.super Landroid/telephony/ims/stub/SipTransportImplBase;
.source "MtkSipTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcse/MtkSipTransport$TransportStateCallback;
    }
.end annotation


# static fields
.field private static final DELAY_IMS_SERVICE_IMPL_QUERY_MS:I = 0x5dc

.field private static final LOG_TAG:Ljava/lang/String; = "[SR-IMS][MtkSipTransport]"

.field private static final MAXMUIM_IMS_SERVICE_IMPL_RETRY:I = 0x3


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDelegates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mediatek/ims/rcse/MtkSipDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mImsServiceImpl:Lcom/mediatek/ims/ImsService;

.field private mOverallCapability:Lcom/mediatek/ims/rcsua/Capability;

.field private mSlotId:I

.field private uaSrvMgr:Lcom/mediatek/ims/rcse/UaServiceManager;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/content/Context;I)V
    .locals 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "slotId"    # I

    .line 81
    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/SipTransportImplBase;-><init>(Ljava/util/concurrent/Executor;)V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mDelegates:Ljava/util/List;

    .line 69
    new-instance v0, Lcom/mediatek/ims/rcsua/Capability;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/rcsua/Capability;-><init>(J)V

    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mOverallCapability:Lcom/mediatek/ims/rcsua/Capability;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    .line 82
    iput-object p2, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mContext:Landroid/content/Context;

    .line 83
    iput p3, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mSlotId:I

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MtkSipTransport  mContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,mSlotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,mImsServiceImpl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/rcse/MtkSipTransport;->logD(Ljava/lang/String;)V

    .line 85
    const/4 v1, 0x0

    .local v1, "retry":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    if-nez v2, :cond_1

    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    .line 86
    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/ImsService;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MtkSipTransport  mImsServiceImpl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ,retry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/rcse/MtkSipTransport;->logD(Ljava/lang/String;)V

    .line 89
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mImsServiceImpl:Lcom/mediatek/ims/ImsService;

    if-nez v2, :cond_0

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsService is not initialized yet. Query later - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/rcse/MtkSipTransport;->logD(Ljava/lang/String;)V

    .line 91
    const-wide/16 v2, 0x5dc

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    add-int/lit8 v1, v1, 0x1

    .line 96
    :cond_0
    goto :goto_1

    .line 94
    :catch_0
    move-exception v2

    .line 95
    .local v2, "er":Ljava/lang/InterruptedException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to get ImsService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/ims/rcse/MtkSipTransport;->logE(Ljava/lang/String;)V

    .line 85
    .end local v2    # "er":Ljava/lang/InterruptedException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "retry":I
    :cond_1
    if-eqz v2, :cond_2

    .line 99
    iget v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mSlotId:I

    invoke-virtual {v2, v0, p0}, Lcom/mediatek/ims/ImsService;->setSipTransport(ILcom/mediatek/ims/rcse/MtkSipTransport;)V

    .line 102
    :cond_2
    invoke-static {}, Lcom/mediatek/ims/rcse/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcse/UaServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->uaSrvMgr:Lcom/mediatek/ims/rcse/UaServiceManager;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MtkSipTransport  uaSrvMgr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->uaSrvMgr:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcse/MtkSipTransport;->logD(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->uaSrvMgr:Lcom/mediatek/ims/rcse/UaServiceManager;

    if-eqz v0, :cond_3

    .line 105
    new-instance v1, Lcom/mediatek/ims/rcse/MtkSipTransport$TransportStateCallback;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcse/MtkSipTransport$TransportStateCallback;-><init>(Lcom/mediatek/ims/rcse/MtkSipTransport;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->registerStateCallback(Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;)V

    goto :goto_2

    .line 107
    :cond_3
    const-string v0, "MtkSipTransport >> UaServiceManager not ready"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcse/MtkSipTransport;->logE(Ljava/lang/String;)V

    .line 109
    :goto_2
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/rcse/MtkSipTransport;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/MtkSipTransport;
    .param p1, "x1"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcse/MtkSipTransport;->logD(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/ims/rcse/MtkSipTransport;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/MtkSipTransport;

    .line 64
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mDelegates:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/rcse/MtkSipTransport;)Lcom/mediatek/ims/rcse/UaServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcse/MtkSipTransport;

    .line 64
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->uaSrvMgr:Lcom/mediatek/ims/rcse/UaServiceManager;

    return-object v0
.end method

.method private checkDelegateFeatures(Ljava/util/Set;)Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;"
        }
    .end annotation

    .line 194
    .local p1, "featureTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkDelegateFeatures  featureTags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcse/MtkSipTransport;->logD(Ljava/lang/String;)V

    .line 195
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 197
    .local v0, "deniedFeatures":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/FeatureTagState;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkDelegateFeatures  is RCS capable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->rcsSingleRegistrationCapable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/rcse/MtkSipTransport;->logD(Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->rcsSingleRegistrationCapable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 199
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 200
    .local v2, "ft":Ljava/lang/String;
    new-instance v3, Landroid/telephony/ims/FeatureTagState;

    const/4 v4, 0x3

    invoke-direct {v3, v2, v4}, Landroid/telephony/ims/FeatureTagState;-><init>(Ljava/lang/String;I)V

    .line 202
    .local v3, "state":Landroid/telephony/ims/FeatureTagState;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkDelegateFeatures  state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " ,ft: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/ims/rcse/MtkSipTransport;->logD(Ljava/lang/String;)V

    .line 203
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    .end local v2    # "ft":Ljava/lang/String;
    goto :goto_0

    .end local v3    # "state":Landroid/telephony/ims/FeatureTagState;
    :cond_0
    goto/16 :goto_3

    .line 206
    :cond_1
    const/4 v1, 0x1

    .line 207
    .local v1, "serviceAvailable":Z
    invoke-static {}, Lcom/mediatek/ims/rcse/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcse/UaServiceManager;

    move-result-object v2

    .line 208
    .local v2, "uaSrvMgr":Lcom/mediatek/ims/rcse/UaServiceManager;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/mediatek/ims/rcse/UaServiceManager;->serviceConnected()Z

    move-result v3

    if-nez v3, :cond_3

    .line 209
    :cond_2
    const/4 v1, 0x1

    .line 211
    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 212
    .local v4, "ft":Ljava/lang/String;
    if-nez v1, :cond_4

    .line 213
    new-instance v5, Landroid/telephony/ims/FeatureTagState;

    const/4 v6, 0x2

    invoke-direct {v5, v4, v6}, Landroid/telephony/ims/FeatureTagState;-><init>(Ljava/lang/String;I)V

    .local v5, "state":Landroid/telephony/ims/FeatureTagState;
    goto :goto_2

    .line 216
    .end local v5    # "state":Landroid/telephony/ims/FeatureTagState;
    :cond_4
    new-instance v5, Lcom/mediatek/ims/rcsua/Capability;

    invoke-direct {v5, v4}, Lcom/mediatek/ims/rcsua/Capability;-><init>(Ljava/lang/String;)V

    .line 217
    .local v5, "capability":Lcom/mediatek/ims/rcsua/Capability;
    invoke-virtual {v5}, Lcom/mediatek/ims/rcsua/Capability;->toNumeric()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    const/4 v7, 0x4

    if-nez v6, :cond_5

    .line 218
    new-instance v6, Landroid/telephony/ims/FeatureTagState;

    invoke-direct {v6, v4, v7}, Landroid/telephony/ims/FeatureTagState;-><init>(Ljava/lang/String;I)V

    .line 219
    .local v6, "state":Landroid/telephony/ims/FeatureTagState;
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 220
    goto :goto_1

    .line 222
    .end local v6    # "state":Landroid/telephony/ims/FeatureTagState;
    :cond_5
    iget-object v6, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mOverallCapability:Lcom/mediatek/ims/rcsua/Capability;

    invoke-virtual {v6, v4}, Lcom/mediatek/ims/rcsua/Capability;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 223
    new-instance v6, Landroid/telephony/ims/FeatureTagState;

    const/4 v8, 0x1

    invoke-direct {v6, v4, v8}, Landroid/telephony/ims/FeatureTagState;-><init>(Ljava/lang/String;I)V

    .line 224
    .restart local v6    # "state":Landroid/telephony/ims/FeatureTagState;
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 227
    .end local v6    # "state":Landroid/telephony/ims/FeatureTagState;
    :cond_6
    new-instance v6, Lcom/mediatek/ims/rcsua/Capability;

    const-wide/16 v8, 0x4000

    invoke-direct {v6, v8, v9}, Lcom/mediatek/ims/rcsua/Capability;-><init>(J)V

    .line 228
    .local v6, "botVersion2":Lcom/mediatek/ims/rcsua/Capability;
    invoke-virtual {v6}, Lcom/mediatek/ims/rcsua/Capability;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/mediatek/ims/rcsua/Capability;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 229
    invoke-virtual {v5, v6}, Lcom/mediatek/ims/rcsua/Capability;->remove(Lcom/mediatek/ims/rcsua/Capability;)Lcom/mediatek/ims/rcsua/Capability;

    .line 230
    new-instance v8, Landroid/telephony/ims/FeatureTagState;

    invoke-virtual {v6}, Lcom/mediatek/ims/rcsua/Capability;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Landroid/telephony/ims/FeatureTagState;-><init>(Ljava/lang/String;I)V

    move-object v7, v8

    .line 231
    .local v7, "state":Landroid/telephony/ims/FeatureTagState;
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    .end local v4    # "ft":Ljava/lang/String;
    .end local v5    # "capability":Lcom/mediatek/ims/rcsua/Capability;
    .end local v6    # "botVersion2":Lcom/mediatek/ims/rcsua/Capability;
    .end local v7    # "state":Landroid/telephony/ims/FeatureTagState;
    :cond_7
    :goto_2
    goto :goto_1

    .line 236
    .end local v1    # "serviceAvailable":Z
    .end local v2    # "uaSrvMgr":Lcom/mediatek/ims/rcse/UaServiceManager;
    :cond_8
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkDelegateFeatures  deniedFeatures: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/rcse/MtkSipTransport;->logD(Ljava/lang/String;)V

    .line 237
    return-object v0
.end method

.method private logD(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SR-IMS][MtkSipTransport]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void
.end method

.method private logE(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SR-IMS][MtkSipTransport]"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void
.end method

.method private logI(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SR-IMS][MtkSipTransport]"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-void
.end method


# virtual methods
.method public createSipDelegate(ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/DelegateStateCallback;Landroid/telephony/ims/DelegateMessageCallback;)V
    .locals 10
    .param p1, "subscriptionId"    # I
    .param p2, "request"    # Landroid/telephony/ims/DelegateRequest;
    .param p3, "dc"    # Landroid/telephony/ims/DelegateStateCallback;
    .param p4, "mc"    # Landroid/telephony/ims/DelegateMessageCallback;

    .line 113
    const-string v0, "request should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    const-string v0, "delegate callback should not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    const-string v0, "message callback should not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createSipDelegate >> subId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], features["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p2}, Landroid/telephony/ims/DelegateRequest;->getFeatureTags()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], dc["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], mc["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcse/MtkSipTransport;->logI(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/telephony/ims/DelegateRequest;->getFeatureTags()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcse/MtkSipTransport;->checkDelegateFeatures(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 121
    .local v0, "deniedFeatures":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/FeatureTagState;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createSipDelegate >> deniedFeatures["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/rcse/MtkSipTransport;->logD(Ljava/lang/String;)V

    .line 123
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 124
    new-instance v2, Lcom/mediatek/ims/rcsua/Capability;

    invoke-virtual {p2}, Landroid/telephony/ims/DelegateRequest;->getFeatureTags()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mediatek/ims/rcsua/Capability;-><init>(Ljava/util/Set;)V

    .line 125
    .local v2, "requested":Lcom/mediatek/ims/rcsua/Capability;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createSipDelegate >> requested["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/ims/rcse/MtkSipTransport;->logD(Ljava/lang/String;)V

    .line 126
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/FeatureTagState;

    .line 127
    .local v4, "state":Landroid/telephony/ims/FeatureTagState;
    invoke-virtual {v4}, Landroid/telephony/ims/FeatureTagState;->getFeatureTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/mediatek/ims/rcsua/Capability;->remove(Ljava/lang/String;)Lcom/mediatek/ims/rcsua/Capability;

    .line 128
    .end local v4    # "state":Landroid/telephony/ims/FeatureTagState;
    goto :goto_0

    .line 129
    :cond_0
    new-instance v3, Landroid/telephony/ims/DelegateRequest;

    invoke-virtual {v2}, Lcom/mediatek/ims/rcsua/Capability;->toFeatureTags()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/telephony/ims/DelegateRequest;-><init>(Ljava/util/Set;)V

    move-object p2, v3

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createSipDelegate >> request["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/ims/rcse/MtkSipTransport;->logD(Ljava/lang/String;)V

    .line 133
    .end local v2    # "requested":Lcom/mediatek/ims/rcsua/Capability;
    :cond_1
    new-instance v2, Lcom/mediatek/ims/rcse/MtkSipDelegate;

    iget-object v5, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mContext:Landroid/content/Context;

    move-object v4, v2

    move v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/mediatek/ims/rcse/MtkSipDelegate;-><init>(Landroid/content/Context;ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/DelegateStateCallback;Landroid/telephony/ims/DelegateMessageCallback;)V

    .line 134
    .local v2, "delegate":Lcom/mediatek/ims/rcse/MtkSipDelegate;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createSipDelegate >> delegate["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/rcse/MtkSipTransport;->logI(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mDelegates:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v1, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mOverallCapability:Lcom/mediatek/ims/rcsua/Capability;

    invoke-virtual {p2}, Landroid/telephony/ims/DelegateRequest;->getFeatureTags()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/rcsua/Capability;->add(Ljava/util/Set;)Lcom/mediatek/ims/rcsua/Capability;

    .line 138
    invoke-interface {p3, v2, v0}, Landroid/telephony/ims/DelegateStateCallback;->onCreated(Landroid/telephony/ims/stub/SipDelegate;Ljava/util/Set;)V

    .line 140
    invoke-static {}, Lcom/mediatek/ims/rcse/UaServiceManager;->getInstance()Lcom/mediatek/ims/rcse/UaServiceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->uaSrvMgr:Lcom/mediatek/ims/rcse/UaServiceManager;

    .line 141
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->imsRegistered()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 142
    iget-object v1, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->uaSrvMgr:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-virtual {v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->getRegistrationInfo()Lcom/mediatek/ims/rcsua/RegistrationInfo;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/rcse/MtkSipDelegate;->notifyRegisteredRegistrationStateChanged(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V

    .line 144
    :cond_2
    return-void
.end method

.method public destroySipDelegate(Landroid/telephony/ims/stub/SipDelegate;I)V
    .locals 4
    .param p1, "delegate"    # Landroid/telephony/ims/stub/SipDelegate;
    .param p2, "reason"    # I

    .line 148
    const-string v0, "delegate should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroySipDelegate >> delegate["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], reason["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcse/MtkSipTransport;->logI(Ljava/lang/String;)V

    .line 151
    instance-of v0, p1, Lcom/mediatek/ims/rcse/MtkSipDelegate;

    if-nez v0, :cond_0

    .line 152
    return-void

    .line 154
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/mediatek/ims/rcse/MtkSipDelegate;

    .line 155
    .local v0, "sipDelegate":Lcom/mediatek/ims/rcse/MtkSipDelegate;
    invoke-virtual {v0}, Lcom/mediatek/ims/rcse/MtkSipDelegate;->getStateCallback()Landroid/telephony/ims/DelegateStateCallback;

    move-result-object v1

    .line 157
    .local v1, "stateCallback":Landroid/telephony/ims/DelegateStateCallback;
    iget-object v2, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mOverallCapability:Lcom/mediatek/ims/rcsua/Capability;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcse/MtkSipDelegate;->getFeatureTags()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/rcsua/Capability;->remove(Ljava/util/Set;)Lcom/mediatek/ims/rcsua/Capability;

    .line 158
    iget-object v2, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mDelegates:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 160
    if-eqz v1, :cond_1

    .line 161
    invoke-interface {v1, p2}, Landroid/telephony/ims/DelegateStateCallback;->onDestroyed(I)V

    .line 163
    :cond_1
    return-void
.end method

.method public triggerFullNetworkRegistration(ILjava/lang/String;)V
    .locals 2
    .param p1, "sipCode"    # I
    .param p2, "sipReason"    # Ljava/lang/String;

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerFullNetworkRegistration sipCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,sipReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcse/MtkSipTransport;->logD(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->uaSrvMgr:Lcom/mediatek/ims/rcse/UaServiceManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->serviceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->uaSrvMgr:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->triggerRestoration()V

    goto :goto_0

    .line 189
    :cond_0
    const-string v0, "triggerFullNetworkRegistration >> UA not connected"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcse/MtkSipTransport;->logE(Ljava/lang/String;)V

    .line 191
    :goto_0
    return-void
.end method

.method public triggerSipDelegateDeregistration()V
    .locals 2

    .line 176
    const-string v0, "triggerSipDelegateDeregistration"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcse/MtkSipTransport;->logD(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->uaSrvMgr:Lcom/mediatek/ims/rcse/UaServiceManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->serviceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->uaSrvMgr:Lcom/mediatek/ims/rcse/UaServiceManager;

    iget-object v1, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mOverallCapability:Lcom/mediatek/ims/rcsua/Capability;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->updateCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V

    goto :goto_0

    .line 180
    :cond_0
    const-string v0, "updateSipDelegateRegistration >> UA not connected"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcse/MtkSipTransport;->logE(Ljava/lang/String;)V

    .line 182
    :goto_0
    return-void
.end method

.method public updateSipDelegateRegistration()V
    .locals 2

    .line 166
    const-string v0, "updateSipDelegateRegistration"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcse/MtkSipTransport;->logD(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->uaSrvMgr:Lcom/mediatek/ims/rcse/UaServiceManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->serviceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->uaSrvMgr:Lcom/mediatek/ims/rcse/UaServiceManager;

    iget-object v1, p0, Lcom/mediatek/ims/rcse/MtkSipTransport;->mOverallCapability:Lcom/mediatek/ims/rcsua/Capability;

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->updateCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V

    goto :goto_0

    .line 170
    :cond_0
    const-string v0, "updateSipDelegateRegistration >> UA not connected"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcse/MtkSipTransport;->logE(Ljava/lang/String;)V

    .line 172
    :goto_0
    return-void
.end method
