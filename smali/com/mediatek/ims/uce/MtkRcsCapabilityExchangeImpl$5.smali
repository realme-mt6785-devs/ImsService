.class Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$5;
.super Ljava/lang/Object;
.source "MtkRcsCapabilityExchangeImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 342
    iput-object p1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$5;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 344
    iget-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$5;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    invoke-static {v0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$700(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$5;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$702(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;I)I

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$5;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    const-string v1, "onServiceConnected entry"

    invoke-static {v0, v1}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$000(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 347
    :try_start_0
    invoke-static {p2}, Lcom/mediatek/ims/uce/aidl/IMtkCoreServiceWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/uce/aidl/IMtkCoreServiceWrapper;

    move-result-object v0

    .line 348
    .local v0, "binder":Lcom/mediatek/ims/uce/aidl/IMtkCoreServiceWrapper;
    iget-object v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$5;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    invoke-static {v1}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$900(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mediatek/ims/uce/aidl/IMtkCoreServiceWrapper;->getPresenceServiceBinder(I)Landroid/os/IBinder;

    move-result-object v1

    .line 349
    .local v1, "presenceServiceImpl":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$5;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    invoke-static {v1}, Lcom/mediatek/ims/uce/aidl/IMtkPresenceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$1002(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;)Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 353
    nop

    .line 356
    .end local v0    # "binder":Lcom/mediatek/ims/uce/aidl/IMtkCoreServiceWrapper;
    .end local v1    # "presenceServiceImpl":Landroid/os/IBinder;
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$5;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    invoke-static {v0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$1000(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$5;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    iget-object v2, v2, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->mtkCapabilityEventListener:Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;

    invoke-interface {v0, v1, v2}, Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;->setRcsCapabilityExchangeAvailable(ZLandroid/telephony/ims/aidl/ICapabilityExchangeEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 359
    goto :goto_0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$5;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote Exception found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$200(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 360
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 350
    :catch_1
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$5;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPresenceService RemoteException e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$000(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 363
    iget-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$5;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$000(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$5;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$1002(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;)Lcom/mediatek/ims/uce/aidl/IMtkPresenceService;

    .line 365
    iget-object v0, p0, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl$5;->this$0:Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;

    invoke-static {v0}, Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;->access$1100(Lcom/mediatek/ims/uce/MtkRcsCapabilityExchangeImpl;)V

    .line 366
    return-void
.end method
