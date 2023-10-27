.class public Lcom/mediatek/ims/rcse/LauncherUtils;
.super Ljava/lang/Object;
.source "LauncherUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "[SR-IMS][LauncherUtils]"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCurrentUserPhoneId()I
    .locals 3

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "phoneId":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 71
    .local v1, "subId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 74
    :cond_0
    return v0
.end method

.method public static launchRcsService(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " launchRcsService "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SR-IMS][LauncherUtils]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {p0}, Lcom/mediatek/ims/rcse/UaServiceManager;->createInstance(Landroid/content/Context;)Lcom/mediatek/ims/rcse/UaServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/ims/rcse/LauncherUtils;->getCurrentUserPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->startService(I)V

    .line 66
    return-void
.end method
