.class Lcom/mediatek/ims/rcsua/AcsEventCallback$Runner;
.super Lcom/mediatek/ims/rcsua/AppCallback$BaseRunner;
.source "AcsEventCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcsua/AcsEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Runner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mediatek/ims/rcsua/AppCallback$BaseRunner<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/rcsua/AcsEventCallback;


# direct methods
.method varargs constructor <init>(Lcom/mediatek/ims/rcsua/AcsEventCallback;[Ljava/lang/Integer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcsua/AcsEventCallback;
    .param p2, "params"    # [Ljava/lang/Integer;

    .line 30
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/AcsEventCallback$Runner;->this$0:Lcom/mediatek/ims/rcsua/AcsEventCallback;

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/rcsua/AppCallback$BaseRunner;-><init>(Lcom/mediatek/ims/rcsua/AppCallback;[Ljava/lang/Object;)V

    .line 32
    return-void
.end method


# virtual methods
.method varargs exec([Ljava/lang/Integer;)V
    .locals 5
    .param p1, "params"    # [Ljava/lang/Integer;

    .line 36
    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 37
    .local v1, "type":I
    const/4 v2, 0x1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_0

    move v0, v2

    .line 38
    .local v0, "valid":Z
    :cond_0
    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 40
    .local v2, "version":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "],valid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "],version["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AcsEventCallback"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 53
    :pswitch_0
    iget-object v3, p0, Lcom/mediatek/ims/rcsua/AcsEventCallback$Runner;->this$0:Lcom/mediatek/ims/rcsua/AcsEventCallback;

    invoke-virtual {v3}, Lcom/mediatek/ims/rcsua/AcsEventCallback;->onAcsDisconnected()V

    .line 54
    goto :goto_0

    .line 49
    :pswitch_1
    iget-object v3, p0, Lcom/mediatek/ims/rcsua/AcsEventCallback$Runner;->this$0:Lcom/mediatek/ims/rcsua/AcsEventCallback;

    invoke-virtual {v3}, Lcom/mediatek/ims/rcsua/AcsEventCallback;->onAcsConnected()V

    .line 50
    goto :goto_0

    .line 45
    :pswitch_2
    iget-object v3, p0, Lcom/mediatek/ims/rcsua/AcsEventCallback$Runner;->this$0:Lcom/mediatek/ims/rcsua/AcsEventCallback;

    invoke-virtual {v3, v0, v2}, Lcom/mediatek/ims/rcsua/AcsEventCallback;->onConfigurationStatusChanged(ZI)V

    .line 46
    nop

    .line 60
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method bridge synthetic exec([Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/mediatek/ims/rcsua/AcsEventCallback$Runner;->exec([Ljava/lang/Integer;)V

    return-void
.end method
