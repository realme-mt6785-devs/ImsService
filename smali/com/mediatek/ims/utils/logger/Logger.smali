.class public Lcom/mediatek/ims/utils/logger/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static final DEBUG_LEVEL:I = 0x0

.field public static final ERROR_LEVEL:I = 0x3

.field public static final FATAL_LEVEL:I = 0x4

.field public static final INFO_LEVEL:I = 0x1

.field public static final TRACE_OFF:Z = false

.field public static final TRACE_ON:Z = true

.field public static final WARN_LEVEL:I = 0x2

.field public static activationFlag:Z

.field private static appenders:[Lcom/mediatek/ims/utils/logger/Appender;

.field public static traceLevel:I


# instance fields
.field private classname:Ljava/lang/String;

.field private isSlotIdSet:Z

.field private mSlotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 70
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/ims/utils/logger/Logger;->activationFlag:Z

    .line 75
    const/4 v1, 0x0

    sput v1, Lcom/mediatek/ims/utils/logger/Logger;->traceLevel:I

    .line 80
    new-array v0, v0, [Lcom/mediatek/ims/utils/logger/Appender;

    new-instance v2, Lcom/mediatek/ims/platform/logger/AndroidAppender;

    invoke-direct {v2}, Lcom/mediatek/ims/platform/logger/AndroidAppender;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/ims/utils/logger/Logger;->appenders:[Lcom/mediatek/ims/utils/logger/Appender;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "classname"    # Ljava/lang/String;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/utils/logger/Logger;->isSlotIdSet:Z

    .line 85
    iput v0, p0, Lcom/mediatek/ims/utils/logger/Logger;->mSlotId:I

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/utils/logger/Logger;->isSlotIdSet:Z

    .line 108
    iput p1, p0, Lcom/mediatek/ims/utils/logger/Logger;->mSlotId:I

    .line 109
    iput-object p2, p0, Lcom/mediatek/ims/utils/logger/Logger;->classname:Ljava/lang/String;

    .line 110
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "classname"    # Ljava/lang/String;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/utils/logger/Logger;->isSlotIdSet:Z

    .line 85
    iput v0, p0, Lcom/mediatek/ims/utils/logger/Logger;->mSlotId:I

    .line 98
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 99
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 100
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/utils/logger/Logger;->classname:Ljava/lang/String;

    goto :goto_0

    .line 102
    :cond_0
    iput-object p1, p0, Lcom/mediatek/ims/utils/logger/Logger;->classname:Ljava/lang/String;

    .line 104
    :goto_0
    return-void
.end method

.method public static declared-synchronized getAppenders()[Lcom/mediatek/ims/utils/logger/Appender;
    .locals 2

    const-class v0, Lcom/mediatek/ims/utils/logger/Logger;

    monitor-enter v0

    .line 237
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/utils/logger/Logger;->appenders:[Lcom/mediatek/ims/utils/logger/Appender;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 237
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getLogger(ILjava/lang/String;)Lcom/mediatek/ims/utils/logger/Logger;
    .locals 2
    .param p0, "slotId"    # I
    .param p1, "classname"    # Ljava/lang/String;

    const-class v0, Lcom/mediatek/ims/utils/logger/Logger;

    monitor-enter v0

    .line 228
    :try_start_0
    new-instance v1, Lcom/mediatek/ims/utils/logger/Logger;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/ims/utils/logger/Logger;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 228
    .end local p0    # "slotId":I
    .end local p1    # "classname":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getLogger(Ljava/lang/String;)Lcom/mediatek/ims/utils/logger/Logger;
    .locals 2
    .param p0, "classname"    # Ljava/lang/String;

    const-class v0, Lcom/mediatek/ims/utils/logger/Logger;

    monitor-enter v0

    .line 224
    :try_start_0
    new-instance v1, Lcom/mediatek/ims/utils/logger/Logger;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/utils/logger/Logger;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 224
    .end local p0    # "classname":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private printTrace(Ljava/lang/String;I)V
    .locals 4
    .param p1, "trace"    # Ljava/lang/String;
    .param p2, "level"    # I

    .line 195
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    sget-object v0, Lcom/mediatek/ims/utils/logger/Logger;->appenders:[Lcom/mediatek/ims/utils/logger/Appender;

    if-eqz v0, :cond_1

    sget v0, Lcom/mediatek/ims/utils/logger/Logger;->traceLevel:I

    if-lt p2, v0, :cond_1

    .line 197
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/mediatek/ims/utils/logger/Logger;->appenders:[Lcom/mediatek/ims/utils/logger/Appender;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 198
    iget-boolean v2, p0, Lcom/mediatek/ims/utils/logger/Logger;->isSlotIdSet:Z

    if-eqz v2, :cond_0

    .line 199
    aget-object v1, v1, v0

    iget v2, p0, Lcom/mediatek/ims/utils/logger/Logger;->mSlotId:I

    iget-object v3, p0, Lcom/mediatek/ims/utils/logger/Logger;->classname:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p2, p1}, Lcom/mediatek/ims/utils/logger/Appender;->printTrace(ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 201
    :cond_0
    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/mediatek/ims/utils/logger/Logger;->classname:Ljava/lang/String;

    invoke-virtual {v1, v2, p2, p1}, Lcom/mediatek/ims/utils/logger/Appender;->printTrace(Ljava/lang/String;ILjava/lang/String;)V

    .line 197
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static setAppenders([Lcom/mediatek/ims/utils/logger/Appender;)V
    .locals 0
    .param p0, "appenders"    # [Lcom/mediatek/ims/utils/logger/Appender;

    .line 214
    sput-object p0, Lcom/mediatek/ims/utils/logger/Logger;->appenders:[Lcom/mediatek/ims/utils/logger/Appender;

    .line 215
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 1
    .param p1, "trace"    # Ljava/lang/String;

    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/utils/logger/Logger;->printTrace(Ljava/lang/String;I)V

    .line 128
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1
    .param p1, "trace"    # Ljava/lang/String;

    .line 154
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/utils/logger/Logger;->printTrace(Ljava/lang/String;I)V

    .line 155
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "trace"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 164
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/utils/logger/Logger;->printTrace(Ljava/lang/String;I)V

    .line 165
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 166
    return-void
.end method

.method public fatal(Ljava/lang/String;)V
    .locals 1
    .param p1, "trace"    # Ljava/lang/String;

    .line 174
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/utils/logger/Logger;->printTrace(Ljava/lang/String;I)V

    .line 175
    return-void
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "trace"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 184
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/utils/logger/Logger;->printTrace(Ljava/lang/String;I)V

    .line 185
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 186
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 1
    .param p1, "trace"    # Ljava/lang/String;

    .line 136
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/utils/logger/Logger;->printTrace(Ljava/lang/String;I)V

    .line 137
    return-void
.end method

.method public isActivated()Z
    .locals 2

    .line 118
    sget-boolean v0, Lcom/mediatek/ims/utils/logger/Logger;->activationFlag:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1
    .param p1, "trace"    # Ljava/lang/String;

    .line 145
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/utils/logger/Logger;->printTrace(Ljava/lang/String;I)V

    .line 146
    return-void
.end method
