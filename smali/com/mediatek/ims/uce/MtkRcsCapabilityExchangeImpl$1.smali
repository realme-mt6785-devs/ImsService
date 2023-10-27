.class Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$1;
.super Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener$Stub;
.source "MtkRcsCapabilityExchangeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    .line 147
    iput-object p1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$1;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoteCapabilityRequest(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsRequestCallback;)V
    .locals 0
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p3, "cb"    # Landroid/telephony/ims/aidl/IOptionsRequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/aidl/IOptionsRequestCallback;",
            ")V"
        }
    .end annotation

    .line 171
    .local p2, "remoteCapabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public onRequestPublishCapabilities(I)V
    .locals 4
    .param p1, "type"    # I

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$1;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestPublishCapabilities >> type["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$000(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$1;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    invoke-static {v0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$100(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/telephony/ims/stub/CapabilityExchangeEventListener;->onRequestPublishCapabilities(I)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Landroid/telephony/ims/ImsException;
    iget-object v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$1;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$200(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 156
    .end local v0    # "e":Landroid/telephony/ims/ImsException;
    :goto_0
    return-void
.end method

.method public onUnpublish()V
    .locals 4

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$1;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    invoke-static {v0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$100(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/ims/stub/CapabilityExchangeEventListener;->onUnpublish()V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Landroid/telephony/ims/ImsException;
    iget-object v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$1;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$200(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 165
    .end local v0    # "e":Landroid/telephony/ims/ImsException;
    :goto_0
    return-void
.end method
