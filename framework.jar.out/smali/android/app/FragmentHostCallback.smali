.class public abstract Landroid/app/FragmentHostCallback;
.super Landroid/app/FragmentContainer;
.source "FragmentHostCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/app/FragmentContainer;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAllLoaderManagers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/LoaderManager;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedForLoaderManager:Z

.field final mContext:Landroid/content/Context;

.field final mFragmentManager:Landroid/app/FragmentManagerImpl;

.field private final mHandler:Landroid/os/Handler;

.field private mLoaderManager:Landroid/app/LoaderManagerImpl;

.field private mLoadersStarted:Z

.field private mRetainLoaders:Z

.field final mWindowAnimations:I


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p1, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroid/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1

    invoke-direct {p0}, Landroid/app/FragmentContainer;-><init>()V

    new-instance v0, Landroid/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroid/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    iput-object p1, p0, Landroid/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    iput-object p3, p0, Landroid/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    iput p4, p0, Landroid/app/FragmentHostCallback;->mWindowAnimations:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 2

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, p2}, Landroid/app/FragmentHostCallback;->chooseHandler(Landroid/content/Context;Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1, p3}, Landroid/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method

.method private static chooseHandler(Landroid/content/Context;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 2

    if-nez p1, :cond_0

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, v0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    return-object v1

    :cond_0
    return-object p1
.end method


# virtual methods
.method doLoaderDestroy()V
    .locals 1

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doDestroy()V

    return-void
.end method

.method doLoaderRetain()V
    .locals 1

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doRetain()V

    return-void
.end method

.method doLoaderStart()V
    .locals 4

    iget-boolean v0, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v1}, Landroid/app/LoaderManagerImpl;->doStart()V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Landroid/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    if-nez v1, :cond_2

    const-string v1, "(root)"

    iget-boolean v2, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    move-result-object v1

    iput-object v1, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    :cond_2
    :goto_0
    iput-boolean v0, p0, Landroid/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    return-void
.end method

.method doLoaderStop(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/app/FragmentHostCallback;->mRetainLoaders:Z

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doRetain()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doStop()V

    :goto_0
    return-void
.end method

.method dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getFragmentManagerImpl()Landroid/app/FragmentManagerImpl;
    .locals 1

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;
    .locals 2

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    :cond_0
    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoaderManagerImpl;

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    new-instance v1, Landroid/app/LoaderManagerImpl;

    invoke-direct {v1, p1, p0, p2}, Landroid/app/LoaderManagerImpl;-><init>(Ljava/lang/String;Landroid/app/FragmentHostCallback;Z)V

    move-object v0, v1

    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Landroid/app/LoaderManagerImpl;->mStarted:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doStart()V

    :cond_2
    :goto_0
    return-object v0
.end method

.method getLoaderManagerImpl()Landroid/app/LoaderManagerImpl;
    .locals 3

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    return-object v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    const-string v1, "(root)"

    iget-boolean v2, p0, Landroid/app/FragmentHostCallback;->mLoadersStarted:Z

    invoke-virtual {p0, v1, v2, v0}, Landroid/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    return-object v0
.end method

.method getRetainLoaders()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/FragmentHostCallback;->mRetainLoaders:Z

    return v0
.end method

.method inactivateFragment(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doDestroy()V

    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 0

    return-void
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onGetHost()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public onGetWindowAnimations()I
    .locals 1

    iget v0, p0, Landroid/app/FragmentHostCallback;->mWindowAnimations:I

    return v0
.end method

.method public onHasView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onHasWindowAnimations()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onInvalidateOptionsMenu()V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsFromFragment(Landroid/app/Fragment;[Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onShouldSaveFragmentState(Landroid/app/Fragment;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onStartActivityAsUserFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 2

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2, p5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onStartActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onStartIntentSenderFromFragment(Landroid/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    const/4 v0, -0x1

    move v1, p3

    if-ne v1, v0, :cond_0

    move-object v0, p0

    iget-object v2, v0, Landroid/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    move-object v3, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v2 .. v8}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void

    :cond_0
    move-object v0, p0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Starting intent sender with a requestCode requires a FragmentActivity host"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onUseFragmentManagerInflaterFactory()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method reportLoaderStart()V
    .locals 4

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    new-array v1, v0, [Landroid/app/LoaderManagerImpl;

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_0

    iget-object v3, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LoaderManagerImpl;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/app/LoaderManagerImpl;->finishRetain()V

    invoke-virtual {v3}, Landroid/app/LoaderManagerImpl;->doReportStart()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method restoreLoaderNonConfig(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/LoaderManager;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/LoaderManagerImpl;

    invoke-virtual {v2, p0}, Landroid/app/LoaderManagerImpl;->updateHostController(Landroid/app/FragmentHostCallback;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    return-void
.end method

.method retainLoaderNonConfig()Landroid/util/ArrayMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/LoaderManager;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    new-array v2, v1, [Landroid/app/LoaderManagerImpl;

    add-int/lit8 v3, v1, -0x1

    :goto_0
    if-ltz v3, :cond_0

    iget-object v4, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/LoaderManagerImpl;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/FragmentHostCallback;->getRetainLoaders()Z

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_4

    aget-object v5, v2, v4

    iget-boolean v6, v5, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    if-nez v6, :cond_2

    if-eqz v3, :cond_2

    iget-boolean v6, v5, Landroid/app/LoaderManagerImpl;->mStarted:Z

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroid/app/LoaderManagerImpl;->doStart()V

    :cond_1
    invoke-virtual {v5}, Landroid/app/LoaderManagerImpl;->doRetain()V

    :cond_2
    iget-boolean v6, v5, Landroid/app/LoaderManagerImpl;->mRetaining:Z

    if-eqz v6, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Landroid/app/LoaderManagerImpl;->doDestroy()V

    iget-object v6, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    iget-object v7, v5, Landroid/app/LoaderManagerImpl;->mWho:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    iget-object v1, p0, Landroid/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/util/ArrayMap;

    return-object v1

    :cond_5
    const/4 v1, 0x0

    return-object v1
.end method
