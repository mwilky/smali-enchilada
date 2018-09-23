.class Landroid/support/v17/leanback/app/OnboardingFragment$2;
.super Ljava/lang/Object;
.source "OnboardingFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/OnboardingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/OnboardingFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/OnboardingFragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/OnboardingFragment;->mLogoAnimationFinished:Z

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    if-eq p2, v1, :cond_0

    move v2, v3

    nop

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    if-eq p2, v1, :cond_5

    packed-switch p2, :pswitch_data_0

    return v2

    :pswitch_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/OnboardingFragment;->mIsLtr:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/OnboardingFragment;->moveToNextPage()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/OnboardingFragment;->moveToPreviousPage()V

    :goto_0
    return v3

    :pswitch_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/OnboardingFragment;->mIsLtr:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/OnboardingFragment;->moveToPreviousPage()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/OnboardingFragment;->moveToNextPage()V

    :goto_1
    return v3

    :cond_5
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    iget v0, v0, Landroid/support/v17/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    if-nez v0, :cond_6

    return v2

    :cond_6
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/OnboardingFragment;->moveToPreviousPage()V

    return v3

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
