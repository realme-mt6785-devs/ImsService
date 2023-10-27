.class public Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;
.super Ljava/lang/Object;
.source "ImsDataSynchronizer.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/ImsDataSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImsBearerRequest"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x46215451d42594eeL


# instance fields
.field private mAction:I

.field private mAid:I

.field private mCapability:Ljava/lang/String;

.field private mPhoneId:I

.field private mRequest:I


# direct methods
.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 0
    .param p1, "aid"    # I
    .param p2, "action"    # I
    .param p3, "phoneId"    # I
    .param p4, "request"    # I
    .param p5, "capability"    # Ljava/lang/String;

    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    iput p1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->mAid:I

    .line 601
    iput p2, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->mAction:I

    .line 602
    iput p3, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->mPhoneId:I

    .line 603
    iput p4, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->mRequest:I

    .line 604
    iput-object p5, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->mCapability:Ljava/lang/String;

    .line 605
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .line 612
    iget v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->mAction:I

    return v0
.end method

.method public getAid()I
    .locals 1

    .line 608
    iget v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->mAid:I

    return v0
.end method

.method public getCapability()Ljava/lang/String;
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->mCapability:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .line 616
    iget v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->mPhoneId:I

    return v0
.end method

.method public getRequest()I
    .locals 1

    .line 620
    iget v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->mRequest:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 629
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->mAid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->mAction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    iget v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->mRequest:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 637
    :pswitch_1
    const-string v1, " Request: EVENT_DISCONNECT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 634
    :pswitch_2
    const-string v1, " Request: EVENT_CONNECT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    nop

    .line 640
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Capability: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$ImsBearerRequest;->mCapability:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
