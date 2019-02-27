.class public Lcom/android/internal/widget/MessagingMessageState;
.super Ljava/lang/Object;
.source "MessagingMessageState.java"


# instance fields
.field private mGroup:Lcom/android/internal/widget/MessagingGroup;

.field private final mHostView:Landroid/view/View;

.field private mIsHidingAnimated:Z

.field private mIsHistoric:Z

.field private mMessage:Landroid/app/Notification$MessagingStyle$Message;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/MessagingMessageState;->mHostView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getGroup()Lcom/android/internal/widget/MessagingGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/MessagingMessageState;->mGroup:Lcom/android/internal/widget/MessagingGroup;

    return-object v0
.end method

.method public getHostView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/MessagingMessageState;->mHostView:Landroid/view/View;

    return-object v0
.end method

.method public getMessage()Landroid/app/Notification$MessagingStyle$Message;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/MessagingMessageState;->mMessage:Landroid/app/Notification$MessagingStyle$Message;

    return-object v0
.end method

.method public isHidingAnimated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingMessageState;->mIsHidingAnimated:Z

    return v0
.end method

.method public recycle()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/MessagingMessageState;->mHostView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/internal/widget/MessagingMessageState;->mHostView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/internal/widget/MessagingMessageState;->mHostView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->recycle(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingMessageState;->mIsHidingAnimated:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingMessageState;->mIsHistoric:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MessagingMessageState;->mGroup:Lcom/android/internal/widget/MessagingGroup;

    iput-object v0, p0, Lcom/android/internal/widget/MessagingMessageState;->mMessage:Landroid/app/Notification$MessagingStyle$Message;

    return-void
.end method

.method public setGroup(Lcom/android/internal/widget/MessagingGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/MessagingMessageState;->mGroup:Lcom/android/internal/widget/MessagingGroup;

    return-void
.end method

.method public setIsHidingAnimated(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/MessagingMessageState;->mHostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingMessageState;->mIsHidingAnimated:Z

    iget-object v1, p0, Lcom/android/internal/widget/MessagingMessageState;->mHostView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method public setIsHistoric(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingMessageState;->mIsHistoric:Z

    return-void
.end method

.method public setMessage(Landroid/app/Notification$MessagingStyle$Message;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/MessagingMessageState;->mMessage:Landroid/app/Notification$MessagingStyle$Message;

    return-void
.end method
