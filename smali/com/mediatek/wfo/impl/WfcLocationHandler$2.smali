.class Lcom/mediatek/wfo/impl/WfcLocationHandler$2;
.super Ljava/lang/Object;
.source "WfcLocationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/wfo/impl/WfcLocationHandler;->pollLocationInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

.field final synthetic val$LocationInfoQueueCopy:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;

    .line 793
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$2;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    iput-object p2, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$2;->val$LocationInfoQueueCopy:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 796
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$2;->val$LocationInfoQueueCopy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    .line 797
    .local v1, "gpsLocationInfo":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 798
    .local v3, "retry":Ljava/lang/Boolean;
    iget-object v4, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$2;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    invoke-static {v4, v1, v3}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$1300(Lcom/mediatek/wfo/impl/WfcLocationHandler;Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;Ljava/lang/Boolean;)Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    move-result-object v4

    .line 799
    .local v4, "res":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    if-eqz v4, :cond_0

    .line 800
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$2;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    const/16 v6, 0xbbc

    invoke-virtual {v5, v6, v2, v2, v4}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 803
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 804
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$2;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GeoCoding fail, retry = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$2;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    invoke-static {v6}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$800(Lcom/mediatek/wfo/impl/WfcLocationHandler;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 805
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$2;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    invoke-static {v2}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$300(Lcom/mediatek/wfo/impl/WfcLocationHandler;)Lcom/mediatek/wfo/impl/WifiPdnHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$2;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    invoke-static {v2}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$800(Lcom/mediatek/wfo/impl/WfcLocationHandler;)I

    move-result v2

    if-lez v2, :cond_1

    .line 806
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$2;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    invoke-static {v2}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$810(Lcom/mediatek/wfo/impl/WfcLocationHandler;)I

    .line 807
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$2;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    const/16 v5, 0xbc2

    invoke-virtual {v2, v5}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 810
    .end local v1    # "gpsLocationInfo":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    .end local v3    # "retry":Ljava/lang/Boolean;
    .end local v4    # "res":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    :cond_1
    goto :goto_0

    .line 811
    :cond_2
    return-void
.end method
