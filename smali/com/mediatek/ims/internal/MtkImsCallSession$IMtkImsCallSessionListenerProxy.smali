.class public Lcom/mediatek/ims/internal/MtkImsCallSession$IMtkImsCallSessionListenerProxy;
.super Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;
.source "MtkImsCallSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/MtkImsCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IMtkImsCallSessionListenerProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/internal/MtkImsCallSession;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/internal/MtkImsCallSession;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/MtkImsCallSession;

    .line 183
    iput-object p1, p0, Lcom/mediatek/ims/internal/MtkImsCallSession$IMtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/internal/MtkImsCallSession;

    invoke-direct {p0}, Lcom/mediatek/ims/internal/IMtkImsCallSessionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public callSessionBusy(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    .locals 2
    .param p1, "session"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;

    .line 211
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession$IMtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/internal/MtkImsCallSession;

    invoke-static {v0}, Lcom/mediatek/ims/internal/MtkImsCallSession;->access$600(Lcom/mediatek/ims/internal/MtkImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession$IMtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/internal/MtkImsCallSession;

    invoke-static {v0}, Lcom/mediatek/ims/internal/MtkImsCallSession;->access$700(Lcom/mediatek/ims/internal/MtkImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsCallSession$IMtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/internal/MtkImsCallSession;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionBusy(Landroid/telephony/ims/ImsCallSession;)V

    .line 214
    :cond_0
    return-void
.end method

.method public callSessionCalling(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    .locals 2
    .param p1, "session"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;

    .line 218
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession$IMtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/internal/MtkImsCallSession;

    invoke-static {v0}, Lcom/mediatek/ims/internal/MtkImsCallSession;->access$800(Lcom/mediatek/ims/internal/MtkImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession$IMtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/internal/MtkImsCallSession;

    invoke-static {v0}, Lcom/mediatek/ims/internal/MtkImsCallSession;->access$900(Lcom/mediatek/ims/internal/MtkImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsCallSession$IMtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/internal/MtkImsCallSession;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionCalling(Landroid/telephony/ims/ImsCallSession;)V

    .line 221
    :cond_0
    return-void
.end method

.method public callSessionMergeComplete(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    .locals 4
    .param p1, "newSession"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;

    .line 245
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession$IMtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/internal/MtkImsCallSession;

    invoke-static {v0}, Lcom/mediatek/ims/internal/MtkImsCallSession;->access$1000(Lcom/mediatek/ims/internal/MtkImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 246
    if-eqz p1, :cond_1

    .line 249
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession$IMtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/internal/MtkImsCallSession;

    .line 251
    .local v0, "validActiveSession":Landroid/telephony/ims/ImsCallSession;
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsCallSession$IMtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/internal/MtkImsCallSession;

    invoke-static {v1}, Lcom/mediatek/ims/internal/MtkImsCallSession;->access$1100(Lcom/mediatek/ims/internal/MtkImsCallSession;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    invoke-interface {p1}, Lcom/mediatek/ims/internal/IMtkImsCallSession;->getIImsCallSession()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    .line 256
    .local v1, "aospImsCallSession":Lcom/android/ims/internal/IImsCallSession;
    new-instance v2, Lcom/mediatek/ims/internal/MtkImsCallSession;

    invoke-direct {v2, v1, p1}, Lcom/mediatek/ims/internal/MtkImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;Lcom/mediatek/ims/internal/IMtkImsCallSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 260
    .end local v1    # "aospImsCallSession":Lcom/android/ims/internal/IImsCallSession;
    :cond_0
    goto :goto_0

    .line 258
    :catch_0
    move-exception v1

    .line 259
    .local v1, "rex":Landroid/os/RemoteException;
    const-string v2, "MtkImsCallSession"

    const-string v3, "callSessionMergeComplete: exception for getCallId!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .end local v1    # "rex":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsCallSession$IMtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/internal/MtkImsCallSession;

    invoke-static {v1}, Lcom/mediatek/ims/internal/MtkImsCallSession;->access$1200(Lcom/mediatek/ims/internal/MtkImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionMergeComplete(Landroid/telephony/ims/ImsCallSession;)V

    .line 262
    .end local v0    # "validActiveSession":Landroid/telephony/ims/ImsCallSession;
    goto :goto_1

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession$IMtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/internal/MtkImsCallSession;

    invoke-static {v0}, Lcom/mediatek/ims/internal/MtkImsCallSession;->access$1300(Lcom/mediatek/ims/internal/MtkImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionMergeComplete(Landroid/telephony/ims/ImsCallSession;)V

    .line 267
    :cond_2
    :goto_1
    return-void
.end method

.method public callSessionMergeStarted(Lcom/mediatek/ims/internal/IMtkImsCallSession;Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .param p2, "newSession"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .param p3, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 235
    const-string v0, "MtkImsCallSession"

    const-string v1, "callSessionMergeStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void
.end method

.method public callSessionRedialEcc(Lcom/mediatek/ims/internal/IMtkImsCallSession;Z)V
    .locals 2
    .param p1, "session"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .param p2, "isNeedUserConfirm"    # Z

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionRedialEcc: isNeedUserConfirm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkImsCallSession"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession$IMtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/internal/MtkImsCallSession;

    invoke-static {v0}, Lcom/mediatek/ims/internal/MtkImsCallSession;->access$1400(Lcom/mediatek/ims/internal/MtkImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession$IMtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/internal/MtkImsCallSession;

    invoke-static {v0}, Lcom/mediatek/ims/internal/MtkImsCallSession;->access$1500(Lcom/mediatek/ims/internal/MtkImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsCallSession$IMtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/internal/MtkImsCallSession;

    invoke-virtual {v0, v1, p2}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionRedialEcc(Landroid/telephony/ims/ImsCallSession;Z)V

    .line 280
    :cond_0
    return-void
.end method

.method public callSessionRinging(Lcom/mediatek/ims/internal/IMtkImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 204
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession$IMtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/internal/MtkImsCallSession;

    invoke-static {v0}, Lcom/mediatek/ims/internal/MtkImsCallSession;->access$400(Lcom/mediatek/ims/internal/MtkImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession$IMtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/internal/MtkImsCallSession;

    invoke-static {v0}, Lcom/mediatek/ims/internal/MtkImsCallSession;->access$500(Lcom/mediatek/ims/internal/MtkImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsCallSession$IMtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/internal/MtkImsCallSession;

    invoke-virtual {v0, v1, p2}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionRinging(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    .line 207
    :cond_0
    return-void
.end method

.method public callSessionRttEventReceived(Lcom/mediatek/ims/internal/IMtkImsCallSession;I)V
    .locals 2
    .param p1, "session"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .param p2, "event"    # I

    .line 197
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession$IMtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/internal/MtkImsCallSession;

    invoke-static {v0}, Lcom/mediatek/ims/internal/MtkImsCallSession;->access$200(Lcom/mediatek/ims/internal/MtkImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession$IMtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/internal/MtkImsCallSession;

    invoke-static {v0}, Lcom/mediatek/ims/internal/MtkImsCallSession;->access$300(Lcom/mediatek/ims/internal/MtkImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsCallSession$IMtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/internal/MtkImsCallSession;

    invoke-virtual {v0, v1, p2}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionRttEventReceived(Landroid/telephony/ims/ImsCallSession;I)V

    .line 200
    :cond_0
    return-void
.end method

.method public callSessionTextCapabilityChanged(Lcom/mediatek/ims/internal/IMtkImsCallSession;IIII)V
    .locals 7
    .param p1, "session"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .param p2, "localCapability"    # I
    .param p3, "remoteCapability"    # I
    .param p4, "localTextStatus"    # I
    .param p5, "realRemoteCapability"    # I

    .line 188
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession$IMtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/internal/MtkImsCallSession;

    invoke-static {v0}, Lcom/mediatek/ims/internal/MtkImsCallSession;->access$000(Lcom/mediatek/ims/internal/MtkImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession$IMtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/internal/MtkImsCallSession;

    invoke-static {v0}, Lcom/mediatek/ims/internal/MtkImsCallSession;->access$100(Lcom/mediatek/ims/internal/MtkImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/internal/MtkImsCallSession$IMtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/internal/MtkImsCallSession;

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionTextCapabilityChanged(Landroid/telephony/ims/ImsCallSession;IIII)V

    .line 192
    :cond_0
    return-void
.end method

.method public callSessionVideoRingtoneEventReceived(Lcom/mediatek/ims/internal/IMtkImsCallSession;ILjava/lang/String;)V
    .locals 2
    .param p1, "session"    # Lcom/mediatek/ims/internal/IMtkImsCallSession;
    .param p2, "eventType"    # I
    .param p3, "event"    # Ljava/lang/String;

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionVideoRingtoneEventReceived: eventType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkImsCallSession"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession$IMtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/internal/MtkImsCallSession;

    invoke-static {v0}, Lcom/mediatek/ims/internal/MtkImsCallSession;->access$1600(Lcom/mediatek/ims/internal/MtkImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/mediatek/ims/internal/MtkImsCallSession$IMtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/internal/MtkImsCallSession;

    invoke-static {v0}, Lcom/mediatek/ims/internal/MtkImsCallSession;->access$1700(Lcom/mediatek/ims/internal/MtkImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/internal/MtkImsCallSession$IMtkImsCallSessionListenerProxy;->this$0:Lcom/mediatek/ims/internal/MtkImsCallSession;

    invoke-virtual {v0, v1, p2, p3}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionVideoRingtoneEventReceived(Landroid/telephony/ims/ImsCallSession;ILjava/lang/String;)V

    .line 294
    :cond_0
    return-void
.end method
