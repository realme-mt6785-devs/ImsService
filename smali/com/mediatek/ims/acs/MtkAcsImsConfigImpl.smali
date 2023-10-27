.class public Lcom/mediatek/ims/acs/MtkAcsImsConfigImpl;
.super Landroid/telephony/ims/stub/ImsConfigImplBase;
.source "MtkAcsImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/acs/MtkAcsImsConfigImpl$mAcsCallback;
    }
.end annotation


# static fields
.field public static final FAILED:I = 0x1

.field private static final KEY_DEREG_SUSPEND:Ljava/lang/String; = "OPTION_DEREG_SUSPEND"

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MtkAcsImsConfigImpl"

.field public static final UNKNOWN:I = -0x1

.field private static mContext:Landroid/content/Context;


# instance fields
.field private final mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/ims/internal/IImsConfig;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/android/ims/internal/IImsConfig;

    .line 67
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase;-><init>()V

    .line 68
    iput-object p2, p0, Lcom/mediatek/ims/acs/MtkAcsImsConfigImpl;->mOldConfigInterface:Lcom/android/ims/internal/IImsConfig;

    .line 69
    sput-object p1, Lcom/mediatek/ims/acs/MtkAcsImsConfigImpl;->mContext:Landroid/content/Context;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MtkAcsImsConfigImpl called ..with config with context"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "context "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/ims/acs/MtkAcsImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " context"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkAcsImsConfigImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method


# virtual methods
.method public setRcsClientConfiguration(Landroid/telephony/ims/RcsClientConfiguration;)V
    .locals 4
    .param p1, "rcc"    # Landroid/telephony/ims/RcsClientConfiguration;

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRcsClientConfig called in ACS vendor with rcc value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkAcsImsConfigImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 146
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "OPTION_DEREG_SUSPEND"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    sget-object v1, Lcom/mediatek/ims/acs/MtkAcsImsConfigImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/mediatek/ims/acs/MtkAcsImsConfigImpl$mAcsCallback;

    invoke-direct {v2, p0}, Lcom/mediatek/ims/acs/MtkAcsImsConfigImpl$mAcsCallback;-><init>(Lcom/mediatek/ims/acs/MtkAcsImsConfigImpl;)V

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->startService(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 149
    return-void
.end method
