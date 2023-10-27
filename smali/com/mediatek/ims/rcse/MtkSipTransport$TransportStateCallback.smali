.class public Lcom/mediatek/ims/rcse/MtkSipTransport$TransportStateCallback;
.super Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;
.source "MtkSipTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcse/MtkSipTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransportStateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/rcse/MtkSipTransport;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/rcse/MtkSipTransport;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcse/MtkSipTransport;

    .line 240
    iput-object p1, p0, Lcom/mediatek/ims/rcse/MtkSipTransport$TransportStateCallback;->this$0:Lcom/mediatek/ims/rcse/MtkSipTransport;

    invoke-direct {p0}, Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregistered(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 263
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport$TransportStateCallback;->this$0:Lcom/mediatek/ims/rcse/MtkSipTransport;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeregistered  mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$000(Lcom/mediatek/ims/rcse/MtkSipTransport;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport$TransportStateCallback;->this$0:Lcom/mediatek/ims/rcse/MtkSipTransport;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$100(Lcom/mediatek/ims/rcse/MtkSipTransport;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcse/MtkSipDelegate;

    .line 265
    .local v1, "delegate":Lcom/mediatek/ims/rcse/MtkSipDelegate;
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/rcse/MtkSipDelegate;->notifyDeregisteredRegistrationStateChanged(I)V

    .line 266
    .end local v1    # "delegate":Lcom/mediatek/ims/rcse/MtkSipDelegate;
    goto :goto_0

    .line 267
    :cond_0
    return-void
.end method

.method public onDeregistering(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 255
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport$TransportStateCallback;->this$0:Lcom/mediatek/ims/rcse/MtkSipTransport;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeregistering  mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$000(Lcom/mediatek/ims/rcse/MtkSipTransport;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport$TransportStateCallback;->this$0:Lcom/mediatek/ims/rcse/MtkSipTransport;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$100(Lcom/mediatek/ims/rcse/MtkSipTransport;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcse/MtkSipDelegate;

    .line 257
    .local v1, "delegate":Lcom/mediatek/ims/rcse/MtkSipDelegate;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/rcse/MtkSipDelegate;->notifyDeregisteringRegistrationStateChanged(I)V

    .line 258
    .end local v1    # "delegate":Lcom/mediatek/ims/rcse/MtkSipDelegate;
    goto :goto_0

    .line 259
    :cond_0
    return-void
.end method

.method public onRegistered(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 247
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport$TransportStateCallback;->this$0:Lcom/mediatek/ims/rcse/MtkSipTransport;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistered  mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$000(Lcom/mediatek/ims/rcse/MtkSipTransport;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport$TransportStateCallback;->this$0:Lcom/mediatek/ims/rcse/MtkSipTransport;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$100(Lcom/mediatek/ims/rcse/MtkSipTransport;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcse/MtkSipDelegate;

    .line 249
    .local v1, "delegate":Lcom/mediatek/ims/rcse/MtkSipDelegate;
    iget-object v2, p0, Lcom/mediatek/ims/rcse/MtkSipTransport$TransportStateCallback;->this$0:Lcom/mediatek/ims/rcse/MtkSipTransport;

    invoke-static {v2}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$200(Lcom/mediatek/ims/rcse/MtkSipTransport;)Lcom/mediatek/ims/rcse/UaServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/ims/rcse/UaServiceManager;->getRegistrationInfo()Lcom/mediatek/ims/rcsua/RegistrationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/rcse/MtkSipDelegate;->notifyRegisteredRegistrationStateChanged(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V

    .line 250
    .end local v1    # "delegate":Lcom/mediatek/ims/rcse/MtkSipDelegate;
    goto :goto_0

    .line 251
    :cond_0
    return-void
.end method

.method public onRegistering(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 243
    return-void
.end method

.method public onReregistered(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 271
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport$TransportStateCallback;->this$0:Lcom/mediatek/ims/rcse/MtkSipTransport;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReregistered  mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$000(Lcom/mediatek/ims/rcse/MtkSipTransport;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipTransport$TransportStateCallback;->this$0:Lcom/mediatek/ims/rcse/MtkSipTransport;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$100(Lcom/mediatek/ims/rcse/MtkSipTransport;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcse/MtkSipDelegate;

    .line 273
    .local v1, "delegate":Lcom/mediatek/ims/rcse/MtkSipDelegate;
    iget-object v2, p0, Lcom/mediatek/ims/rcse/MtkSipTransport$TransportStateCallback;->this$0:Lcom/mediatek/ims/rcse/MtkSipTransport;

    invoke-static {v2}, Lcom/mediatek/ims/rcse/MtkSipTransport;->access$200(Lcom/mediatek/ims/rcse/MtkSipTransport;)Lcom/mediatek/ims/rcse/UaServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/ims/rcse/UaServiceManager;->getRegistrationInfo()Lcom/mediatek/ims/rcsua/RegistrationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/rcse/MtkSipDelegate;->notifyRegisteredRegistrationStateChanged(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V

    .line 274
    .end local v1    # "delegate":Lcom/mediatek/ims/rcse/MtkSipDelegate;
    goto :goto_0

    .line 275
    :cond_0
    return-void
.end method
