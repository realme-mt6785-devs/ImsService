.class public final synthetic Lcom/mediatek/ims/-$$Lambda$ImsService$4rBdIYUnJ2bZd8uXNbA0XiYdZYU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/mediatek/ims/ImsService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/mediatek/ims/ImsService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/ims/-$$Lambda$ImsService$4rBdIYUnJ2bZd8uXNbA0XiYdZYU;->f$0:Lcom/mediatek/ims/ImsService;

    iput p2, p0, Lcom/mediatek/ims/-$$Lambda$ImsService$4rBdIYUnJ2bZd8uXNbA0XiYdZYU;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/mediatek/ims/-$$Lambda$ImsService$4rBdIYUnJ2bZd8uXNbA0XiYdZYU;->f$0:Lcom/mediatek/ims/ImsService;

    iget v1, p0, Lcom/mediatek/ims/-$$Lambda$ImsService$4rBdIYUnJ2bZd8uXNbA0XiYdZYU;->f$1:I

    check-cast p1, Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/ims/ImsService;->lambda$notifyRegistrationErrorCode$5$ImsService(ILcom/mediatek/ims/internal/IMtkImsRegistrationListener;)V

    return-void
.end method
