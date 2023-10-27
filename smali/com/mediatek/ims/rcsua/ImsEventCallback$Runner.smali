.class Lcom/mediatek/ims/rcsua/ImsEventCallback$Runner;
.super Lcom/mediatek/ims/rcsua/AppCallback$BaseRunner;
.source "ImsEventCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcsua/ImsEventCallback;
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
.field final synthetic this$0:Lcom/mediatek/ims/rcsua/ImsEventCallback;


# direct methods
.method varargs constructor <init>(Lcom/mediatek/ims/rcsua/ImsEventCallback;[Ljava/lang/Integer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcsua/ImsEventCallback;
    .param p2, "params"    # [Ljava/lang/Integer;

    .line 75
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/ImsEventCallback$Runner;->this$0:Lcom/mediatek/ims/rcsua/ImsEventCallback;

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/rcsua/AppCallback$BaseRunner;-><init>(Lcom/mediatek/ims/rcsua/AppCallback;[Ljava/lang/Object;)V

    .line 77
    return-void
.end method


# virtual methods
.method varargs exec([Ljava/lang/Integer;)V
    .locals 4
    .param p1, "params"    # [Ljava/lang/Integer;

    .line 81
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 82
    .local v0, "regState":I
    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 84
    .local v1, "regMode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Runner->exec:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsEventCallback"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 111
    :sswitch_0
    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 112
    .local v2, "vops":I
    iget-object v3, p0, Lcom/mediatek/ims/rcsua/ImsEventCallback$Runner;->this$0:Lcom/mediatek/ims/rcsua/ImsEventCallback;

    invoke-virtual {v3, v2}, Lcom/mediatek/ims/rcsua/ImsEventCallback;->onVopsIndication(I)V

    .line 113
    goto :goto_0

    .line 108
    .end local v2    # "vops":I
    :sswitch_1
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/ImsEventCallback$Runner;->this$0:Lcom/mediatek/ims/rcsua/ImsEventCallback;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/rcsua/ImsEventCallback;->onReregistered(I)V

    .line 109
    goto :goto_0

    .line 105
    :sswitch_2
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/ImsEventCallback$Runner;->this$0:Lcom/mediatek/ims/rcsua/ImsEventCallback;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/rcsua/ImsEventCallback;->onDeregStart(I)V

    .line 106
    goto :goto_0

    .line 96
    :sswitch_3
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/ImsEventCallback$Runner;->this$0:Lcom/mediatek/ims/rcsua/ImsEventCallback;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/rcsua/ImsEventCallback;->onDeregistering(I)V

    .line 97
    goto :goto_0

    .line 92
    :sswitch_4
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/ImsEventCallback$Runner;->this$0:Lcom/mediatek/ims/rcsua/ImsEventCallback;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/rcsua/ImsEventCallback;->onRegistered(I)V

    .line 93
    goto :goto_0

    .line 88
    :sswitch_5
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/ImsEventCallback$Runner;->this$0:Lcom/mediatek/ims/rcsua/ImsEventCallback;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/rcsua/ImsEventCallback;->onRegistering(I)V

    .line 89
    goto :goto_0

    .line 100
    :sswitch_6
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/ImsEventCallback$Runner;->this$0:Lcom/mediatek/ims/rcsua/ImsEventCallback;

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/rcsua/ImsEventCallback;->onDeregistered(I)V

    .line 101
    nop

    .line 119
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x3 -> :sswitch_3
        0x80 -> :sswitch_2
        0x100 -> :sswitch_1
        0x200 -> :sswitch_0
    .end sparse-switch
.end method

.method bridge synthetic exec([Ljava/lang/Object;)V
    .locals 0

    .line 73
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/mediatek/ims/rcsua/ImsEventCallback$Runner;->exec([Ljava/lang/Integer;)V

    return-void
.end method
