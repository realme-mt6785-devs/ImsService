.class Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;
.super Ljava/lang/Object;
.source "ImsConfigStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/config/internal/ImsConfigStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FeatureHelper"
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mIsFeatureBroadcast:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneId:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 779
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mContext:Landroid/content/Context;

    .line 780
    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 781
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mIsFeatureBroadcast:Ljava/util/HashMap;

    .line 785
    iput p2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mPhoneId:I

    .line 786
    iput-object p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mContext:Landroid/content/Context;

    .line 787
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 789
    invoke-direct {p0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->resetBroadcastFlag()V

    .line 790
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;

    .line 777
    invoke-direct {p0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->initFeatureStorage()V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;

    .line 777
    invoke-direct {p0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->isAllFeatureFalse()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;III)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 777
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->updateFeature(III)V

    return-void
.end method

.method static synthetic access$2100(Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;

    .line 777
    invoke-direct {p0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->clear()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;

    .line 777
    invoke-direct {p0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->resetBroadcastFlag()V

    return-void
.end method

.method private checkIfBroadcastOnce(II)Z
    .locals 5
    .param p1, "feature"    # I
    .param p2, "phoneId"    # I

    .line 911
    sget-object v0, Lcom/mediatek/ims/config/internal/ImsConfigProvider;->LatestSimState:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 912
    .local v0, "simState":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$2300()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkIfBroadcastOnce() phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Sim state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsConfigStorage"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 915
    return v1

    .line 917
    :cond_1
    if-eqz v0, :cond_2

    const-string v2, "READY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 918
    const-string v2, "IMSI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 919
    const-string v2, "LOADED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 920
    const-string v2, "LOCKED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 921
    return v1

    .line 923
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mIsFeatureBroadcast:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    .line 924
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mIsFeatureBroadcast:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    return v1

    .line 927
    :cond_3
    return v3
.end method

.method private clear()V
    .locals 5

    .line 822
    const-string v0, "ImsConfigStorage"

    const-string v1, "phone_id = ?"

    .line 823
    .local v1, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mPhoneId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 825
    .local v2, "args":[Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/mediatek/ims/config/ImsConfigContract$Feature;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 830
    :catch_0
    move-exception v3

    .line 831
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "FeatureHelper.clear Exception"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 828
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 829
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v4, "FeatureHelper.clear SecurityException"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/SecurityException;
    goto :goto_0

    .line 826
    :catch_2
    move-exception v3

    .line 827
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "FeatureHelper.clear IllegalArgumentException"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    nop

    .line 833
    :goto_1
    return-void
.end method

.method private initFeatureStorage()V
    .locals 7

    .line 794
    iget v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mPhoneId:I

    const-string v1, "persist.vendor.mtk.volte.enable"

    invoke-static {v1, v0}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v0

    .line 796
    .local v0, "volte":I
    const/4 v1, 0x0

    const/16 v2, 0xd

    invoke-direct {p0, v1, v2, v0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->updateFeature(III)V

    .line 798
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFeature: VoLTE initial value:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for phoneId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "ImsConfigStorage"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mPhoneId:I

    const-string v5, "persist.vendor.mtk.vilte.enable"

    invoke-static {v5, v1}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v1

    .line 803
    .local v1, "vilte":I
    const/4 v5, 0x1

    invoke-direct {p0, v5, v2, v1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->updateFeature(III)V

    .line 805
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateFeature: ViLTE initial value:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mPhoneId:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mPhoneId:I

    const-string v5, "persist.vendor.mtk.wfc.enable"

    invoke-static {v5, v2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getFeaturePropValue(Ljava/lang/String;I)I

    move-result v2

    .line 810
    .local v2, "vowifi":I
    const/4 v5, 0x2

    const/16 v6, 0x12

    invoke-direct {p0, v5, v6, v2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->updateFeature(III)V

    .line 812
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateFeature: VoWIFI initial value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mPhoneId:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    return-void
.end method

.method private isAllFeatureFalse()Z
    .locals 7

    .line 940
    const/4 v0, -0x1

    .local v0, "volte":I
    const/4 v1, -0x1

    .local v1, "vilte":I
    const/4 v2, -0x1

    .line 943
    .local v2, "wfc":I
    nop

    .line 944
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v3}, Lcom/mediatek/ims/config/ImsConfigContract;->getNetworkTypeByFeature(I)I

    move-result v4

    .line 943
    invoke-virtual {p0, v3, v4}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->getFeatureValue(II)I

    move-result v4

    move v0, v4

    .line 946
    nop

    .line 947
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/mediatek/ims/config/ImsConfigContract;->getNetworkTypeByFeature(I)I

    move-result v5

    .line 946
    invoke-virtual {p0, v4, v5}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->getFeatureValue(II)I

    move-result v5

    move v1, v5

    .line 949
    nop

    .line 950
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/mediatek/ims/config/ImsConfigContract;->getNetworkTypeByFeature(I)I

    move-result v6

    .line 949
    invoke-virtual {p0, v5, v6}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->getFeatureValue(II)I

    move-result v5
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v5

    .line 952
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 953
    return v4

    .line 955
    :cond_0
    return v3

    .line 957
    :catch_0
    move-exception v4

    .line 958
    .local v4, "e":Lcom/android/ims/ImsException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAllFeatureFalse volte:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", vilte:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", wfc:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ImsConfigStorage"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    return v3
.end method

.method private resetBroadcastFlag()V
    .locals 3

    .line 933
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mIsFeatureBroadcast:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mIsFeatureBroadcast:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mIsFeatureBroadcast:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mIsFeatureBroadcast:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    return-void
.end method

.method private updateFeature(III)V
    .locals 8
    .param p1, "featureId"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I

    .line 836
    const-string v0, ", value:"

    const-string v1, "ImsConfigStorage"

    const/4 v2, -0x1

    .line 837
    .local v2, "curValue":I
    const/4 v3, 0x0

    .line 838
    .local v3, "result":Z
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 839
    .local v4, "cv":Landroid/content/ContentValues;
    iget v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mPhoneId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "phone_id"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 840
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "feature_id"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 841
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "network_id"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 842
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "value"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 846
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->getFeatureValue(II)I

    move-result v5

    move v2, v5

    .line 847
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$100()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateFeature() comparing: curValue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_0
    iget v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mPhoneId:I

    invoke-direct {p0, p1, v5}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->checkIfBroadcastOnce(II)Z

    move-result v5

    if-eqz v5, :cond_1

    if-ne v2, p3, :cond_1

    const/4 v5, -0x1

    if-ne v2, v5, :cond_2

    .line 850
    :cond_1
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mPhoneId:I

    .line 851
    invoke-static {v6, p1, p2}, Lcom/mediatek/ims/config/ImsConfigContract$Feature;->getUriWithFeatureId(III)Landroid/net/Uri;

    move-result-object v6

    .line 850
    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    :cond_2
    goto :goto_1

    .line 854
    :catch_0
    move-exception v5

    .line 855
    .local v5, "e":Lcom/android/ims/ImsException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateFeature() ImsException featureId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/mediatek/ims/config/ImsConfigContract$Feature;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 862
    :catch_1
    move-exception v0

    .line 863
    .local v0, "e1":Ljava/lang/Exception;
    const-string v6, "updateFeature Exception"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 860
    .end local v0    # "e1":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 861
    .local v0, "e1":Ljava/lang/SecurityException;
    const-string v6, "updateFeature SecurityException"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e1":Ljava/lang/SecurityException;
    goto :goto_0

    .line 858
    :catch_3
    move-exception v0

    .line 859
    .local v0, "e1":Ljava/lang/IllegalArgumentException;
    const-string v6, "updateFeature IllegalArgumentException"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    .end local v0    # "e1":Ljava/lang/IllegalArgumentException;
    :goto_0
    nop

    .line 866
    .end local v5    # "e":Lcom/android/ims/ImsException;
    :goto_1
    return-void
.end method


# virtual methods
.method getFeatureValue(II)I
    .locals 16
    .param p1, "featureId"    # I
    .param p2, "network"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 869
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "Feature "

    const-string v4, "ImsConfigStorage"

    const/4 v5, 0x0

    .line 870
    .local v5, "c":Landroid/database/Cursor;
    const/4 v6, -0x1

    .line 871
    .local v6, "result":I
    const-string v0, "phone_id"

    const-string v7, "feature_id"

    const-string v8, "network_id"

    const-string v9, "value"

    filled-new-array {v0, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v12

    .line 878
    .local v12, "projection":[Ljava/lang/String;
    const/16 v7, 0x65

    :try_start_0
    iget-object v10, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget v0, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;->mPhoneId:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 879
    move/from16 v8, p2

    :try_start_1
    invoke-static {v0, v2, v8}, Lcom/mediatek/ims/config/ImsConfigContract$Feature;->getUriWithFeatureId(III)Landroid/net/Uri;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 878
    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v5, v0

    .line 881
    if-eqz v5, :cond_0

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_0

    .line 882
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 883
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 884
    .local v0, "valueIndex":I
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move v6, v9

    .line 885
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 886
    .end local v0    # "valueIndex":I
    nop

    .line 900
    if-eqz v5, :cond_1

    .line 901
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 887
    :cond_0
    :try_start_2
    new-instance v0, Lcom/android/ims/ImsException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " not assigned with value!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9, v7}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local v5    # "c":Landroid/database/Cursor;
    .end local v6    # "result":I
    .end local v12    # "projection":[Ljava/lang/String;
    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;
    .end local p1    # "featureId":I
    .end local p2    # "network":I
    throw v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 895
    .restart local v5    # "c":Landroid/database/Cursor;
    .restart local v6    # "result":I
    .restart local v12    # "projection":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;
    .restart local p1    # "featureId":I
    .restart local p2    # "network":I
    :catch_0
    move-exception v0

    goto :goto_1

    .line 893
    :catch_1
    move-exception v0

    goto :goto_2

    .line 891
    :catch_2
    move-exception v0

    goto :goto_3

    .line 900
    :catchall_0
    move-exception v0

    move/from16 v8, p2

    goto :goto_5

    .line 895
    :catch_3
    move-exception v0

    move/from16 v8, p2

    .line 896
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    new-instance v4, Lcom/android/ims/ImsException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not assigned with value! or something wrong with cursor"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3, v7}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local v5    # "c":Landroid/database/Cursor;
    .end local v6    # "result":I
    .end local v12    # "projection":[Ljava/lang/String;
    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;
    .end local p1    # "featureId":I
    .end local p2    # "network":I
    throw v4

    .line 900
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v5    # "c":Landroid/database/Cursor;
    .restart local v6    # "result":I
    .restart local v12    # "projection":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$FeatureHelper;
    .restart local p1    # "featureId":I
    .restart local p2    # "network":I
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 893
    :catch_4
    move-exception v0

    move/from16 v8, p2

    .line 894
    .local v0, "e":Ljava/lang/SecurityException;
    :goto_2
    const-string v3, "getFeatureValue SecurityException"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    nop

    .end local v0    # "e":Ljava/lang/SecurityException;
    if-eqz v5, :cond_1

    .line 901
    goto :goto_0

    .line 891
    :catch_5
    move-exception v0

    move/from16 v8, p2

    .line 892
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_3
    const-string v3, "getFeatureValue IllegalArgumentException"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 900
    nop

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    if-eqz v5, :cond_1

    .line 901
    goto :goto_0

    .line 905
    :cond_1
    :goto_4
    return v6

    .line 900
    :goto_5
    if-eqz v5, :cond_2

    .line 901
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 903
    :cond_2
    throw v0
.end method
