.class public interface abstract Lcom/android/internal/widget/MessagingMessage;
.super Ljava/lang/Object;
.source "MessagingMessage.java"

# interfaces
.implements Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;


# static fields
.field public static final IMAGE_MIME_TYPE_PREFIX:Ljava/lang/String; = "image/"


# direct methods
.method public static createMessage(Lcom/android/internal/widget/MessagingLayout;Landroid/app/Notification$MessagingStyle$Message;)Lcom/android/internal/widget/MessagingMessage;
    .locals 1

    invoke-static {p1}, Lcom/android/internal/widget/MessagingMessage;->hasImage(Landroid/app/Notification$MessagingStyle$Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/internal/widget/MessagingImageMessage;->createMessage(Lcom/android/internal/widget/MessagingLayout;Landroid/app/Notification$MessagingStyle$Message;)Lcom/android/internal/widget/MessagingMessage;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/widget/MessagingTextMessage;->createMessage(Lcom/android/internal/widget/MessagingLayout;Landroid/app/Notification$MessagingStyle$Message;)Lcom/android/internal/widget/MessagingMessage;

    move-result-object v0

    return-object v0
.end method

.method public static dropCache()V
    .locals 0

    invoke-static {}, Lcom/android/internal/widget/MessagingTextMessage;->dropCache()V

    invoke-static {}, Lcom/android/internal/widget/MessagingImageMessage;->dropCache()V

    return-void
.end method

.method public static hasImage(Landroid/app/Notification$MessagingStyle$Message;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$hideAnimated$0(Lcom/android/internal/widget/MessagingMessage;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/internal/widget/MessagingMessage;->setIsHidingAnimated(Z)V

    return-void
.end method


# virtual methods
.method public getGroup()Lcom/android/internal/widget/MessagingGroup;
    .locals 1

    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingMessageState;->getGroup()Lcom/android/internal/widget/MessagingGroup;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Landroid/app/Notification$MessagingStyle$Message;
    .locals 1

    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingMessageState;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    return-object v0
.end method

.method public abstract getState()Lcom/android/internal/widget/MessagingMessageState;
.end method

.method public getView()Landroid/view/View;
    .locals 1

    move-object v0, p0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public abstract getVisibility()I
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hideAnimated()V
    .locals 3

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/internal/widget/MessagingMessage;->setIsHidingAnimated(Z)V

    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getGroup()Lcom/android/internal/widget/MessagingGroup;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/internal/widget/-$$Lambda$MessagingMessage$goi5oiwdlMBbUvfJzNl7fGbZ-K0;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/-$$Lambda$MessagingMessage$goi5oiwdlMBbUvfJzNl7fGbZ-K0;-><init>(Lcom/android/internal/widget/MessagingMessage;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/MessagingGroup;->performRemoveAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public isHidingAnimated()Z
    .locals 1

    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingMessageState;->isHidingAnimated()Z

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 1

    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingMessageState;->recycle()V

    return-void
.end method

.method public removeMessage()V
    .locals 1

    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getGroup()Lcom/android/internal/widget/MessagingGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/MessagingGroup;->removeMessage(Lcom/android/internal/widget/MessagingMessage;)V

    return-void
.end method

.method public sameAs(Landroid/app/Notification$MessagingStyle$Message;)Z
    .locals 7

    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->isRemoteInputHistory()Z

    move-result v1

    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->isRemoteInputHistory()Z

    move-result v3

    const/4 v4, 0x1

    if-eq v1, v3, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->getTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    return v4
.end method

.method public sameAs(Lcom/android/internal/widget/MessagingMessage;)Z
    .locals 1

    invoke-interface {p1}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/internal/widget/MessagingMessage;->sameAs(Landroid/app/Notification$MessagingStyle$Message;)Z

    move-result v0

    return v0
.end method

.method public setColor(I)V
    .locals 0

    return-void
.end method

.method public setIsHidingAnimated(Z)V
    .locals 1

    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MessagingMessageState;->setIsHidingAnimated(Z)V

    return-void
.end method

.method public setIsHistoric(Z)V
    .locals 1

    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MessagingMessageState;->setIsHistoric(Z)V

    return-void
.end method

.method public setMessage(Landroid/app/Notification$MessagingStyle$Message;)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MessagingMessageState;->setMessage(Landroid/app/Notification$MessagingStyle$Message;)V

    const/4 v0, 0x1

    return v0
.end method

.method public setMessagingGroup(Lcom/android/internal/widget/MessagingGroup;)V
    .locals 1

    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MessagingMessageState;->setGroup(Lcom/android/internal/widget/MessagingGroup;)V

    return-void
.end method

.method public abstract setVisibility(I)V
.end method
