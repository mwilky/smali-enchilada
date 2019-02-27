.class public Lcom/android/internal/app/PlatLogoActivity;
.super Landroid/app/Activity;
.source "PlatLogoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/PlatLogoActivity$PBackground;
    }
.end annotation


# instance fields
.field anim:Landroid/animation/TimeAnimator;

.field bg:Lcom/android/internal/app/PlatLogoActivity$PBackground;

.field layout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->layout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/PlatLogoActivity;->setContentView(Landroid/view/View;)V

    new-instance v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;

    invoke-direct {v0, p0}, Lcom/android/internal/app/PlatLogoActivity$PBackground;-><init>(Lcom/android/internal/app/PlatLogoActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->bg:Lcom/android/internal/app/PlatLogoActivity$PBackground;

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->layout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity;->bg:Lcom/android/internal/app/PlatLogoActivity$PBackground;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->layout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/internal/app/PlatLogoActivity$1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/PlatLogoActivity$1;-><init>(Lcom/android/internal/app/PlatLogoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->bg:Lcom/android/internal/app/PlatLogoActivity$PBackground;

    invoke-virtual {v0}, Lcom/android/internal/app/PlatLogoActivity$PBackground;->randomizePalette()V

    new-instance v0, Landroid/animation/TimeAnimator;

    invoke-direct {v0}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->anim:Landroid/animation/TimeAnimator;

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->anim:Landroid/animation/TimeAnimator;

    new-instance v1, Lcom/android/internal/app/PlatLogoActivity$2;

    invoke-direct {v1, p0}, Lcom/android/internal/app/PlatLogoActivity$2;-><init>(Lcom/android/internal/app/PlatLogoActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->anim:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->start()V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->anim:Landroid/animation/TimeAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->anim:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->anim:Landroid/animation/TimeAnimator;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
