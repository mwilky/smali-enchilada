.class Landroid/support/v17/leanback/app/BrowseSupportFragment$3;
.super Ljava/lang/Object;
.source "BrowseSupportFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/BrowseSupportFragment;->startHeadersTransitionInternal(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

.field final synthetic val$withHeaders:Z


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/BrowseSupportFragment;

    .line 1031
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iput-boolean p2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->val$withHeaders:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1034
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->onTransitionPrepare()Z

    .line 1035
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->onTransitionStart()V

    .line 1036
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->createHeadersTransition()V

    .line 1037
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrowseTransitionListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BrowseTransitionListener;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrowseTransitionListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BrowseTransitionListener;

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->val$withHeaders:Z

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$BrowseTransitionListener;->onHeadersTransitionStart(Z)V

    .line 1040
    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->val$withHeaders:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSceneWithHeaders:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mSceneWithoutHeaders:Ljava/lang/Object;

    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersTransition:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->runTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1042
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersBackStackEnabled:Z

    if-eqz v0, :cond_3

    .line 1043
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->val$withHeaders:Z

    if-nez v0, :cond_2

    .line 1044
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mWithHeadersBackStackName:Ljava/lang/String;

    .line 1045
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_1

    .line 1047
    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;

    iget v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment$BackStackListener;->mIndexOfHeadersBackStack:I

    .line 1048
    .local v0, "index":I
    if-ltz v0, :cond_3

    .line 1049
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v1

    .line 1050
    .local v1, "entry":Landroid/support/v4/app/FragmentManager$BackStackEntry;
    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-interface {v1}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getId()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(II)Z

    .line 1055
    .end local v0    # "index":I
    .end local v1    # "entry":Landroid/support/v4/app/FragmentManager$BackStackEntry;
    :cond_3
    :goto_1
    return-void
.end method
