.class public Lcom/mediatek/ims/config/op/Op236ConfigPolicy;
.super Lcom/mediatek/ims/config/ImsConfigPolicy;
.source "Op236ConfigPolicy.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    const-string v0, "Op236ConfigPolicy"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/config/ImsConfigPolicy;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method public onSetDefaultValue(ILcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;)Z
    .locals 2
    .param p1, "configId"    # I
    .param p2, "config"    # Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;

    .line 13
    const/4 v0, 0x1

    .line 14
    .local v0, "set":Z
    packed-switch p1, :pswitch_data_0

    .line 21
    const/4 v0, 0x0

    goto :goto_0

    .line 18
    :pswitch_0
    const-string v1, "1"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 19
    nop

    .line 24
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x3eb
        :pswitch_0
    .end packed-switch
.end method
