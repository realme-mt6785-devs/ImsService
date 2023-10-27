.class Lcom/mediatek/ims/rcsua/AppCallback$BaseRunner;
.super Ljava/lang/Object;
.source "AppCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcsua/AppCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BaseRunner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final params:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TParams;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mediatek/ims/rcsua/AppCallback;


# direct methods
.method varargs constructor <init>(Lcom/mediatek/ims/rcsua/AppCallback;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcsua/AppCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)V"
        }
    .end annotation

    .line 67
    .local p0, "this":Lcom/mediatek/ims/rcsua/AppCallback$BaseRunner;, "Lcom/mediatek/ims/rcsua/AppCallback$BaseRunner<TParams;>;"
    .local p2, "params":[Ljava/lang/Object;, "[TParams;"
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/AppCallback$BaseRunner;->this$0:Lcom/mediatek/ims/rcsua/AppCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p2, p0, Lcom/mediatek/ims/rcsua/AppCallback$BaseRunner;->params:[Ljava/lang/Object;

    .line 69
    return-void
.end method


# virtual methods
.method varargs exec([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)V"
        }
    .end annotation

    .line 71
    .local p0, "this":Lcom/mediatek/ims/rcsua/AppCallback$BaseRunner;, "Lcom/mediatek/ims/rcsua/AppCallback$BaseRunner<TParams;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    return-void
.end method

.method public run()V
    .locals 1

    .line 75
    .local p0, "this":Lcom/mediatek/ims/rcsua/AppCallback$BaseRunner;, "Lcom/mediatek/ims/rcsua/AppCallback$BaseRunner<TParams;>;"
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/AppCallback$BaseRunner;->params:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/mediatek/ims/rcsua/AppCallback$BaseRunner;->exec([Ljava/lang/Object;)V

    .line 76
    return-void
.end method
