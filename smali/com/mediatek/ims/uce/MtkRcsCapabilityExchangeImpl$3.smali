.class Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$3;
.super Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub;
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

    .line 223
    iput-object p1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    invoke-direct {p0}, Lcom/mediatek/ims/uce/aidl/IMtkSubscribeResponseCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommandError(II)V
    .locals 5
    .param p1, "userData"    # I
    .param p2, "code"    # I

    .line 226
    iget-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    invoke-static {v0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$400(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

    .line 227
    .local v0, "callback":Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;
    iget-object v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubscribeResposneCallback onCommandError >> userData["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "],callback["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$000(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 229
    if-eqz v0, :cond_0

    .line 231
    :try_start_0
    invoke-interface {v0, p2}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;->onCommandError(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    goto :goto_0

    .line 232
    :catch_0
    move-exception v1

    .line 233
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SubscribeResposneCallback onCommandError >> exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$200(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 235
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    invoke-static {v1}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$400(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_0
    return-void
.end method

.method public onNetworkRespHeader(IILjava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "userData"    # I
    .param p2, "code"    # I
    .param p3, "reasonPhrase"    # Ljava/lang/String;
    .param p4, "reasonHeaderCause"    # I
    .param p5, "reasonHeaderText"    # Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    invoke-static {v0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$400(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

    .line 260
    .local v0, "callback":Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;
    iget-object v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubscribeResposneCallback onNetworkRespHeader >> userData["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "],callback["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$000(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 262
    if-eqz v0, :cond_0

    .line 264
    :try_start_0
    invoke-interface {v0, p2, p3, p4, p5}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;->onNetworkResponse(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    goto :goto_0

    .line 265
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SubscribeResposneCallback onNetworkRespHeader >> exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$200(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 269
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public onNetworkResponse(IILjava/lang/String;)V
    .locals 5
    .param p1, "userData"    # I
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    invoke-static {v0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$400(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

    .line 242
    .local v0, "callback":Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;
    iget-object v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubscribeResposneCallback onNetworkResponse >> userData["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "],callback["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$000(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 244
    if-eqz v0, :cond_0

    .line 246
    :try_start_0
    invoke-interface {v0, p2, p3}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;->onNetworkResponse(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    goto :goto_0

    .line 247
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SubscribeResposneCallback onNetworkResponse >> exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$200(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 250
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    div-int/lit8 v1, p2, 0x64

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 251
    iget-object v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    invoke-static {v1}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$400(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_0
    return-void
.end method

.method public onNotifyCapabilitiesUpdate(ILjava/util/List;)V
    .locals 5
    .param p1, "userData"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 273
    .local p2, "pidfXmls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    invoke-static {v0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$400(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

    .line 274
    .local v0, "callback":Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;
    iget-object v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubscribeResposneCallback onNotifyCapabilitiesUpdate >> userData["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "],callback["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$000(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 276
    if-eqz v0, :cond_0

    .line 278
    :try_start_0
    invoke-interface {v0, p2}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;->onNotifyCapabilitiesUpdate(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    goto :goto_0

    .line 279
    :catch_0
    move-exception v1

    .line 280
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SubscribeResposneCallback onNotifyCapabilitiesUpdate >> exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$200(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 283
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public onResourceTerminated(ILjava/util/List;)V
    .locals 7
    .param p1, "userData"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactTerminatedReason;",
            ">;)V"
        }
    .end annotation

    .line 287
    .local p2, "terminatedList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactTerminatedReason;>;"
    iget-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    invoke-static {v0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$400(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

    .line 288
    .local v0, "callback":Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;
    iget-object v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubscribeResposneCallback onResourceTerminated >> userData["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "],callback["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$000(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 290
    if-eqz v0, :cond_1

    .line 292
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v1, "uriList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/net/Uri;Ljava/lang/String;>;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/RcsContactTerminatedReason;

    .line 294
    .local v3, "terminated":Landroid/telephony/ims/RcsContactTerminatedReason;
    new-instance v4, Landroid/util/Pair;

    invoke-virtual {v3}, Landroid/telephony/ims/RcsContactTerminatedReason;->getContactUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3}, Landroid/telephony/ims/RcsContactTerminatedReason;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 295
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/Uri;Ljava/lang/String;>;"
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    nop

    .end local v3    # "terminated":Landroid/telephony/ims/RcsContactTerminatedReason;
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/Uri;Ljava/lang/String;>;"
    goto :goto_0

    .line 297
    :cond_0
    invoke-interface {v0, v1}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;->onResourceTerminated(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .end local v1    # "uriList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/net/Uri;Ljava/lang/String;>;>;"
    goto :goto_1

    .line 298
    :catch_0
    move-exception v1

    .line 299
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SubscribeResposneCallback onResourceTerminated >> exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$200(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 302
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public onTerminated(ILjava/lang/String;J)V
    .locals 5
    .param p1, "userData"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "retryAfterMillis"    # J

    .line 306
    iget-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    invoke-static {v0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$400(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

    .line 307
    .local v0, "callback":Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;
    iget-object v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubscribeResposneCallback onTerminated >> userData["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "],callback["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$000(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 309
    if-eqz v0, :cond_0

    .line 311
    :try_start_0
    invoke-interface {v0, p2, p3, p4}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;->onTerminated(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    goto :goto_0

    .line 313
    :catch_0
    move-exception v1

    .line 314
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SubscribeResposneCallback onTerminated >> exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$200(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 316
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$3;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    invoke-static {v1}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$400(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :cond_0
    return-void
.end method
