.class public Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ImsVTProviderUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/ImsVTProviderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FeatureValueReceiver"
.end annotation


# instance fields
.field private mOwner:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

.field private mViLTEValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mViWifiValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mediatek/ims/internal/ImsVTProviderUtil;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)V
    .locals 10
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 231
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->this$0:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->mViLTEValue:Ljava/util/ArrayList;

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->mViWifiValue:Ljava/util/ArrayList;

    .line 233
    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->access$000()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->access$000()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 235
    .local v0, "slotCount":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 237
    const/4 v3, 0x0

    .line 239
    .local v3, "propValueBit":I
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 240
    move v3, v2

    .line 243
    :cond_1
    const-string v4, "persist.vendor.mtk.vilte.enable"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    shl-int v6, v1, v3

    and-int/2addr v4, v6

    if-lez v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v5

    .line 244
    .local v4, "enable":Z
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Getprop [persist.vendor.mtk.vilte.enable]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "ImsVT Util"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v6, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->mViLTEValue:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    const-string v6, "persist.vendor.mtk.viwifi.enable"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    shl-int v9, v1, v3

    and-int/2addr v6, v9

    if-lez v6, :cond_3

    move v5, v1

    :cond_3
    move v4, v5

    .line 248
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Getprop [persist.vendor.mtk.viwifi.enable]["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->mViWifiValue:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    .end local v3    # "propValueBit":I
    .end local v4    # "enable":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 251
    .end local v2    # "i":I
    :cond_4
    return-void
.end method


# virtual methods
.method public getInitViLTEValue(I)Z
    .locals 1
    .param p1, "phondId"    # I

    .line 259
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->mViLTEValue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getInitViWifiValue(I)Z
    .locals 1
    .param p1, "phondId"    # I

    .line 264
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->mViWifiValue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 270
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 274
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.intent.action.IMS_FEATURE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 276
    const-string v0, "item"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 277
    .local v0, "feature":I
    const-string v2, "phone_id"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 278
    .local v2, "phoneId":I
    const-string v3, "value"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 280
    .local v1, "status":I
    const-string v3, "ImsVT Util"

    if-gez v2, :cond_1

    .line 281
    const-string v4, "ignore it for invalid SIM id"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void

    .line 285
    :cond_1
    const-string v4, ", status: "

    const-string v5, ", feature: "

    const-string v6, "onRecevied feature changed phoneId: "

    const/4 v7, 0x1

    if-ne v0, v7, :cond_4

    .line 286
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    if-nez v1, :cond_2

    .line 290
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->mViLTEValue:Ljava/util/ArrayList;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 291
    :cond_2
    if-ne v1, v7, :cond_3

    .line 292
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->mViLTEValue:Ljava/util/ArrayList;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 294
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->mOwner:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    const/high16 v4, -0x1000000

    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->mViLTEValue:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->switchFeature(IIZ)V

    goto :goto_2

    .line 296
    :cond_4
    const/4 v8, 0x3

    if-ne v0, v8, :cond_7

    .line 297
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    if-nez v1, :cond_5

    .line 301
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->mViWifiValue:Ljava/util/ArrayList;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 302
    :cond_5
    if-ne v1, v7, :cond_6

    .line 303
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->mViWifiValue:Ljava/util/ArrayList;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 305
    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->mOwner:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    const/high16 v4, -0xf00000

    iget-object v5, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->mViWifiValue:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/mediatek/ims/internal/ImsVTProviderUtil;->switchFeature(IIZ)V

    .line 308
    .end local v0    # "feature":I
    .end local v1    # "status":I
    .end local v2    # "phoneId":I
    :cond_7
    :goto_2
    return-void

    .line 271
    :cond_8
    :goto_3
    return-void
.end method

.method public setOwner(Lcom/mediatek/ims/internal/ImsVTProviderUtil;)V
    .locals 0
    .param p1, "owner"    # Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 254
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProviderUtil$FeatureValueReceiver;->mOwner:Lcom/mediatek/ims/internal/ImsVTProviderUtil;

    .line 255
    return-void
.end method
