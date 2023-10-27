.class Lcom/mediatek/ims/rcse/MtkSipDelegate$1;
.super Ljava/lang/Object;
.source "MtkSipDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/rcse/MtkSipDelegate;->sendMessage(Landroid/telephony/ims/SipMessage;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;

.field final synthetic val$message:Landroid/telephony/ims/SipMessage;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcse/MtkSipDelegate;Landroid/telephony/ims/SipMessage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcse/MtkSipDelegate;

    .line 101
    iput-object p1, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate$1;->this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;

    iput-object p2, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate$1;->val$message:Landroid/telephony/ims/SipMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate$1;->this$0:Lcom/mediatek/ims/rcse/MtkSipDelegate;

    invoke-static {v0}, Lcom/mediatek/ims/rcse/MtkSipDelegate;->access$000(Lcom/mediatek/ims/rcse/MtkSipDelegate;)Landroid/telephony/ims/DelegateMessageCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/rcse/MtkSipDelegate$1;->val$message:Landroid/telephony/ims/SipMessage;

    .line 105
    invoke-virtual {v1}, Landroid/telephony/ims/SipMessage;->getViaBranchParameter()Ljava/lang/String;

    move-result-object v1

    .line 104
    const/16 v2, 0x8

    invoke-interface {v0, v1, v2}, Landroid/telephony/ims/DelegateMessageCallback;->onMessageSendFailure(Ljava/lang/String;I)V

    .line 106
    return-void
.end method
