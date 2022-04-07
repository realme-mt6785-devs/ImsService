.class public Lcom/mediatek/ims/plugin/impl/ImsSSExtPluginBase;
.super Ljava/lang/Object;
.source "ImsSSExtPluginBase.java"

# interfaces
.implements Lcom/mediatek/ims/plugin/ImsSSExtPlugin;


# static fields
.field private static final SENLOG:Z

.field private static final TAG:Ljava/lang/String; = "ImsSSExtPluginBase"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/plugin/impl/ImsSSExtPluginBase;->SENLOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/mediatek/ims/plugin/impl/ImsSSExtPluginBase;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method


# virtual methods
.method public getImsCallForwardInfo([Lcom/android/internal/telephony/CallForwardInfo;)[Landroid/telephony/ims/ImsCallForwardInfo;
    .locals 6
    .param p1, "info"    # [Lcom/android/internal/telephony/CallForwardInfo;

    .line 72
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 73
    .local v1, "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    if-eqz p1, :cond_3

    .line 74
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    const/4 v4, 0x0

    if-ge v2, v3, :cond_2

    .line 79
    sget-boolean v3, Lcom/mediatek/ims/plugin/impl/ImsSSExtPluginBase;->SENLOG:Z

    if-nez v3, :cond_0

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getImsCallForwardInfo: info["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ImsSSExtPluginBase"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    aget-object v3, p1, v2

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    if-ne v3, v0, :cond_1

    .line 85
    new-instance v0, Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-direct {v0}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>()V

    aput-object v0, v1, v4

    .line 86
    aget-object v0, v1, v4

    aget-object v3, p1, v2

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->getConditionFromCFReason(I)I

    move-result v3

    iput v3, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    .line 87
    aget-object v0, v1, v4

    aget-object v3, p1, v2

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    iput v3, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    .line 88
    aget-object v0, v1, v4

    aget-object v3, p1, v2

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    iput v3, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    .line 89
    aget-object v0, v1, v4

    aget-object v3, p1, v2

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    iput v3, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mToA:I

    .line 90
    aget-object v0, v1, v4

    aget-object v3, p1, v2

    iget-object v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v3, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 91
    aget-object v0, v1, v4

    aget-object v3, p1, v2

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iput v3, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mTimeSeconds:I

    .line 92
    return-object v1

    .line 74
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Landroid/telephony/ims/ImsCallForwardInfo;

    invoke-direct {v2}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>()V

    aput-object v2, v1, v4

    .line 101
    aget-object v2, v1, v4

    aget-object v3, p1, v4

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v3}, Lcom/mediatek/ims/ImsUtImpl;->getConditionFromCFReason(I)I

    move-result v3

    iput v3, v2, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    .line 102
    aget-object v2, v1, v4

    iput v4, v2, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    .line 103
    aget-object v2, v1, v4

    iput v0, v2, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    .line 104
    aget-object v0, v1, v4

    iput v4, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mToA:I

    .line 105
    aget-object v0, v1, v4

    const-string v2, ""

    iput-object v2, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 106
    aget-object v0, v1, v4

    iput v4, v0, Landroid/telephony/ims/ImsCallForwardInfo;->mTimeSeconds:I

    .line 108
    :cond_3
    return-object v1
.end method
