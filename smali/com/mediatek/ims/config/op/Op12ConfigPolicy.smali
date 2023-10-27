.class public Lcom/mediatek/ims/config/op/Op12ConfigPolicy;
.super Lcom/mediatek/ims/config/ImsConfigPolicy;
.source "Op12ConfigPolicy.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    const-string v0, "Op12ConfigPolicy"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/config/ImsConfigPolicy;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public onSetDefaultValue(ILcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;)Z
    .locals 7
    .param p1, "configId"    # I
    .param p2, "config"    # Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;

    .line 14
    const/4 v0, 0x1

    .line 15
    .local v0, "set":Z
    const-string v1, "60"

    const-string v2, "30"

    const-string v3, "300"

    const-string v4, "0"

    const-string v5, "1"

    const/4 v6, 0x3

    sparse-switch p1, :sswitch_data_0

    .line 148
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 145
    :sswitch_0
    const-string v1, ""

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 146
    goto/16 :goto_0

    .line 141
    :sswitch_1
    const-string v1, "21600"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 142
    iput v6, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 143
    goto/16 :goto_0

    .line 134
    :sswitch_2
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 136
    goto/16 :goto_0

    .line 131
    :sswitch_3
    iput-object v4, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 132
    goto/16 :goto_0

    .line 128
    :sswitch_4
    iput-object v4, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 129
    goto/16 :goto_0

    .line 124
    :sswitch_5
    iput-object v5, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 125
    goto/16 :goto_0

    .line 119
    :sswitch_6
    iput-object v2, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 120
    iput v6, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 121
    goto/16 :goto_0

    .line 115
    :sswitch_7
    const-string v1, "100"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 116
    goto/16 :goto_0

    .line 110
    :sswitch_8
    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 111
    iput v6, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 112
    goto/16 :goto_0

    .line 105
    :sswitch_9
    const-string v1, "625000"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 106
    iput v6, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 107
    goto/16 :goto_0

    .line 100
    :sswitch_a
    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 101
    iput v6, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 102
    goto/16 :goto_0

    .line 95
    :sswitch_b
    const-string v1, "7776000"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 96
    iput v6, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 97
    goto :goto_0

    .line 138
    :sswitch_c
    iput-object v5, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 139
    goto :goto_0

    .line 90
    :sswitch_d
    const-string v1, "86400"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 91
    iput v6, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 92
    goto :goto_0

    .line 85
    :sswitch_e
    const-string v1, "1200"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 86
    iput v6, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 87
    goto :goto_0

    .line 81
    :sswitch_f
    iput-object v5, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 82
    goto :goto_0

    .line 77
    :sswitch_10
    iput-object v5, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 78
    goto :goto_0

    .line 73
    :sswitch_11
    const-string v1, "vzims.com"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 74
    goto :goto_0

    .line 69
    :sswitch_12
    iput-object v5, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 70
    goto :goto_0

    .line 65
    :sswitch_13
    iput-object v4, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 66
    goto :goto_0

    .line 60
    :sswitch_14
    iput-object v2, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 61
    iput v6, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 62
    goto :goto_0

    .line 55
    :sswitch_15
    const-string v1, "16"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 56
    iput v6, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 57
    goto :goto_0

    .line 50
    :sswitch_16
    const-string v1, "3"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 51
    iput v6, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 52
    goto :goto_0

    .line 46
    :sswitch_17
    iput-object v5, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 47
    goto :goto_0

    .line 41
    :sswitch_18
    const-string v1, "5"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 42
    iput v6, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 43
    goto :goto_0

    .line 36
    :sswitch_19
    const-string v1, "6"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 37
    iput v6, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 38
    goto :goto_0

    .line 31
    :sswitch_1a
    iput-object v3, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 32
    iput v6, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 33
    goto :goto_0

    .line 26
    :sswitch_1b
    iput-object v3, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 27
    iput v6, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 28
    goto :goto_0

    .line 22
    :sswitch_1c
    const-string v1, "2"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 23
    goto :goto_0

    .line 18
    :sswitch_1d
    const-string v1, "7"

    iput-object v1, p2, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 19
    nop

    .line 151
    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1d
        0x1 -> :sswitch_1c
        0x2 -> :sswitch_1b
        0x3 -> :sswitch_1a
        0x4 -> :sswitch_19
        0x5 -> :sswitch_18
        0x6 -> :sswitch_17
        0x7 -> :sswitch_16
        0x8 -> :sswitch_15
        0x9 -> :sswitch_14
        0xa -> :sswitch_13
        0xb -> :sswitch_12
        0xc -> :sswitch_11
        0xd -> :sswitch_10
        0xe -> :sswitch_f
        0xf -> :sswitch_e
        0x10 -> :sswitch_d
        0x11 -> :sswitch_c
        0x12 -> :sswitch_b
        0x13 -> :sswitch_a
        0x14 -> :sswitch_9
        0x15 -> :sswitch_8
        0x16 -> :sswitch_7
        0x17 -> :sswitch_6
        0x18 -> :sswitch_5
        0x19 -> :sswitch_4
        0x1a -> :sswitch_3
        0x1b -> :sswitch_2
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_0
    .end sparse-switch
.end method
