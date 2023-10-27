.class public final enum Lcom/mediatek/ims/ImsCallInfo$State;
.super Ljava/lang/Enum;
.source "ImsCallInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsCallInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/ims/ImsCallInfo$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/ims/ImsCallInfo$State;

.field public static final enum ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

.field public static final enum ALERTING:Lcom/mediatek/ims/ImsCallInfo$State;

.field public static final enum DISCONNECTED:Lcom/mediatek/ims/ImsCallInfo$State;

.field public static final enum HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

.field public static final enum INCOMING:Lcom/mediatek/ims/ImsCallInfo$State;

.field public static final enum INVALID:Lcom/mediatek/ims/ImsCallInfo$State;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 46
    new-instance v0, Lcom/mediatek/ims/ImsCallInfo$State;

    const-string v1, "ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/ImsCallInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 47
    new-instance v1, Lcom/mediatek/ims/ImsCallInfo$State;

    const-string v3, "HOLDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mediatek/ims/ImsCallInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 48
    new-instance v3, Lcom/mediatek/ims/ImsCallInfo$State;

    const-string v5, "ALERTING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mediatek/ims/ImsCallInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mediatek/ims/ImsCallInfo$State;->ALERTING:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 49
    new-instance v5, Lcom/mediatek/ims/ImsCallInfo$State;

    const-string v7, "INCOMING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/mediatek/ims/ImsCallInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mediatek/ims/ImsCallInfo$State;->INCOMING:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 50
    new-instance v7, Lcom/mediatek/ims/ImsCallInfo$State;

    const-string v9, "DISCONNECTED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/mediatek/ims/ImsCallInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/mediatek/ims/ImsCallInfo$State;->DISCONNECTED:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 51
    new-instance v9, Lcom/mediatek/ims/ImsCallInfo$State;

    const-string v11, "INVALID"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/mediatek/ims/ImsCallInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/mediatek/ims/ImsCallInfo$State;->INVALID:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 45
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/mediatek/ims/ImsCallInfo$State;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/mediatek/ims/ImsCallInfo$State;->$VALUES:[Lcom/mediatek/ims/ImsCallInfo$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 45
    const-class v0, Lcom/mediatek/ims/ImsCallInfo$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ImsCallInfo$State;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/ims/ImsCallInfo$State;
    .locals 1

    .line 45
    sget-object v0, Lcom/mediatek/ims/ImsCallInfo$State;->$VALUES:[Lcom/mediatek/ims/ImsCallInfo$State;

    invoke-virtual {v0}, [Lcom/mediatek/ims/ImsCallInfo$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/ims/ImsCallInfo$State;

    return-object v0
.end method
