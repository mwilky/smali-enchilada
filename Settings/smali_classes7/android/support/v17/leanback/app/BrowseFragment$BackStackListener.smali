.class final Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;
.super Ljava/lang/Object;
.source "BrowseFragment.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BrowseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BackStackListener"
.end annotation


# instance fields
.field mIndexOfHeadersBackStack:I

.field mLastEntryCount:I

.field final synthetic this$0:Landroid/support/v17/leanback/app/BrowseFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BrowseFragment;)V
    .locals 1
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/BrowseFragment;

    .line 151
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    invoke-virtual {p1}, Landroid/support/v17/leanback/app/BrowseFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->mLastEntryCount:I

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->mIndexOfHeadersBackStack:I

    .line 154
    return-void
.end method


# virtual methods
.method load(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 157
    if-eqz p1, :cond_1

    .line 158
    const-string v0, "headerStackIndex"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->mIndexOfHeadersBackStack:I

    .line 159
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget v2, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->mIndexOfHeadersBackStack:I

    if-ne v2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    goto :goto_1

    .line 161
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    if-nez v0, :cond_2

    .line 162
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BrowseFragment;->mWithHeadersBackStackName:Ljava/lang/String;

    .line 163
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 166
    :cond_2
    :goto_1
    return-void
.end method

.method public onBackStackChanged()V
    .locals 4

    .line 175
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 176
    const-string v0, "BrowseFragment"

    const-string v1, "getFragmentManager() is null, stack:"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 182
    .local v0, "count":I
    iget v1, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->mLastEntryCount:I

    if-le v0, v1, :cond_2

    .line 183
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/BrowseFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v1

    .line 184
    .local v1, "entry":Landroid/app/FragmentManager$BackStackEntry;
    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/BrowseFragment;->mWithHeadersBackStackName:Ljava/lang/String;

    invoke-interface {v1}, Landroid/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->mIndexOfHeadersBackStack:I

    .line 187
    .end local v1    # "entry":Landroid/app/FragmentManager$BackStackEntry;
    :cond_1
    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->mLastEntryCount:I

    if-ge v0, v1, :cond_4

    .line 189
    iget v1, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->mIndexOfHeadersBackStack:I

    if-lt v1, v0, :cond_4

    .line 190
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/BrowseFragment;->isHeadersDataReady()Z

    move-result v1

    if-nez v1, :cond_3

    .line 193
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/BrowseFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/BrowseFragment;->mWithHeadersBackStackName:Ljava/lang/String;

    .line 194
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 195
    return-void

    .line 197
    :cond_3
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->mIndexOfHeadersBackStack:I

    .line 198
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-boolean v1, v1, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    if-nez v1, :cond_4

    .line 199
    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/app/BrowseFragment;->startHeadersTransitionInternal(Z)V

    .line 203
    :cond_4
    :goto_0
    iput v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->mLastEntryCount:I

    .line 204
    return-void
.end method

.method save(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 169
    const-string v0, "headerStackIndex"

    iget v1, p0, Landroid/support/v17/leanback/app/BrowseFragment$BackStackListener;->mIndexOfHeadersBackStack:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    return-void
.end method
