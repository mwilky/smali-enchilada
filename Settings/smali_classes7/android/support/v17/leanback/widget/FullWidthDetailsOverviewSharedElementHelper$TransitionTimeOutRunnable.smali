.class Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$TransitionTimeOutRunnable;
.super Ljava/lang/Object;
.source "FullWidthDetailsOverviewSharedElementHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransitionTimeOutRunnable"
.end annotation


# instance fields
.field mHelperRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;)V
    .locals 1
    .param p1, "helper"    # Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$TransitionTimeOutRunnable;->mHelperRef:Ljava/lang/ref/WeakReference;

    .line 51
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 55
    iget-object v0, p0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper$TransitionTimeOutRunnable;->mHelperRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;

    .line 56
    .local v0, "helper":Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;
    if-nez v0, :cond_0

    .line 57
    return-void

    .line 62
    :cond_0
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewSharedElementHelper;->startPostponedEnterTransition()V

    .line 63
    return-void
.end method
