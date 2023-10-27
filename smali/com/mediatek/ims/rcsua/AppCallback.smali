.class public abstract Lcom/mediatek/ims/rcsua/AppCallback;
.super Ljava/lang/Object;
.source "AppCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcsua/AppCallback$BaseRunner;
    }
.end annotation


# instance fields
.field private callbackOnMain:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/rcsua/AppCallback;->callbackOnMain:Z

    return-void
.end method


# virtual methods
.method run(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "callbackRunner"    # Ljava/lang/Runnable;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "run:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/ims/rcsua/AppCallback;->callbackOnMain:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/AppCallback;->callbackOnMain:Z

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 59
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    .end local v0    # "handler":Landroid/os/Handler;
    goto :goto_0

    .line 61
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 63
    :goto_0
    return-void
.end method

.method public setCallbackOnMain(Z)V
    .locals 0
    .param p1, "isMain"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/mediatek/ims/rcsua/AppCallback;->callbackOnMain:Z

    .line 53
    return-void
.end method
