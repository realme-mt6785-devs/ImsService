.class final enum Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;
.super Ljava/lang/Enum;
.source "WfcHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/WfcHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ScreenState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;

.field public static final enum SCREEN_OFF:Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;

.field public static final enum SCREEN_ON:Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;

.field public static final enum USER_PRESENT:Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 149
    new-instance v0, Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;

    const-string v1, "USER_PRESENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;->USER_PRESENT:Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;

    .line 150
    new-instance v1, Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;

    const-string v3, "SCREEN_OFF"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;->SCREEN_OFF:Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;

    .line 151
    new-instance v3, Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;

    const-string v5, "SCREEN_ON"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;->SCREEN_ON:Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;

    .line 148
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;->$VALUES:[Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 148
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 148
    const-class v0, Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;
    .locals 1

    .line 148
    sget-object v0, Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;->$VALUES:[Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;

    invoke-virtual {v0}, [Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/wfo/impl/WfcHandler$ScreenState;

    return-object v0
.end method
