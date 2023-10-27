.class Lcom/mediatek/ims/rcse/UaServiceManager$1;
.super Ljava/lang/Object;
.source "UaServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/rcse/UaServiceManager;->registerStateCallback(Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

.field final synthetic val$callback:Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcse/UaServiceManager;Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcse/UaServiceManager;

    .line 135
    iput-object p1, p0, Lcom/mediatek/ims/rcse/UaServiceManager$1;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    iput-object p2, p0, Lcom/mediatek/ims/rcse/UaServiceManager$1;->val$callback:Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 138
    iget-object v0, p0, Lcom/mediatek/ims/rcse/UaServiceManager$1;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-virtual {v0}, Lcom/mediatek/ims/rcse/UaServiceManager;->getRegistrationInfo()Lcom/mediatek/ims/rcsua/RegistrationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->getRegState()I

    move-result v0

    .line 139
    .local v0, "regState":I
    iget-object v1, p0, Lcom/mediatek/ims/rcse/UaServiceManager$1;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    invoke-virtual {v1}, Lcom/mediatek/ims/rcse/UaServiceManager;->getRegistrationInfo()Lcom/mediatek/ims/rcsua/RegistrationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/rcsua/RegistrationInfo;->getRegMode()I

    move-result v1

    .line 140
    .local v1, "regMode":I
    iget-object v2, p0, Lcom/mediatek/ims/rcse/UaServiceManager$1;->this$0:Lcom/mediatek/ims/rcse/UaServiceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerStateCallback >> regState["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], regMode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/rcse/UaServiceManager;->access$000(Lcom/mediatek/ims/rcse/UaServiceManager;Ljava/lang/String;)V

    .line 141
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 149
    :pswitch_0
    iget-object v2, p0, Lcom/mediatek/ims/rcse/UaServiceManager$1;->val$callback:Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;->onDeregistering(I)V

    .line 150
    goto :goto_0

    .line 152
    :pswitch_1
    iget-object v2, p0, Lcom/mediatek/ims/rcse/UaServiceManager$1;->val$callback:Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;->onRegistered(I)V

    goto :goto_0

    .line 146
    :pswitch_2
    iget-object v2, p0, Lcom/mediatek/ims/rcse/UaServiceManager$1;->val$callback:Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;->onRegistering(I)V

    .line 147
    goto :goto_0

    .line 143
    :pswitch_3
    iget-object v2, p0, Lcom/mediatek/ims/rcse/UaServiceManager$1;->val$callback:Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/rcse/UaServiceManager$StateCallback;->onDeregistered(I)V

    .line 144
    nop

    .line 155
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
