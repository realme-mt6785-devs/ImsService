.class Lcom/mediatek/ims/internal/ImsDataTracker$1;
.super Landroid/os/Handler;
.source "ImsDataTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/ImsDataTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/internal/ImsDataTracker;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/internal/ImsDataTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/ImsDataTracker;

    .line 155
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsDataTracker$1;->this$0:Lcom/mediatek/ims/internal/ImsDataTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    monitor-enter p0

    .line 158
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 169
    .end local p0    # "this":Lcom/mediatek/ims/internal/ImsDataTracker$1;
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker$1;->this$0:Lcom/mediatek/ims/internal/ImsDataTracker;

    goto :goto_0

    .line 160
    .restart local p0    # "this":Lcom/mediatek/ims/internal/ImsDataTracker$1;
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker$1;->this$0:Lcom/mediatek/ims/internal/ImsDataTracker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->access$000(Lcom/mediatek/ims/internal/ImsDataTracker;Landroid/os/AsyncResult;)V

    .line 161
    goto :goto_1

    .line 166
    .end local p0    # "this":Lcom/mediatek/ims/internal/ImsDataTracker$1;
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker$1;->this$0:Lcom/mediatek/ims/internal/ImsDataTracker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->access$200(Lcom/mediatek/ims/internal/ImsDataTracker;Landroid/os/AsyncResult;)V

    .line 167
    goto :goto_1

    .line 163
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker$1;->this$0:Lcom/mediatek/ims/internal/ImsDataTracker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->access$100(Lcom/mediatek/ims/internal/ImsDataTracker;Landroid/os/AsyncResult;)V

    .line 164
    goto :goto_1

    .line 169
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not handle the message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->access$300(Lcom/mediatek/ims/internal/ImsDataTracker;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :goto_1
    monitor-exit p0

    return-void

    .line 157
    .end local p1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
