.class Lcom/mediatek/ims/feature/MtkRcsFeature$1;
.super Ljava/lang/Object;
.source "MtkRcsFeature.java"

# interfaces
.implements Lcom/mediatek/ims/ImsService$IMtkRcsFeatureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/feature/MtkRcsFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/feature/MtkRcsFeature;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/feature/MtkRcsFeature;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/feature/MtkRcsFeature;

    .line 87
    iput-object p1, p0, Lcom/mediatek/ims/feature/MtkRcsFeature$1;->this$0:Lcom/mediatek/ims/feature/MtkRcsFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyCapabilitiesChanged(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V
    .locals 3
    .param p1, "c"    # Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    .line 97
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkRcsFeature$1;->this$0:Lcom/mediatek/ims/feature/MtkRcsFeature;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCapabilitiesStatusChanged to ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/feature/MtkRcsFeature;->access$100(Lcom/mediatek/ims/feature/MtkRcsFeature;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkRcsFeature$1;->this$0:Lcom/mediatek/ims/feature/MtkRcsFeature;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/feature/MtkRcsFeature;->onCapabilitiesStatusChanged(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V

    .line 99
    return-void
.end method

.method public notifyContextChanged(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 91
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkRcsFeature$1;->this$0:Lcom/mediatek/ims/feature/MtkRcsFeature;

    invoke-static {v0, p1}, Lcom/mediatek/ims/feature/MtkRcsFeature;->access$002(Lcom/mediatek/ims/feature/MtkRcsFeature;Landroid/content/Context;)Landroid/content/Context;

    .line 92
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkRcsFeature$1;->this$0:Lcom/mediatek/ims/feature/MtkRcsFeature;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyContextChanged to ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/feature/MtkRcsFeature$1;->this$0:Lcom/mediatek/ims/feature/MtkRcsFeature;

    invoke-static {v2}, Lcom/mediatek/ims/feature/MtkRcsFeature;->access$000(Lcom/mediatek/ims/feature/MtkRcsFeature;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/feature/MtkRcsFeature;->access$100(Lcom/mediatek/ims/feature/MtkRcsFeature;Ljava/lang/String;)V

    .line 93
    return-void
.end method
