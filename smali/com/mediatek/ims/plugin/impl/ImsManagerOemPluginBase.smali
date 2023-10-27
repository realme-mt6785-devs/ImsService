.class public Lcom/mediatek/ims/plugin/impl/ImsManagerOemPluginBase;
.super Ljava/lang/Object;
.source "ImsManagerOemPluginBase.java"

# interfaces
.implements Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsManagerOemPluginBase"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasPlugin()Z
    .locals 1

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public isWfcSupport()Z
    .locals 2

    .line 60
    const-string v0, "ImsManagerOemPluginBase"

    const-string v1, "default isWfcSupport"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public updateImsServiceConfig(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 72
    invoke-static {p1, p2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 73
    .local v0, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->updateImsServiceConfig()V

    .line 76
    :cond_0
    return-void
.end method
