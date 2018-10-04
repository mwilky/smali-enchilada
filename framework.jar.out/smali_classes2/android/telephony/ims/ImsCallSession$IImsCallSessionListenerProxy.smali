.class Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;
.super Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;
.source "ImsCallSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IImsCallSessionListenerProxy"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/ims/ImsCallSession;


# direct methods
.method private constructor <init>(Landroid/telephony/ims/ImsCallSession;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;-><init>(Landroid/telephony/ims/ImsCallSession;)V

    return-void
.end method


# virtual methods
.method public callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_0
    return-void
.end method

.method public callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    new-instance v2, Landroid/telephony/ims/ImsCallSession;

    invoke-direct {v2, p1}, Landroid/telephony/ims/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    invoke-virtual {v0, v1, v2, p2}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionConferenceExtendReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    :cond_0
    return-void
.end method

.method public callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    new-instance v2, Landroid/telephony/ims/ImsCallSession;

    invoke-direct {v2, p1}, Landroid/telephony/ims/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    invoke-virtual {v0, v1, v2, p2}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionConferenceExtended(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    :cond_0
    return-void
.end method

.method public callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsConferenceState;)V

    :cond_0
    return-void
.end method

.method public callSessionHandover(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionHandover(Landroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V

    :cond_0
    return-void
.end method

.method public callSessionHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionHandoverFailed(Landroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V

    :cond_0
    return-void
.end method

.method public callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionHeld(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    :cond_0
    return-void
.end method

.method public callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionHoldFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_0
    return-void
.end method

.method public callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionHoldReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    :cond_0
    return-void
.end method

.method public callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionStarted(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    :cond_0
    return-void
.end method

.method public callSessionInitiatedFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionStartFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_0
    return-void
.end method

.method public callSessionInviteParticipantsRequestDelivered()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionInviteParticipantsRequestDelivered(Landroid/telephony/ims/ImsCallSession;)V

    :cond_0
    return-void
.end method

.method public callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_0
    return-void
.end method

.method public callSessionMayHandover(II)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionMayHandover(Landroid/telephony/ims/ImsCallSession;II)V

    :cond_0
    return-void
.end method

.method public callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 4

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->access$200(Landroid/telephony/ims/ImsCallSession;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/telephony/ims/ImsCallSession;

    invoke-direct {v1, p1}, Landroid/telephony/ims/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ImsCallSession"

    const-string v3, "callSessionMergeComplete: exception for getCallId!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionMergeComplete(Landroid/telephony/ims/ImsCallSession;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionMergeComplete(Landroid/telephony/ims/ImsCallSession;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionMergeFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_0
    return-void
.end method

.method public callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2

    const-string v0, "ImsCallSession"

    const-string v1, "callSessionMergeStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public callSessionMultipartyStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionMultipartyStateChanged(Landroid/telephony/ims/ImsCallSession;Z)V

    :cond_0
    return-void
.end method

.method public callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionProgressing(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    :cond_0
    return-void
.end method

.method public callSessionPropertyChanged(I)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionPropertyChanged(I)V

    :cond_0
    return-void
.end method

.method public callSessionRemoveParticipantsRequestDelivered()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionRemoveParticipantsRequestDelivered(Landroid/telephony/ims/ImsCallSession;)V

    :cond_0
    return-void
.end method

.method public callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionRemoveParticipantsRequestFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_0
    return-void
.end method

.method public callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionResumeFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_0
    return-void
.end method

.method public callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionResumeReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    :cond_0
    return-void
.end method

.method public callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionResumed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    :cond_0
    return-void
.end method

.method public callSessionRttMessageReceived(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionRttMessageReceived(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    :cond_0
    return-void
.end method

.method public callSessionRttModifyResponseReceived(I)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionRttModifyResponseReceived(I)V

    :cond_0
    return-void
.end method

.method public callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionSuppServiceReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsSuppServiceNotification;)V

    :cond_0
    return-void
.end method

.method public callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionTerminated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_0
    return-void
.end method

.method public callSessionTtyModeReceived(I)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionTtyModeReceived(Landroid/telephony/ims/ImsCallSession;I)V

    :cond_0
    return-void
.end method

.method public callSessionUpdateFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionUpdateFailed(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_0
    return-void
.end method

.method public callSessionUpdateReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionUpdateReceived(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    :cond_0
    return-void
.end method

.method public callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionUpdated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    :cond_0
    return-void
.end method

.method public callSessionUssdMessageReceived(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Landroid/telephony/ims/ImsCallSession;->access$100(Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telephony/ims/ImsCallSession$Listener;->callSessionUssdMessageReceived(Landroid/telephony/ims/ImsCallSession;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
