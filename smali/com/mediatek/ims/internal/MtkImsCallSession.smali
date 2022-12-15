.class public Lcom/mediatek/ims/internal/MtkImsCallSession;
.super Landroid/telephony/ims/ImsCallSession;
.source "MtkImsCallSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/MtkImsCallSession$IMtkImsCallSessionListenerProxy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MtkImsCallSession"


# instance fields
.field private final miMtkSession:Lcom/mediatek/ims/internal/IMtkImsCallSession;


# direct methods
.method public constructor <init>(Lcom/android/ims/internal/IImsCallSession;Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    .locals 2
    .param p1, "iSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "iMtkSession"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;

    .line 55
    invoke-direct {p0}, Landroid/telephony/ims/ImsCallSession;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->miMtkSession:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    .line 57
    iput-object p1, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 59
    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_2

    .line 65
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->miMtkSession:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    new-instance v1, Lcom/mediatek/ims/internal/MtkImsCallSession$IMtkImsCallSessionListenerProxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/MtkImsCallSession$IMtkImsCallSessionListenerProxy;-><init>(Lcom/mediatek/ims/internal/MtkImsCallSession;)V

    invoke-interface {v0, v1}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->setListener(Lcom/mediatek/ims/internal/IMtkImsCallSessionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 70
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    new-instance v1, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;-><init>(Landroid/telephony/ims/ImsCallSession;)V

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsCallSession;->setListener(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    goto :goto_1

    .line 71
    :catch_1
    move-exception v0

    .line 73
    :goto_1
    return-void

    .line 60
    :cond_1
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->mClosed:Z

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/internal/MtkImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/MtkImsCallSession;

    .line 51
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/internal/MtkImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/MtkImsCallSession;

    .line 51
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/ims/internal/MtkImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/MtkImsCallSession;

    .line 51
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/ims/internal/MtkImsCallSession;)Lcom/android/ims/internal/IImsCallSession;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/MtkImsCallSession;

    .line 51
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/ims/internal/MtkImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/MtkImsCallSession;

    .line 51
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/ims/internal/MtkImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/MtkImsCallSession;

    .line 51
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/ims/internal/MtkImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/MtkImsCallSession;

    .line 51
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/ims/internal/MtkImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/MtkImsCallSession;

    .line 51
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/ims/internal/MtkImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/MtkImsCallSession;

    .line 51
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/ims/internal/MtkImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/MtkImsCallSession;

    .line 51
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/internal/MtkImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/MtkImsCallSession;

    .line 51
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/ims/internal/MtkImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/MtkImsCallSession;

    .line 51
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/ims/internal/MtkImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/MtkImsCallSession;

    .line 51
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/ims/internal/MtkImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/MtkImsCallSession;

    .line 51
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/ims/internal/MtkImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/MtkImsCallSession;

    .line 51
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/ims/internal/MtkImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/MtkImsCallSession;

    .line 51
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/ims/internal/MtkImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/MtkImsCallSession;

    .line 51
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/ims/internal/MtkImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/MtkImsCallSession;

    .line 51
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->mListener:Landroid/telephony/ims/ImsCallSession$Listener;

    return-object v0
.end method


# virtual methods
.method public approveEccRedial(Z)V
    .locals 1
    .param p1, "isAprroved"    # Z

    .line 116
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 117
    return-void

    .line 121
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->miMtkSession:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->approveEccRedial(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    nop

    .line 125
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Landroid/os/RemoteException;
    return-void
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 79
    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 80
    monitor-exit p0

    return-void

    .line 84
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->miMtkSession:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    invoke-interface {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->close()V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->mClosed:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    goto :goto_0

    .line 86
    .end local p0    # "this":Lcom/mediatek/ims/internal/MtkImsCallSession;
    :catch_0
    move-exception v0

    .line 88
    :goto_0
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHeaderCallId()Ljava/lang/String;
    .locals 4

    .line 152
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 153
    return-object v1

    .line 157
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->miMtkSession:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    invoke-interface {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->getHeaderCallId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MtkImsCallSession"

    const-string v3, "getCallId: RemoteException!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-object v1
.end method

.method public isIncomingCallMultiparty()Z
    .locals 2

    .line 98
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->mClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 99
    return v1

    .line 103
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->miMtkSession:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    invoke-interface {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->isIncomingCallMultiparty()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method public removeLastParticipant()V
    .locals 3

    .line 140
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 141
    return-void

    .line 145
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->miMtkSession:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    invoke-interface {v0}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->removeLastParticipant()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MtkImsCallSession"

    const-string v2, "removeLastParticipant: RemoteException!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setImsCallMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 128
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 129
    return-void

    .line 133
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->miMtkSession:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->setImsCallMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MtkImsCallSession"

    const-string v2, "setImsCallMode: RemoteException!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public videoRingtoneOperation(ILjava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "operation"    # Ljava/lang/String;

    .line 165
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 166
    return-void

    .line 170
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession;->miMtkSession:Lcom/mediatek/ims/internal/IMtkImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->videoRingtoneOperation(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    nop

    .line 175
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MtkImsCallSession"

    const-string v2, "videoRingtoneOperation: RemoteException!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void
.end method
