.class public final synthetic Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/mediatek/ims/ImsService;


# direct methods
.method public synthetic constructor <init>(Lcom/mediatek/ims/ImsService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda1;->f$0:Lcom/mediatek/ims/ImsService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/mediatek/ims/ImsService$$ExternalSyntheticLambda1;->f$0:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/ImsService;->lambda$updateImsRegstration$6$ImsService(Ljava/lang/Object;)V

    return-void
.end method
