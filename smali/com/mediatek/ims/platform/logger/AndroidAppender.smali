.class public Lcom/mediatek/ims/platform/logger/AndroidAppender;
.super Lcom/mediatek/ims/utils/logger/Appender;
.source "AndroidAppender.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/mediatek/ims/utils/logger/Appender;-><init>()V

    .line 38
    return-void
.end method

.method private printLog(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "logPrefix"    # Ljava/lang/String;
    .param p2, "level"    # I
    .param p3, "trace"    # Ljava/lang/String;

    .line 58
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 59
    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 60
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 61
    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 63
    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    .line 65
    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    :cond_3
    invoke-static {p1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized printTrace(ILjava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "logPrefix"    # Ljava/lang/String;
    .param p3, "level"    # I
    .param p4, "trace"    # Ljava/lang/String;

    monitor-enter p0

    .line 53
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MTKIMS]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "][slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object p2, v0

    .line 54
    invoke-direct {p0, p2, p3, p4}, Lcom/mediatek/ims/platform/logger/AndroidAppender;->printLog(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 52
    .end local p0    # "this":Lcom/mediatek/ims/platform/logger/AndroidAppender;
    .end local p1    # "slotId":I
    .end local p2    # "logPrefix":Ljava/lang/String;
    .end local p3    # "level":I
    .end local p4    # "trace":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized printTrace(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "logPrefix"    # Ljava/lang/String;
    .param p2, "level"    # I
    .param p3, "trace"    # Ljava/lang/String;

    monitor-enter p0

    .line 48
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MTKIMS]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ims/platform/logger/AndroidAppender;->printLog(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 47
    .end local p0    # "this":Lcom/mediatek/ims/platform/logger/AndroidAppender;
    .end local p1    # "logPrefix":Ljava/lang/String;
    .end local p2    # "level":I
    .end local p3    # "trace":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
