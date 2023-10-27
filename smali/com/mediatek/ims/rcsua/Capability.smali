.class public Lcom/mediatek/ims/rcsua/Capability;
.super Ljava/lang/Object;
.source "Capability.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcsua/Capability$TagValueList;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/ims/rcsua/Capability;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final IARI_CHATBOT:Ljava/lang/String;

.field private final IARI_CHATBOT_SA:Ljava/lang/String;

.field private final IARI_FT_HTTP:Ljava/lang/String;

.field private final IARI_GEO_PULL:Ljava/lang/String;

.field private final IARI_GEO_PULLFT:Ljava/lang/String;

.field private final IARI_GEO_PUSH:Ljava/lang/String;

.field private final IARI_GEO_SMS:Ljava/lang/String;

.field private final ICSI_CPM_FILETRANSFER:Ljava/lang/String;

.field private final ICSI_CPM_LARGE_MSG:Ljava/lang/String;

.field private final ICSI_CPM_MSG:Ljava/lang/String;

.field private final ICSI_CPM_SESSION:Ljava/lang/String;

.field private final SVC_3GPP_IARI:Ljava/lang/String;

.field private final SVC_3GPP_ICSI:Ljava/lang/String;

.field private final SVC_GSMA_BOTVERSION:Ljava/lang/String;

.field private final SVC_GSMA_CALLCOMPOSER:Ljava/lang/String;

.field private final SVC_IMDN_AGGREGATION:Ljava/lang/String;

.field private features:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/mediatek/ims/rcsua/Capability$TagValueList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 169
    new-instance v0, Lcom/mediatek/ims/rcsua/Capability$1;

    invoke-direct {v0}, Lcom/mediatek/ims/rcsua/Capability$1;-><init>()V

    sput-object v0, Lcom/mediatek/ims/rcsua/Capability;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    .line 573
    const-string v0, "+g.3gpp.icsi-ref"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_3GPP_ICSI:Ljava/lang/String;

    .line 574
    const-string v0, "+g.3gpp.iari-ref"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_3GPP_IARI:Ljava/lang/String;

    .line 575
    const-string v0, "imdn-aggregation"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_IMDN_AGGREGATION:Ljava/lang/String;

    .line 576
    const-string v0, "+g.gsma.callcomposer"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_GSMA_CALLCOMPOSER:Ljava/lang/String;

    .line 577
    const-string v0, "+g.gsma.rcs.botversion"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_GSMA_BOTVERSION:Ljava/lang/String;

    .line 579
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.msg"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_MSG:Ljava/lang/String;

    .line 580
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.largemsg"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_LARGE_MSG:Ljava/lang/String;

    .line 581
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.session"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_SESSION:Ljava/lang/String;

    .line 582
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.filetransfer"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_FILETRANSFER:Ljava/lang/String;

    .line 584
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopush"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_PUSH:Ljava/lang/String;

    .line 585
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopull"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_PULL:Ljava/lang/String;

    .line 586
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopullft"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_PULLFT:Ljava/lang/String;

    .line 587
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geosms"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_SMS:Ljava/lang/String;

    .line 588
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttp"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_FT_HTTP:Ljava/lang/String;

    .line 589
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_CHATBOT:Ljava/lang/String;

    .line 590
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot.sa"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_CHATBOT_SA:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcsua/Capability;->initialize(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "features"    # J

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    .line 573
    const-string v0, "+g.3gpp.icsi-ref"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_3GPP_ICSI:Ljava/lang/String;

    .line 574
    const-string v0, "+g.3gpp.iari-ref"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_3GPP_IARI:Ljava/lang/String;

    .line 575
    const-string v0, "imdn-aggregation"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_IMDN_AGGREGATION:Ljava/lang/String;

    .line 576
    const-string v0, "+g.gsma.callcomposer"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_GSMA_CALLCOMPOSER:Ljava/lang/String;

    .line 577
    const-string v0, "+g.gsma.rcs.botversion"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_GSMA_BOTVERSION:Ljava/lang/String;

    .line 579
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.msg"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_MSG:Ljava/lang/String;

    .line 580
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.largemsg"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_LARGE_MSG:Ljava/lang/String;

    .line 581
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.session"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_SESSION:Ljava/lang/String;

    .line 582
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.filetransfer"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_FILETRANSFER:Ljava/lang/String;

    .line 584
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopush"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_PUSH:Ljava/lang/String;

    .line 585
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopull"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_PULL:Ljava/lang/String;

    .line 586
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopullft"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_PULLFT:Ljava/lang/String;

    .line 587
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geosms"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_SMS:Ljava/lang/String;

    .line 588
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttp"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_FT_HTTP:Ljava/lang/String;

    .line 589
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_CHATBOT:Ljava/lang/String;

    .line 590
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot.sa"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_CHATBOT_SA:Ljava/lang/String;

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/rcsua/Capability;->initialize(J)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "features"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    .line 573
    const-string v0, "+g.3gpp.icsi-ref"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_3GPP_ICSI:Ljava/lang/String;

    .line 574
    const-string v0, "+g.3gpp.iari-ref"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_3GPP_IARI:Ljava/lang/String;

    .line 575
    const-string v0, "imdn-aggregation"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_IMDN_AGGREGATION:Ljava/lang/String;

    .line 576
    const-string v0, "+g.gsma.callcomposer"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_GSMA_CALLCOMPOSER:Ljava/lang/String;

    .line 577
    const-string v0, "+g.gsma.rcs.botversion"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_GSMA_BOTVERSION:Ljava/lang/String;

    .line 579
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.msg"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_MSG:Ljava/lang/String;

    .line 580
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.largemsg"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_LARGE_MSG:Ljava/lang/String;

    .line 581
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.session"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_SESSION:Ljava/lang/String;

    .line 582
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.filetransfer"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_FILETRANSFER:Ljava/lang/String;

    .line 584
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopush"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_PUSH:Ljava/lang/String;

    .line 585
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopull"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_PULL:Ljava/lang/String;

    .line 586
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopullft"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_PULLFT:Ljava/lang/String;

    .line 587
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geosms"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_SMS:Ljava/lang/String;

    .line 588
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttp"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_FT_HTTP:Ljava/lang/String;

    .line 589
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_CHATBOT:Ljava/lang/String;

    .line 590
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot.sa"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_CHATBOT_SA:Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcsua/Capability;->initialize(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 61
    .local p1, "features":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    .line 573
    const-string v0, "+g.3gpp.icsi-ref"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_3GPP_ICSI:Ljava/lang/String;

    .line 574
    const-string v0, "+g.3gpp.iari-ref"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_3GPP_IARI:Ljava/lang/String;

    .line 575
    const-string v0, "imdn-aggregation"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_IMDN_AGGREGATION:Ljava/lang/String;

    .line 576
    const-string v0, "+g.gsma.callcomposer"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_GSMA_CALLCOMPOSER:Ljava/lang/String;

    .line 577
    const-string v0, "+g.gsma.rcs.botversion"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->SVC_GSMA_BOTVERSION:Ljava/lang/String;

    .line 579
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.msg"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_MSG:Ljava/lang/String;

    .line 580
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.largemsg"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_LARGE_MSG:Ljava/lang/String;

    .line 581
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.session"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_SESSION:Ljava/lang/String;

    .line 582
    const-string v0, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.filetransfer"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->ICSI_CPM_FILETRANSFER:Ljava/lang/String;

    .line 584
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopush"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_PUSH:Ljava/lang/String;

    .line 585
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopull"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_PULL:Ljava/lang/String;

    .line 586
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopullft"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_PULLFT:Ljava/lang/String;

    .line 587
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geosms"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_GEO_SMS:Ljava/lang/String;

    .line 588
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttp"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_FT_HTTP:Ljava/lang/String;

    .line 589
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_CHATBOT:Ljava/lang/String;

    .line 590
    const-string v0, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot.sa"

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->IARI_CHATBOT_SA:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 65
    .local v2, "feature":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const/16 v3, 0x3b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    .end local v2    # "feature":Ljava/lang/String;
    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/rcsua/Capability;->initialize(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method private addFeature(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 5
    .param p1, "capability"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 415
    iget-object v0, p1, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 416
    iget-object v0, p1, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 417
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/rcsua/Capability$TagValueList;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 418
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    .line 420
    .local v3, "value":Lcom/mediatek/ims/rcsua/Capability$TagValueList;
    iget-object v4, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 421
    iget-object v4, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    invoke-virtual {v4, v3}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->add(Lcom/mediatek/ims/rcsua/Capability$TagValueList;)V

    goto :goto_1

    .line 423
    :cond_0
    iget-object v4, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/rcsua/Capability$TagValueList;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Lcom/mediatek/ims/rcsua/Capability$TagValueList;
    :goto_1
    goto :goto_0

    .line 427
    :cond_1
    return-void
.end method

.method private initialize(J)V
    .locals 11
    .param p1, "features"    # J

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "+g.3gpp.icsi-ref=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    .local v0, "ICSI":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+g.3gpp.iari-ref=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    .local v1, "IARI":Ljava/lang/StringBuilder;
    const-wide/16 v2, 0x1

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 324
    const-string v2, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.session,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    :cond_0
    const-wide/16 v2, 0x2

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 326
    const-string v2, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.filetransfer,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    :cond_1
    const-wide/16 v2, 0x4

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 328
    const-string v2, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.msg,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_2
    const-wide/16 v2, 0x8

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 330
    const-string v2, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.largemsg,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :cond_3
    const-wide/16 v2, 0x10

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 332
    const-string v2, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopush,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    :cond_4
    const-wide/16 v2, 0x20

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 334
    const-string v2, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopull,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    :cond_5
    const-wide/16 v2, 0x40

    and-long v6, p1, v2

    cmp-long v6, v6, v4

    if-lez v6, :cond_6

    .line 336
    const-string v6, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopullft,"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    :cond_6
    const-wide/16 v6, 0x100

    and-long/2addr v6, p1

    cmp-long v6, v6, v4

    if-lez v6, :cond_7

    .line 338
    const-string v6, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geosms,"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    :cond_7
    const-wide/16 v6, 0x200

    and-long/2addr v6, p1

    cmp-long v6, v6, v4

    if-lez v6, :cond_8

    .line 340
    const-string v6, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttp,"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :cond_8
    const-wide/16 v6, 0x800

    and-long/2addr v6, p1

    cmp-long v6, v6, v4

    if-lez v6, :cond_9

    .line 342
    const-string v6, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot,"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    :cond_9
    const-wide/16 v6, 0x1000

    and-long/2addr v6, p1

    cmp-long v6, v6, v4

    if-lez v6, :cond_a

    .line 344
    const-string v6, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot.sa,"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    const/16 v8, 0x22

    const/16 v9, 0x2c

    const/16 v10, 0x3b

    if-ne v7, v9, :cond_b

    .line 348
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 349
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 352
    :cond_b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_c

    .line 353
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 354
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 358
    :cond_c
    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-lez v2, :cond_d

    .line 359
    const-string v2, "imdn-aggregation"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 363
    :cond_d
    const-wide/16 v2, 0x400

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-lez v2, :cond_e

    .line 364
    const-string v2, "+g.gsma.callcomposer"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 368
    :cond_e
    const-wide/16 v2, 0x2000

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-lez v2, :cond_f

    .line 369
    const-string v2, "+g.gsma.rcs.botversion"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    const-string v2, "="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    const-string v2, "\"#1\""

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    const-string v2, ";"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    :cond_f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_10

    .line 375
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v10, :cond_10

    .line 376
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 378
    :cond_10
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/rcsua/Capability;->initialize(Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 11
    .param p1, "features"    # Ljava/lang/String;

    .line 382
    if-nez p1, :cond_0

    .line 383
    const-string p1, ""

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 387
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 388
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 389
    .local v4, "feature":Ljava/lang/String;
    const-string v5, "="

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 390
    .local v5, "nameValue":[Ljava/lang/String;
    array-length v7, v5

    if-ge v7, v6, :cond_1

    .line 391
    iget-object v6, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    new-instance v7, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    const-string v8, ""

    invoke-direct {v7, v8}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 393
    :cond_1
    aget-object v6, v5, v2

    .line 394
    .local v6, "name":Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v8, v5, v7

    .line 397
    .local v8, "value":Ljava/lang/String;
    const/16 v9, 0x22

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-nez v10, :cond_3

    .line 398
    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v7

    if-ne v9, v10, :cond_3

    .line 402
    iget-object v7, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 404
    iget-object v7, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    invoke-virtual {v7, v8}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->add(Ljava/lang/String;)V

    goto :goto_1

    .line 406
    :cond_2
    iget-object v7, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    new-instance v9, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    invoke-direct {v9, v8}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .end local v4    # "feature":Ljava/lang/String;
    .end local v5    # "nameValue":[Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 399
    .restart local v4    # "feature":Ljava/lang/String;
    .restart local v5    # "nameValue":[Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid feature tag value list format"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    .end local v4    # "feature":Ljava/lang/String;
    .end local v5    # "nameValue":[Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private removeFeature(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 5
    .param p1, "capability"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 431
    iget-object v0, p1, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 432
    iget-object v0, p1, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 433
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/rcsua/Capability$TagValueList;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 434
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    .line 436
    .local v3, "tags":Lcom/mediatek/ims/rcsua/Capability$TagValueList;
    iget-object v4, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 437
    iget-object v4, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    invoke-virtual {v4, v3}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->remove(Lcom/mediatek/ims/rcsua/Capability$TagValueList;)V

    .line 439
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/rcsua/Capability$TagValueList;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "tags":Lcom/mediatek/ims/rcsua/Capability$TagValueList;
    :cond_0
    goto :goto_0

    .line 441
    :cond_1
    return-void
.end method


# virtual methods
.method public add(Lcom/mediatek/ims/rcsua/Capability;)Lcom/mediatek/ims/rcsua/Capability;
    .locals 0
    .param p1, "features"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 77
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcsua/Capability;->addFeature(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 78
    return-object p0
.end method

.method public add(Ljava/lang/String;)Lcom/mediatek/ims/rcsua/Capability;
    .locals 1
    .param p1, "features"    # Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/mediatek/ims/rcsua/Capability;

    invoke-direct {v0, p1}, Lcom/mediatek/ims/rcsua/Capability;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcsua/Capability;->addFeature(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 88
    return-object p0
.end method

.method public add(Ljava/util/Set;)Lcom/mediatek/ims/rcsua/Capability;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mediatek/ims/rcsua/Capability;"
        }
    .end annotation

    .line 92
    .local p1, "features":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lcom/mediatek/ims/rcsua/Capability;

    invoke-direct {v0, p1}, Lcom/mediatek/ims/rcsua/Capability;-><init>(Ljava/util/Set;)V

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcsua/Capability;->addFeature(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 93
    return-object p0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 6
    .param p1, "feature"    # Ljava/lang/String;

    .line 116
    new-instance v0, Lcom/mediatek/ims/rcsua/Capability;

    invoke-direct {v0, p1}, Lcom/mediatek/ims/rcsua/Capability;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "capability":Lcom/mediatek/ims/rcsua/Capability;
    iget-object v1, v0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 119
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/rcsua/Capability$TagValueList;>;"
    iget-object v3, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 120
    return v4

    .line 121
    :cond_0
    iget-object v3, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    .line 122
    .local v3, "value":Lcom/mediatek/ims/rcsua/Capability$TagValueList;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    invoke-virtual {v3, v5}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->contains(Lcom/mediatek/ims/rcsua/Capability$TagValueList;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 123
    return v4

    .line 124
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/rcsua/Capability$TagValueList;>;"
    .end local v3    # "value":Lcom/mediatek/ims/rcsua/Capability$TagValueList;
    :cond_1
    goto :goto_0

    .line 126
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public describeContents()I
    .locals 1

    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 206
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 207
    return v0

    .line 209
    :cond_0
    instance-of v1, p1, Lcom/mediatek/ims/rcsua/Capability;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 210
    move-object v1, p1

    check-cast v1, Lcom/mediatek/ims/rcsua/Capability;

    .line 211
    .local v1, "other":Lcom/mediatek/ims/rcsua/Capability;
    iget-object v3, v1, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->hashCode()I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->hashCode()I

    move-result v4

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 214
    .end local v1    # "other":Lcom/mediatek/ims/rcsua/Capability;
    :cond_2
    return v2
.end method

.method public get(Ljava/lang/String;)Lcom/mediatek/ims/rcsua/Capability$TagValueList;
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public remove(Lcom/mediatek/ims/rcsua/Capability;)Lcom/mediatek/ims/rcsua/Capability;
    .locals 0
    .param p1, "features"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 82
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcsua/Capability;->removeFeature(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 83
    return-object p0
.end method

.method public remove(Ljava/lang/String;)Lcom/mediatek/ims/rcsua/Capability;
    .locals 1
    .param p1, "features"    # Ljava/lang/String;

    .line 97
    new-instance v0, Lcom/mediatek/ims/rcsua/Capability;

    invoke-direct {v0, p1}, Lcom/mediatek/ims/rcsua/Capability;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcsua/Capability;->removeFeature(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 98
    return-object p0
.end method

.method public remove(Ljava/util/Set;)Lcom/mediatek/ims/rcsua/Capability;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mediatek/ims/rcsua/Capability;"
        }
    .end annotation

    .line 102
    .local p1, "features":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lcom/mediatek/ims/rcsua/Capability;

    invoke-direct {v0, p1}, Lcom/mediatek/ims/rcsua/Capability;-><init>(Ljava/util/Set;)V

    invoke-direct {p0, v0}, Lcom/mediatek/ims/rcsua/Capability;->removeFeature(Lcom/mediatek/ims/rcsua/Capability;)V

    .line 103
    return-object p0
.end method

.method public toFeatureTags()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 132
    .local v0, "result":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 134
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/rcsua/Capability$TagValueList;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    invoke-virtual {v4}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 135
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "+g.gsma.rcs.botversion"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 136
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 137
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    invoke-virtual {v4}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 142
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    invoke-virtual {v4}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->getTagValues()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 143
    .local v6, "tag":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 144
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string v7, "=\""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v7, "\""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 149
    .end local v6    # "tag":Ljava/lang/String;
    goto :goto_1

    :cond_1
    goto :goto_2

    .line 152
    :cond_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 154
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/rcsua/Capability$TagValueList;>;"
    :goto_2
    goto/16 :goto_0

    .line 156
    :cond_3
    return-object v0
.end method

.method public toNumeric()J
    .locals 10

    .line 223
    const-wide/16 v0, 0x0

    .line 225
    .local v0, "result":J
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lez v2, :cond_10

    .line 226
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 227
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/rcsua/Capability$TagValueList;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 228
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    .line 230
    .local v5, "tags":Lcom/mediatek/ims/rcsua/Capability$TagValueList;
    const/4 v6, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x1

    sparse-switch v7, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v7, "+g.3gpp.iari-ref"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v6, v8

    goto :goto_1

    :sswitch_1
    const-string v7, "+g.gsma.callcomposer"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x3

    goto :goto_1

    :sswitch_2
    const-string v7, "+g.gsma.rcs.botversion"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x4

    goto :goto_1

    :sswitch_3
    const-string v7, "imdn-aggregation"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x2

    goto :goto_1

    :sswitch_4
    const-string v7, "+g.3gpp.icsi-ref"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x0

    :goto_1
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_7

    .line 285
    :pswitch_0
    invoke-virtual {v5}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->size()I

    move-result v6

    if-ne v6, v8, :cond_f

    .line 286
    invoke-static {v5}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->access$000(Lcom/mediatek/ims/rcsua/Capability$TagValueList;)Ljava/util/LinkedHashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 287
    .local v7, "value":Ljava/lang/String;
    const-string v8, "#1"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 288
    const-wide/16 v8, 0x2000

    or-long/2addr v0, v8

    .line 289
    goto/16 :goto_7

    .line 291
    .end local v7    # "value":Ljava/lang/String;
    :cond_1
    goto :goto_2

    .line 279
    :pswitch_1
    const-wide/16 v6, 0x400

    or-long/2addr v0, v6

    .line 280
    goto/16 :goto_7

    .line 275
    :pswitch_2
    const-wide/16 v6, 0x80

    or-long/2addr v0, v6

    .line 276
    goto/16 :goto_7

    .line 249
    :pswitch_3
    invoke-static {v5}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->access$000(Lcom/mediatek/ims/rcsua/Capability$TagValueList;)Ljava/util/LinkedHashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 250
    .restart local v7    # "value":Ljava/lang/String;
    const-string v8, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopush"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 251
    const-wide/16 v8, 0x10

    or-long/2addr v0, v8

    goto :goto_4

    .line 253
    :cond_2
    const-string v8, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopull"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 254
    const-wide/16 v8, 0x20

    or-long/2addr v0, v8

    goto :goto_4

    .line 256
    :cond_3
    const-string v8, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopullft"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 257
    const-wide/16 v8, 0x40

    or-long/2addr v0, v8

    goto :goto_4

    .line 259
    :cond_4
    const-string v8, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geosms"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 260
    const-wide/16 v8, 0x100

    or-long/2addr v0, v8

    goto :goto_4

    .line 262
    :cond_5
    const-string v8, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttp"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 263
    const-wide/16 v8, 0x200

    or-long/2addr v0, v8

    goto :goto_4

    .line 265
    :cond_6
    const-string v8, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 266
    const-wide/16 v8, 0x800

    or-long/2addr v0, v8

    goto :goto_4

    .line 268
    :cond_7
    const-string v8, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot.sa"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 269
    const-wide/16 v8, 0x1000

    or-long/2addr v0, v8

    .line 271
    .end local v7    # "value":Ljava/lang/String;
    :cond_8
    :goto_4
    goto :goto_3

    .line 272
    :cond_9
    goto :goto_7

    .line 232
    :pswitch_4
    invoke-static {v5}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->access$000(Lcom/mediatek/ims/rcsua/Capability$TagValueList;)Ljava/util/LinkedHashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 233
    .restart local v7    # "value":Ljava/lang/String;
    const-string v8, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.msg"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 234
    const-wide/16 v8, 0x4

    or-long/2addr v0, v8

    goto :goto_6

    .line 236
    :cond_a
    const-string v8, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.session"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 237
    const-wide/16 v8, 0x1

    or-long/2addr v0, v8

    goto :goto_6

    .line 239
    :cond_b
    const-string v8, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.largemsg"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 240
    const-wide/16 v8, 0x8

    or-long/2addr v0, v8

    goto :goto_6

    .line 242
    :cond_c
    const-string v8, "urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.filetransfer"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 243
    const-wide/16 v8, 0x2

    or-long/2addr v0, v8

    .line 245
    .end local v7    # "value":Ljava/lang/String;
    :cond_d
    :goto_6
    goto :goto_5

    .line 246
    :cond_e
    nop

    .line 295
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/rcsua/Capability$TagValueList;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "tags":Lcom/mediatek/ims/rcsua/Capability$TagValueList;
    :cond_f
    :goto_7
    goto/16 :goto_0

    .line 298
    :cond_10
    return-wide v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3fced582 -> :sswitch_4
        0xa928443 -> :sswitch_3
        0x484cd319 -> :sswitch_2
        0x524ec15a -> :sswitch_1
        0x54afdb5d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 186
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/Capability;->features:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 187
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/rcsua/Capability$TagValueList;>;"
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 188
    const/16 v3, 0x3b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    invoke-virtual {v3}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 194
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/rcsua/Capability$TagValueList;

    invoke-virtual {v3}, Lcom/mediatek/ims/rcsua/Capability$TagValueList;->toString()Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "value":Ljava/lang/String;
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/rcsua/Capability$TagValueList;>;"
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 201
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(Ljava/lang/String;)Lcom/mediatek/ims/rcsua/Capability;
    .locals 0
    .param p1, "features"    # Ljava/lang/String;

    .line 107
    invoke-direct {p0, p1}, Lcom/mediatek/ims/rcsua/Capability;->initialize(Ljava/lang/String;)V

    .line 108
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 161
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/Capability;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    return-void
.end method
