.class public final Lcom/mediatek/common/omadm/OmadmManager;
.super Ljava/lang/Object;
.source "OmadmManager.java"


# static fields
.field public static final OMADM_DELIMITER:Ljava/lang/String; = "<omadm>"

.field private static final TAG:Ljava/lang/String; = "OmadmManager"


# instance fields
.field final mService:Lcom/mediatek/common/omadm/IOmadmManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/common/omadm/OmadmManager;->mService:Lcom/mediatek/common/omadm/IOmadmManager;

    .line 65
    return-void
.end method


# virtual methods
.method public inputStream(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    .line 71
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/common/omadm/OmadmManager;->mService:Lcom/mediatek/common/omadm/IOmadmManager;

    invoke-interface {v1, p1}, Lcom/mediatek/common/omadm/IOmadmManager;->inputStream(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 74
    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OmadmManager"

    const-string v3, "Error on inputStream"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method
