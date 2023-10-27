.class public final enum Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;
.super Ljava/lang/Enum;
.source "MwiRIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/ril/MwiRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WfcFeatureState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;

.field public static final enum WFC_FEATURE_SUPPORTED:Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;

.field public static final enum WFC_FEATURE_UNKNOWN:Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;

.field public static final enum WFC_FEATURE_UNSUPPORTED:Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 334
    new-instance v0, Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;

    const-string v1, "WFC_FEATURE_UNSUPPORTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;->WFC_FEATURE_UNSUPPORTED:Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;

    .line 335
    new-instance v1, Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;

    const-string v3, "WFC_FEATURE_SUPPORTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;->WFC_FEATURE_SUPPORTED:Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;

    .line 336
    new-instance v3, Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;

    const-string v5, "WFC_FEATURE_UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;->WFC_FEATURE_UNKNOWN:Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;

    .line 333
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;->$VALUES:[Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 333
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 333
    const-class v0, Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;
    .locals 1

    .line 333
    sget-object v0, Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;->$VALUES:[Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;

    invoke-virtual {v0}, [Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/wfo/ril/MwiRIL$WfcFeatureState;

    return-object v0
.end method
