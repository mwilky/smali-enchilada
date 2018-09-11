.class Landroid/support/v17/leanback/app/BrowseFragment$3;
.super Ljava/lang/Object;
.source "BrowseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/BrowseFragment;->startHeadersTransitionInternal(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/BrowseFragment;

.field final synthetic val$withHeaders:Z


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BrowseFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/BrowseFragment;

    .line 1053
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iput-boolean p2, p0, Landroid/support/v17/leanback/app/BrowseFragment$3;->val$withHeaders:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1056
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersFragment;->onTransitionPrepare()Z

    .line 1057
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersFragment;->onTransitionStart()V

    .line 1058
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseFragment;->createHeadersTransition()V

    .line 1059
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mBrowseTransitionListener:Landroid/support/v17/leanback/app/BrowseFragment$BrowseTransitionListener;

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mBrowseTransitionListener:Landroid/support/v17/leanback/app/BrowseFragment$BrowseTransitionListener;

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrowseFragment$3;->val$withHeaders:Z

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseFragment$BrowseTransitionListener;->onHeadersTransitionStart(Z)V

    .line 1062
    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$3;->val$withHeaders:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mSceneWithHeaders:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mSceneWithoutHeaders:Ljava/lang/Object;

    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersTransition:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->runTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1064
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersBackStackEnabled:Z

    if-eqz v0, :cond_3

    .line 1065
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$3;->val$withHeaders:Z

    if-nez v0, :cond_2

    .line 1066
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BrowseFragment;->mWithHeadersBackStackName:Ljava/lang/String;

    .line 1067
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_1

    .line 1069
    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mBackStackChangedListener:Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;

    iget v0, v0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->mIndexOfHeadersBackStack:I

    .line 1070
    .local v0, "index":I
    if-ltz v0, :cond_3

    .line 1071
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/BrowseFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v1

    .line 1072
    .local v1, "entry":Landroid/app/FragmentManager$BackStackEntry;
    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseFragment$3;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/BrowseFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-interface {v1}, Landroid/app/FragmentManager$BackStackEntry;->getId()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentManager;->popBackStackImmediate(II)Z

    .line 1077
    .end local v0    # "index":I
    .end local v1    # "entry":Landroid/app/FragmentManager$BackStackEntry;
    :cond_3
    :goto_1
    return-void
.end method
