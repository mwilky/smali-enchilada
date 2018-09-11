.class Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;
.super Ljava/lang/Object;
.source "BrowseSupportFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BrowseSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetSelectionRunnable"
.end annotation


# static fields
.field static final TYPE_INTERNAL_SYNC:I = 0x0

.field static final TYPE_INVALID:I = -0x1

.field static final TYPE_USER_REQUEST:I = 0x1


# instance fields
.field private mPosition:I

.field private mSmooth:Z

.field private mType:I

.field final synthetic this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V
    .locals 0

    .line 234
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->reset()V

    .line 236
    return-void
.end method

.method private reset()V
    .locals 1

    .line 260
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->mPosition:I

    .line 261
    iput v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->mType:I

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->mSmooth:Z

    .line 263
    return-void
.end method


# virtual methods
.method post(IIZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "type"    # I
    .param p3, "smooth"    # Z

    .line 244
    iget v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->mType:I

    if-lt p2, v0, :cond_0

    .line 245
    iput p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->mPosition:I

    .line 246
    iput p2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->mType:I

    .line 247
    iput-boolean p3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->mSmooth:Z

    .line 248
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 249
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrowseFrame:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 251
    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    .line 255
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->mPosition:I

    iget-boolean v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->mSmooth:Z

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->setSelection(IZ)V

    .line 256
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$SetSelectionRunnable;->reset()V

    .line 257
    return-void
.end method
