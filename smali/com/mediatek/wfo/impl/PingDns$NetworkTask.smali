.class Lcom/mediatek/wfo/impl/PingDns$NetworkTask;
.super Landroid/os/AsyncTask;
.source "PingDns.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/PingDns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfo/impl/PingDns;


# direct methods
.method private constructor <init>(Lcom/mediatek/wfo/impl/PingDns;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/mediatek/wfo/impl/PingDns$NetworkTask;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/wfo/impl/PingDns;Lcom/mediatek/wfo/impl/PingDns$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/wfo/impl/PingDns;
    .param p2, "x1"    # Lcom/mediatek/wfo/impl/PingDns$1;

    .line 222
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/PingDns$NetworkTask;-><init>(Lcom/mediatek/wfo/impl/PingDns;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 222
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mediatek/wfo/impl/PingDns$NetworkTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 4
    .param p1, "arg0"    # [Ljava/lang/Void;

    .line 226
    iget-object v0, p0, Lcom/mediatek/wfo/impl/PingDns$NetworkTask;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    const-string v1, "doInBackground"

    invoke-static {v0, v1}, Lcom/mediatek/wfo/impl/PingDns;->access$100(Lcom/mediatek/wfo/impl/PingDns;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/mediatek/wfo/impl/PingDns$NetworkTask;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/PingDns;->access$200(Lcom/mediatek/wfo/impl/PingDns;)Ljava/net/InetAddress;

    move-result-object v0

    .line 228
    .local v0, "dnsAddress":Ljava/net/InetAddress;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 229
    iget-object v2, p0, Lcom/mediatek/wfo/impl/PingDns$NetworkTask;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    const-string v3, "Can\'t Process ping request"

    invoke-static {v2, v3}, Lcom/mediatek/wfo/impl/PingDns;->access$100(Lcom/mediatek/wfo/impl/PingDns;Ljava/lang/String;)V

    .line 230
    return-object v1

    .line 234
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/wfo/impl/PingDns$NetworkTask;->this$0:Lcom/mediatek/wfo/impl/PingDns;

    invoke-static {v2, v0}, Lcom/mediatek/wfo/impl/PingDns;->access$300(Lcom/mediatek/wfo/impl/PingDns;Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    goto :goto_0

    .line 235
    :catch_0
    move-exception v2

    .line 236
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 238
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method
