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

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 173
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 175
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->layout:Landroid/widget/FrameLayout;

    .line 176
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/PlatLogoActivity;->setContentView(Landroid/view/View;)V

    .line 178
    new-instance v0, Lcom/android/internal/app/PlatLogoActivity$PBackground;

    invoke-direct {v0, p0}, Lcom/android/internal/app/PlatLogoActivity$PBackground;-><init>(Lcom/android/internal/app/PlatLogoActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->bg:Lcom/android/internal/app/PlatLogoActivity$PBackground;

    .line 179
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->layout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity;->bg:Lcom/android/internal/app/PlatLogoActivity$PBackground;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 181
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->layout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/internal/app/PlatLogoActivity$1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/PlatLogoActivity$1;-><init>(Lcom/android/internal/app/PlatLogoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 200
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 204
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 206
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->bg:Lcom/android/internal/app/PlatLogoActivity$PBackground;

    invoke-virtual {v0}, Lcom/android/internal/app/PlatLogoActivity$PBackground;->randomizePalette()V

    .line 208
    new-instance v0, Landroid/animation/TimeAnimator;

    invoke-direct {v0}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->anim:Landroid/animation/TimeAnimator;

    .line 209
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->anim:Landroid/animation/TimeAnimator;

    new-instance v1, Lcom/android/internal/app/PlatLogoActivity$2;

    invoke-direct {v1, p0}, Lcom/android/internal/app/PlatLogoActivity$2;-><init>(Lcom/android/internal/app/PlatLogoActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 218
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->anim:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->start()V

    .line 219
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->anim:Landroid/animation/TimeAnimator;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->anim:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->anim:Landroid/animation/TimeAnimator;

    .line 227
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 228
    return-void
.end method
