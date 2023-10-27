.class Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;
.super Landroid/os/Handler;
.source "MtkImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/MtkImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResultHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/MtkImsUtImpl;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/MtkImsUtImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 320
    iput-object p1, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    .line 321
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 322
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage(): event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requestId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    .line 328
    invoke-static {v1}, Lcom/mediatek/ims/MtkImsUtImpl;->access$000(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/feature/MtkImsUtListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    const-string v1, "MtkImsUtImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v0}, Lcom/mediatek/ims/MtkImsUtImpl;->access$100(Lcom/mediatek/ims/MtkImsUtImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/SuppSrvConfig;->getInstance(Landroid/content/Context;)Lcom/mediatek/ims/SuppSrvConfig;

    move-result-object v0

    .line 332
    .local v0, "ssConfig":Lcom/mediatek/ims/SuppSrvConfig;
    iget v2, p1, Landroid/os/Message;->what:I

    const-string v3, "utConfigurationUpdated(): event = "

    const/4 v4, 0x0

    const/16 v5, 0x324

    packed-switch v2, :pswitch_data_0

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 429
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/MtkImsUtImpl;->access$000(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/feature/MtkImsUtListener;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 430
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 431
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 433
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 434
    .local v2, "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v3, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    .line 435
    invoke-static {v3}, Lcom/mediatek/ims/MtkImsUtImpl;->access$500(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSExtPlugin;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/mediatek/ims/plugin/ImsSSExtPlugin;->getImsCallForwardInfo([Lcom/android/internal/telephony/CallForwardInfo;)[Landroid/telephony/ims/ImsCallForwardInfo;

    move-result-object v3

    .line 437
    .local v3, "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    iget-object v4, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v4}, Lcom/mediatek/ims/MtkImsUtImpl;->access$000(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/feature/MtkImsUtListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5, v3}, Lcom/mediatek/ims/feature/MtkImsUtListener;->onUtConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 438
    .end local v2    # "cfInfo":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v3    # "imsCfInfo":[Landroid/telephony/ims/ImsCallForwardInfo;
    goto :goto_1

    .line 440
    :cond_0
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_1

    .line 441
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/MtkImsUtImpl;->access$400(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    move-result-object v2

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    iget-object v4, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    .line 442
    invoke-static {v4}, Lcom/mediatek/ims/MtkImsUtImpl;->access$300(Lcom/mediatek/ims/MtkImsUtImpl;)I

    move-result v4

    .line 441
    invoke-interface {v2, v3, v4}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .local v2, "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_0

    .line 444
    .end local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_1
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 447
    .restart local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v3}, Lcom/mediatek/ims/MtkImsUtImpl;->access$200(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/ImsUtImpl;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lcom/mediatek/ims/ImsUtImpl;->notifyUtConfigurationQueryFailed(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 449
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_1
    goto/16 :goto_9

    .line 417
    :pswitch_1
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/MtkImsUtImpl;->access$000(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/feature/MtkImsUtListener;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 418
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 419
    .local v2, "ar":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 420
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Execute setupXcapUserAgentString succeed!event = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 423
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Execute setupXcapUserAgentString failed!event = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :goto_2
    goto/16 :goto_9

    .line 396
    :pswitch_2
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/MtkImsUtImpl;->access$000(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/feature/MtkImsUtListener;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 397
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 398
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_3

    .line 400
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/MtkImsUtImpl;->access$200(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/ImsUtImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/ImsUtImpl;->notifyUtConfigurationUpdated(Landroid/os/Message;)V

    goto :goto_4

    .line 406
    :cond_3
    iget-object v1, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_4

    .line 407
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/MtkImsUtImpl;->access$400(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    move-result-object v1

    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    iget-object v4, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    .line 408
    invoke-static {v4}, Lcom/mediatek/ims/MtkImsUtImpl;->access$300(Lcom/mediatek/ims/MtkImsUtImpl;)I

    move-result v4

    .line 407
    invoke-interface {v1, v3, v4}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .local v1, "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_3

    .line 410
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_4
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 412
    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_3
    iget-object v3, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v3}, Lcom/mediatek/ims/MtkImsUtImpl;->access$200(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/ImsUtImpl;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lcom/mediatek/ims/ImsUtImpl;->notifyUtConfigurationUpdateFailed(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 414
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :goto_4
    goto/16 :goto_9

    .line 334
    :pswitch_3
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/MtkImsUtImpl;->access$000(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/feature/MtkImsUtListener;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 335
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 336
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_5

    .line 338
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/MtkImsUtImpl;->access$200(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/ImsUtImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/ImsUtImpl;->notifyUtConfigurationUpdated(Landroid/os/Message;)V

    goto :goto_6

    .line 345
    :cond_5
    iget-object v1, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_6

    .line 346
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/MtkImsUtImpl;->access$400(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    move-result-object v1

    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    iget-object v4, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    .line 347
    invoke-static {v4}, Lcom/mediatek/ims/MtkImsUtImpl;->access$300(Lcom/mediatek/ims/MtkImsUtImpl;)I

    move-result v4

    .line 346
    invoke-interface {v1, v3, v4}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_5

    .line 349
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_6
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 351
    .restart local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_5
    iget-object v3, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v3}, Lcom/mediatek/ims/MtkImsUtImpl;->access$200(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/ImsUtImpl;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lcom/mediatek/ims/ImsUtImpl;->notifyUtConfigurationUpdateFailed(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 353
    .end local v1    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :goto_6
    goto/16 :goto_9

    .line 356
    :pswitch_4
    iget-object v1, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v1}, Lcom/mediatek/ims/MtkImsUtImpl;->access$000(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/feature/MtkImsUtListener;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 357
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 358
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_8

    .line 360
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Lcom/mediatek/internal/telephony/MtkCallForwardInfo;

    .line 361
    .local v2, "cfInfo":[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    const/4 v3, 0x0

    .line 363
    .local v3, "imsCfInfo":[Lcom/mediatek/ims/MtkImsCallForwardInfo;
    if-eqz v2, :cond_7

    .line 364
    array-length v4, v2

    new-array v3, v4, [Lcom/mediatek/ims/MtkImsCallForwardInfo;

    .line 365
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_7
    array-length v5, v2

    if-ge v4, v5, :cond_7

    .line 366
    new-instance v5, Lcom/mediatek/ims/MtkImsCallForwardInfo;

    invoke-direct {v5}, Lcom/mediatek/ims/MtkImsCallForwardInfo;-><init>()V

    .line 367
    .local v5, "info":Lcom/mediatek/ims/MtkImsCallForwardInfo;
    iget-object v6, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    .line 368
    invoke-static {v6}, Lcom/mediatek/ims/MtkImsUtImpl;->access$200(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/ImsUtImpl;

    aget-object v6, v2, v4

    iget v6, v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->reason:I

    invoke-static {v6}, Lcom/mediatek/ims/ImsUtImpl;->getConditionFromCFReason(I)I

    move-result v6

    iput v6, v5, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mCondition:I

    .line 369
    aget-object v6, v2, v4

    iget v6, v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->status:I

    iput v6, v5, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mStatus:I

    .line 370
    aget-object v6, v2, v4

    iget v6, v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->serviceClass:I

    iput v6, v5, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mServiceClass:I

    .line 371
    aget-object v6, v2, v4

    iget v6, v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->toa:I

    iput v6, v5, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mToA:I

    .line 372
    aget-object v6, v2, v4

    iget-object v6, v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->number:Ljava/lang/String;

    iput-object v6, v5, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 373
    aget-object v6, v2, v4

    iget v6, v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSeconds:I

    iput v6, v5, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mTimeSeconds:I

    .line 374
    aget-object v6, v2, v4

    iget-object v6, v6, Lcom/mediatek/internal/telephony/MtkCallForwardInfo;->timeSlot:[J

    iput-object v6, v5, Lcom/mediatek/ims/MtkImsCallForwardInfo;->mTimeSlot:[J

    .line 375
    aput-object v5, v3, v4

    .line 365
    .end local v5    # "info":Lcom/mediatek/ims/MtkImsCallForwardInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 379
    .end local v4    # "i":I
    :cond_7
    iget-object v4, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v4}, Lcom/mediatek/ims/MtkImsUtImpl;->access$000(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/feature/MtkImsUtListener;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5, v3}, Lcom/mediatek/ims/feature/MtkImsUtListener;->onUtConfigurationCallForwardInTimeSlotQueried(I[Lcom/mediatek/ims/MtkImsCallForwardInfo;)V

    .line 381
    .end local v2    # "cfInfo":[Lcom/mediatek/internal/telephony/MtkCallForwardInfo;
    .end local v3    # "imsCfInfo":[Lcom/mediatek/ims/MtkImsCallForwardInfo;
    goto :goto_9

    .line 384
    :cond_8
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_9

    .line 385
    iget-object v2, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v2}, Lcom/mediatek/ims/MtkImsUtImpl;->access$400(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;

    move-result-object v2

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    iget-object v4, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    .line 386
    invoke-static {v4}, Lcom/mediatek/ims/MtkImsUtImpl;->access$300(Lcom/mediatek/ims/MtkImsUtImpl;)I

    move-result v4

    .line 385
    invoke-interface {v2, v3, v4}, Lcom/mediatek/ims/plugin/ImsSSOemPlugin;->commandExceptionToReason(Lcom/android/internal/telephony/CommandException;I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    .local v2, "reason":Landroid/telephony/ims/ImsReasonInfo;
    goto :goto_8

    .line 388
    .end local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_9
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v2, v5, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 391
    .restart local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :goto_8
    iget-object v3, p0, Lcom/mediatek/ims/MtkImsUtImpl$ResultHandler;->this$0:Lcom/mediatek/ims/MtkImsUtImpl;

    invoke-static {v3}, Lcom/mediatek/ims/MtkImsUtImpl;->access$200(Lcom/mediatek/ims/MtkImsUtImpl;)Lcom/mediatek/ims/ImsUtImpl;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lcom/mediatek/ims/ImsUtImpl;->notifyUtConfigurationQueryFailed(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 455
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "reason":Landroid/telephony/ims/ImsReasonInfo;
    :cond_a
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4b0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
