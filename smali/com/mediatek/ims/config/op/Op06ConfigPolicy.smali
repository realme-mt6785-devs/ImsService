.class public Lcom/mediatek/ims/config/op/Op06ConfigPolicy;
.super Lcom/mediatek/ims/config/ImsConfigPolicy;
.source "Op06ConfigPolicy.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    const-string v0, "Op06ConfigPolicy"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/config/ImsConfigPolicy;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public onSetDefaultValue(ILcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;)Z
    .locals 2
    .param p1, "configId"    # I
    .param p2, "config"    # Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;

    .line 14
    const/4 v0, 0x1

    .line 15
    .local v0, "set":Z
    sparse-switch p1, :sswitch_data_0

    .line 23
    const/4 v0, 0x0

    goto :goto_0

    .line 20
    :sswitch_0
    const-string v1, ""

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 21
    goto :goto_0

    .line 17
    :sswitch_1
    const-string v1, "0"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 18
    nop

    .line 26
    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1c -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method
