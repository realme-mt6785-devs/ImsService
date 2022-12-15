.class public Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;
.super Ljava/lang/Object;
.source "OperatorCustomizationFactoryLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;,
        Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;
    }
.end annotation


# static fields
.field private static final CUSTOM_APK_PATH:Ljava/lang/String; = "/custom/app/"

.field private static final CUSTOM_JAR_PATH:Ljava/lang/String; = "/custom/operator/libs/"

.field private static final LOG_ENABLE:Z

.field private static final PRODUCT_APK_PATH:Ljava/lang/String; = "/product/app/"

.field private static final PRODUCT_JAR_PATH:Ljava/lang/String; = "/product/operator/libs/"

.field private static final PROPERTY_OPERATOR_OPTR:Ljava/lang/String; = "persist.vendor.operator.optr"

.field private static final PROPERTY_OPERATOR_SEG:Ljava/lang/String; = "persist.vendor.operator.seg"

.field private static final PROPERTY_OPERATOR_SPEC:Ljava/lang/String; = "persist.vendor.operator.spec"

.field private static final RSC_PRODUCT_APK_PATH:Ljava/lang/String;

.field private static final RSC_SYSTEM_APK_PATH:Ljava/lang/String;

.field private static final RSC_SYSTEM_EXT_APK_PATH:Ljava/lang/String;

.field private static final SYSTEM_APK_PATH:Ljava/lang/String; = "/system/app/"

.field private static final SYSTEM_EXT_APK_PATH:Ljava/lang/String; = "/system_ext/app/"

.field private static final SYSTEM_EXT_JAR_PATH:Ljava/lang/String; = "/system_ext/operator/libs/"

.field private static final SYSTEM_JAR_PATH:Ljava/lang/String; = "/system/operator/libs/"

.field private static final TAG:Ljava/lang/String; = "OperatorCustomizationFactoryLoader"

.field private static final USP_PACKAGE:Ljava/lang/String;

.field private static final sFactoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    nop

    .line 67
    const-string v0, "ro.vendor.mtk_carrierexpress_pack"

    const-string v1, "no"

    invoke-static {v0, v1}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->getSysProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->USP_PACKAGE:Ljava/lang/String;

    .line 77
    nop

    .line 78
    const-string v0, "ro.sys.current_rsc_path"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->getSysProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->RSC_SYSTEM_APK_PATH:Ljava/lang/String;

    .line 79
    nop

    .line 80
    const-string v0, "ro.sys_ext.current_rsc_path"

    invoke-static {v0, v1}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->getSysProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->RSC_SYSTEM_EXT_APK_PATH:Ljava/lang/String;

    .line 81
    nop

    .line 82
    const-string v0, "ro.product.current_rsc_path"

    invoke-static {v0, v1}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->getSysProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->RSC_PRODUCT_APK_PATH:Ljava/lang/String;

    .line 86
    const-string v0, "ro.build.type"

    const-string v1, "eng"

    invoke-static {v0, v1}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->getSysProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    .line 87
    const-string v1, "OperatorCustomizationFactoryLoader"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->LOG_ENABLE:Z

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->sFactoryMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findOpertorFactoryInfo(Ljava/util/List;I)Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;
    .locals 7
    .param p1, "slot"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;",
            ">;I)",
            "Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;"
        }
    .end annotation

    .line 454
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;>;"
    const/4 v0, 0x0

    .line 455
    .local v0, "ret":Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;
    invoke-static {p1}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->getActiveOperatorInfo(I)Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;

    move-result-object v1

    .line 456
    .local v1, "optrInfo":Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;
    if-eqz v1, :cond_9

    invoke-static {v1}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;->access$000(Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 462
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .local v2, "unSignedOperatorIdFactoryInfos":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;

    .line 465
    .local v4, "factoryInfo":Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;
    invoke-static {v1}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;->access$000(Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mOperator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 466
    iget-object v5, v4, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mSegment:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 467
    iget-object v5, v4, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mSegment:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;->access$100(Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 468
    iget-object v5, v4, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mSpecification:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mSpecification:Ljava/lang/String;

    .line 469
    invoke-static {v1}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;->access$200(Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 470
    :cond_1
    move-object v0, v4

    .line 471
    goto :goto_1

    .line 474
    :cond_2
    iget-object v5, v4, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mSpecification:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, v4, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mSpecification:Ljava/lang/String;

    .line 475
    invoke-static {v1}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;->access$200(Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 476
    :cond_3
    move-object v0, v4

    .line 477
    goto :goto_1

    .line 479
    :cond_4
    iget-object v5, v4, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mOperator:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 480
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    .end local v4    # "factoryInfo":Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;
    :cond_5
    goto :goto_0

    .line 483
    :cond_6
    :goto_1
    if-nez v0, :cond_8

    .line 485
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;

    .line 486
    .restart local v4    # "factoryInfo":Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;
    iget-object v5, v4, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mLibName:Ljava/lang/String;

    invoke-static {v5}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->searchTargetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 487
    .local v5, "target":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 488
    move-object v0, v4

    .line 489
    goto :goto_3

    .line 491
    .end local v4    # "factoryInfo":Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;
    .end local v5    # "target":Ljava/lang/String;
    :cond_7
    goto :goto_2

    .line 493
    :cond_8
    :goto_3
    return-object v0

    .line 458
    .end local v2    # "unSignedOperatorIdFactoryInfos":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;>;"
    :cond_9
    :goto_4
    const-string v2, "It\'s OM load or parse failed, because operator is null"

    invoke-static {v2}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->logD(Ljava/lang/String;)V

    .line 459
    return-object v0
.end method

.method private static getActiveOperatorInfo()Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;
    .locals 5

    .line 210
    new-instance v0, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;

    const-string v1, "persist.vendor.operator.optr"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->getSysProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    const-string v3, "persist.vendor.operator.spec"

    invoke-static {v3, v2}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->getSysProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 212
    const-string v4, "persist.vendor.operator.seg"

    invoke-static {v4, v2}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->getSysProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .local v0, "info":Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;
    return-object v0
.end method

.method private static getActiveOperatorInfo(I)Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;
    .locals 7
    .param p0, "slot"    # I

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "info":Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;
    const/4 v1, -0x1

    if-eq p0, v1, :cond_3

    sget-object v1, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->USP_PACKAGE:Ljava/lang/String;

    const-string v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persist.vendor.mtk_usp_optr_slot_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->getSysProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "optrProperty":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "usp optr property is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->logD(Ljava/lang/String;)V

    .line 227
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 228
    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "items":[Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 230
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 231
    new-instance v4, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;

    aget-object v5, v3, v5

    invoke-direct {v4, v5, v2, v2}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_0

    .line 232
    :cond_0
    array-length v2, v3

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 233
    new-instance v2, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;

    aget-object v4, v3, v5

    aget-object v5, v3, v6

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-direct {v2, v4, v5, v6}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    .line 235
    :cond_1
    const-string v2, "usp optr property no content or wrong"

    invoke-static {v2}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->logE(Ljava/lang/String;)V

    .line 239
    .end local v1    # "optrProperty":Ljava/lang/String;
    .end local v3    # "items":[Ljava/lang/String;
    :cond_2
    :goto_0
    goto :goto_1

    .line 240
    :cond_3
    invoke-static {}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->getActiveOperatorInfo()Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;

    move-result-object v0

    .line 242
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\'s OperatorInfo is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->logD(Ljava/lang/String;)V

    .line 243
    return-object v0
.end method

.method private static getSysProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "prop"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .line 391
    const-string v0, "Get system properties failed! "

    const-string v1, ""

    .line 393
    .local v1, "propValue":Ljava/lang/String;
    :try_start_0
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 394
    .local v2, "systemPropertiesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "get"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    .line 395
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 396
    .local v3, "getPropMethod":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v7

    aput-object p1, v4, v8

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    .line 406
    .end local v2    # "systemPropertiesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "getPropMethod":Ljava/lang/reflect/Method;
    :goto_0
    goto :goto_1

    .line 404
    :catch_0
    move-exception v2

    .line 405
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->logE(Ljava/lang/String;)V

    goto :goto_1

    .line 402
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v2

    .line 403
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->logE(Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 400
    :catch_2
    move-exception v2

    .line 401
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->logE(Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 398
    :catch_3
    move-exception v2

    .line 399
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->logE(Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 407
    :goto_1
    return-object v1
.end method

.method public static loadFactory(Landroid/content/Context;Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 292
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;>;"
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->loadFactory(Landroid/content/Context;Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized loadFactory(Landroid/content/Context;Ljava/util/List;I)Ljava/lang/Object;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "slot"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;",
            ">;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;>;"
    const-class v0, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;

    monitor-enter v0

    .line 309
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1, p0, p1, p2}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->loadFactory(Ljava/lang/ClassLoader;Landroid/content/Context;Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 309
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;>;"
    .end local p2    # "slot":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized loadFactory(Ljava/lang/ClassLoader;Landroid/content/Context;Ljava/util/List;I)Ljava/lang/Object;
    .locals 7
    .param p0, "clazzLoader"    # Ljava/lang/ClassLoader;
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "slot"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;",
            ">;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;>;"
    const-class v0, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;

    monitor-enter v0

    .line 314
    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 315
    :try_start_0
    const-string v2, "loadFactory failed, because param list is null"

    invoke-static {v2}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->logE(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    monitor-exit v0

    return-object v1

    .line 318
    :cond_0
    :try_start_1
    invoke-static {p2, p3}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->findOpertorFactoryInfo(Ljava/util/List;I)Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;

    move-result-object v2

    .line 319
    .local v2, "factoryInfo":Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;
    if-nez v2, :cond_2

    .line 320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 322
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 324
    .end local v4    # "index":I
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can not find operatorFactoryInfo by slot id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " from \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 324
    invoke-static {v4}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->logD(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    monitor-exit v0

    return-object v1

    .line 330
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_2
    sget-object v3, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->sFactoryMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 331
    .local v3, "factory":Ljava/lang/Object;
    if-eqz v3, :cond_3

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "return "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from cache by "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->logD(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 333
    monitor-exit v0

    return-object v3

    .line 335
    :cond_3
    :try_start_3
    iget-object v4, v2, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mLibName:Ljava/lang/String;

    invoke-static {v4}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->searchTargetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 336
    .local v4, "path":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_4

    .line 338
    monitor-exit v0

    return-object v1

    .line 341
    :cond_4
    :try_start_4
    iget-object v1, v2, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mFactoryName:Ljava/lang/String;

    iget-object v5, v2, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p0, p1, v4, v1, v5}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->loadFactoryInternal(Ljava/lang/ClassLoader;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 343
    .end local v3    # "factory":Ljava/lang/Object;
    .local v1, "factory":Ljava/lang/Object;
    if-eqz v1, :cond_5

    .line 345
    sget-object v3, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->sFactoryMap:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 347
    :cond_5
    monitor-exit v0

    return-object v1

    .line 313
    .end local v1    # "factory":Ljava/lang/Object;
    .end local v2    # "factoryInfo":Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;
    .end local v4    # "path":Ljava/lang/String;
    .end local p0    # "clazzLoader":Ljava/lang/ClassLoader;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;>;"
    .end local p3    # "slot":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static loadFactory(Ljava/lang/ClassLoader;Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .param p0, "clazzLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 259
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;>;"
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->loadFactory(Ljava/lang/ClassLoader;Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static loadFactory(Ljava/lang/ClassLoader;Ljava/util/List;I)Ljava/lang/Object;
    .locals 1
    .param p0, "clazzLoader"    # Ljava/lang/ClassLoader;
    .param p2, "slot"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;",
            ">;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 277
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->loadFactory(Ljava/lang/ClassLoader;Landroid/content/Context;Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static loadFactoryInternal(Ljava/lang/ClassLoader;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p0, "clazzLoader"    # Ljava/lang/ClassLoader;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "factoryClassName"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load factory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " whose packageName is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", context is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->logD(Ljava/lang/String;)V

    .line 356
    const-string v0, "OperatorCustomizationFactoryLoader"

    if-eqz p0, :cond_0

    .line 357
    :try_start_0
    new-instance v1, Ldalvik/system/PathClassLoader;

    invoke-direct {v1, p2, p0}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .local v1, "classLoader":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 384
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v1

    goto :goto_2

    .line 358
    :cond_0
    if-eqz p1, :cond_1

    .line 359
    new-instance v1, Ldalvik/system/PathClassLoader;

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .restart local v1    # "classLoader":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 361
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    :cond_1
    new-instance v1, Ldalvik/system/PathClassLoader;

    .line 362
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 365
    .restart local v1    # "classLoader":Ljava/lang/ClassLoader;
    :goto_0
    invoke-virtual {v1, p3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 366
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load class : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " successfully with classLoader:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->logD(Ljava/lang/String;)V

    .line 369
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_2

    if-eqz p1, :cond_2

    .line 371
    const/4 v3, 0x1

    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 372
    .local v4, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x3

    invoke-virtual {p1, p4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    .line 374
    .local v5, "opContext":Landroid/content/Context;
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v6

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 378
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v5    # "opContext":Landroid/content/Context;
    :catch_1
    move-exception v3

    .line 380
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_2
    const-string v4, "Exception occurs when execute constructor with Context"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 375
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v3

    .line 377
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    const-string v4, "Exception occurs when using constructor with Context"

    invoke-static {v4}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->logD(Ljava/lang/String;)V

    .line 383
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    .line 385
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v1, "ex":Ljava/lang/Exception;
    :goto_2
    const-string v2, "Exception when initial instance"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    .end local v1    # "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static logD(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .line 497
    sget-boolean v0, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 498
    const-string v0, "OperatorCustomizationFactoryLoader"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_0
    return-void
.end method

.method private static logE(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .line 503
    sget-boolean v0, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 504
    const-string v0, "OperatorCustomizationFactoryLoader"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_0
    return-void
.end method

.method private static searchTargetPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "target"    # Ljava/lang/String;

    .line 411
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 412
    const-string v0, "target is null"

    invoke-static {v0}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->logE(Ljava/lang/String;)V

    .line 413
    return-object v1

    .line 416
    :cond_0
    move-object v0, p0

    .line 417
    .local v0, "search":Ljava/lang/String;
    const-string v2, ".apk"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 418
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    sub-int/2addr v4, v5

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    sget-object v2, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->RSC_SYSTEM_APK_PATH:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, "/custom/app/"

    const-string v6, "/product/app/"

    const-string v7, "/system_ext/app/"

    const-string v8, "/system/app/"

    if-nez v2, :cond_1

    .line 423
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->RSC_SYSTEM_APK_PATH:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/app/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->RSC_PRODUCT_APK_PATH:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v2, v11

    const/4 v9, 0x2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->RSC_SYSTEM_EXT_APK_PATH:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    const/4 v9, 0x3

    aput-object v8, v2, v9

    aput-object v7, v2, v5

    const/4 v5, 0x5

    aput-object v6, v2, v5

    const/4 v5, 0x6

    aput-object v4, v2, v5

    .local v2, "searchFolders":[Ljava/lang/String;
    goto :goto_0

    .line 431
    .end local v2    # "searchFolders":[Ljava/lang/String;
    :cond_1
    filled-new-array {v8, v7, v6, v4}, [Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "searchFolders":[Ljava/lang/String;
    goto :goto_0

    .line 437
    .end local v2    # "searchFolders":[Ljava/lang/String;
    :cond_2
    const-string v2, "/system/operator/libs/"

    const-string v4, "/system_ext/operator/libs/"

    const-string v5, "/product/operator/libs/"

    const-string v6, "/custom/operator/libs/"

    filled-new-array {v2, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    .line 442
    .restart local v2    # "searchFolders":[Ljava/lang/String;
    :goto_0
    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v5, v2, v3

    .line 443
    .local v5, "folder":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 444
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 442
    .end local v5    # "folder":Ljava/lang/String;
    .end local v6    # "file":Ljava/io/File;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 448
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not find target "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->logD(Ljava/lang/String;)V

    .line 449
    return-object v1
.end method
