.class public Lcom/mediatek/ims/acs/MtkAcsImsConfigImpl$mAcsCallback;
.super Ljava/lang/Object;
.source "MtkAcsImsConfigImpl.java"

# interfaces
.implements Lcom/mediatek/ims/rcsua/RcsUaService$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/acs/MtkAcsImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "mAcsCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/acs/MtkAcsImsConfigImpl;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/acs/MtkAcsImsConfigImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/acs/MtkAcsImsConfigImpl;

    .line 73
    iput-object p1, p0, Lcom/mediatek/ims/acs/MtkAcsImsConfigImpl$mAcsCallback;->this$0:Lcom/mediatek/ims/acs/MtkAcsImsConfigImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceConnected(Lcom/mediatek/ims/rcsua/RcsUaService;)V
    .locals 2
    .param p1, "service"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 76
    const-string v0, "MtkAcsImsConfigImpl"

    const-string v1, " second Service connected called "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method public serviceDisconnected(Lcom/mediatek/ims/rcsua/RcsUaService;)V
    .locals 2
    .param p1, "service"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 81
    const-string v0, "MtkAcsImsConfigImpl"

    const-string v1, "second Service disconnected called "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method
