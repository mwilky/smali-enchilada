.class Landroid/widget/RemoteViews$AsyncApplyTask;
.super Landroid/os/AsyncTask;
.source "RemoteViews.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncApplyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/widget/RemoteViews$ViewTree;",
        ">;",
        "Landroid/os/CancellationSignal$OnCancelListener;"
    }
.end annotation


# instance fields
.field private mActions:[Landroid/widget/RemoteViews$Action;

.field final mContext:Landroid/content/Context;

.field private mError:Ljava/lang/Exception;

.field final mHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field final mListener:Landroid/widget/RemoteViews$OnViewAppliedListener;

.field final mParent:Landroid/view/ViewGroup;

.field final mRV:Landroid/widget/RemoteViews;

.field private mResult:Landroid/view/View;

.field private mTree:Landroid/widget/RemoteViews$ViewTree;

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method private constructor <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->this$0:Landroid/widget/RemoteViews;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mRV:Landroid/widget/RemoteViews;

    iput-object p3, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mParent:Landroid/view/ViewGroup;

    iput-object p4, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mContext:Landroid/content/Context;

    iput-object p5, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mListener:Landroid/widget/RemoteViews$OnViewAppliedListener;

    iput-object p6, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mHandler:Landroid/widget/RemoteViews$OnClickHandler;

    iput-object p7, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mResult:Landroid/view/View;

    invoke-static {p4, p6}, Landroid/widget/RemoteViews;->access$2000(Landroid/content/Context;Landroid/widget/RemoteViews$OnClickHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;Landroid/view/View;Landroid/widget/RemoteViews$1;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroid/widget/RemoteViews$AsyncApplyTask;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/widget/RemoteViews$AsyncApplyTask;)Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/RemoteViews$AsyncApplyTask;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mResult:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/widget/RemoteViews$ViewTree;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mResult:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->this$0:Landroid/widget/RemoteViews;

    iget-object v2, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mRV:Landroid/widget/RemoteViews;

    iget-object v4, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mParent:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v4}, Landroid/widget/RemoteViews;->access$2100(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mResult:Landroid/view/View;

    :cond_0
    new-instance v1, Landroid/widget/RemoteViews$ViewTree;

    iget-object v2, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mResult:Landroid/view/View;

    invoke-direct {v1, v2, v0}, Landroid/widget/RemoteViews$ViewTree;-><init>(Landroid/view/View;Landroid/widget/RemoteViews$1;)V

    iput-object v1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mTree:Landroid/widget/RemoteViews$ViewTree;

    iget-object v1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mRV:Landroid/widget/RemoteViews;

    invoke-static {v1}, Landroid/widget/RemoteViews;->access$2300(Landroid/widget/RemoteViews;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mRV:Landroid/widget/RemoteViews;

    invoke-static {v1}, Landroid/widget/RemoteViews;->access$2300(Landroid/widget/RemoteViews;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Landroid/widget/RemoteViews$Action;

    iput-object v2, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mActions:[Landroid/widget/RemoteViews$Action;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/RemoteViews$AsyncApplyTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mActions:[Landroid/widget/RemoteViews$Action;

    iget-object v4, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mRV:Landroid/widget/RemoteViews;

    invoke-static {v4}, Landroid/widget/RemoteViews;->access$2300(Landroid/widget/RemoteViews;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews$Action;

    iget-object v5, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mTree:Landroid/widget/RemoteViews$ViewTree;

    iget-object v6, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mParent:Landroid/view/ViewGroup;

    iget-object v7, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/RemoteViews$Action;->initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViews$Action;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    iput-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mActions:[Landroid/widget/RemoteViews$Action;

    :goto_1
    iget-object v1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mTree:Landroid/widget/RemoteViews$ViewTree;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    iput-object v1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/widget/RemoteViews$AsyncApplyTask;->doInBackground([Ljava/lang/Void;)Landroid/widget/RemoteViews$ViewTree;

    move-result-object p1

    return-object p1
.end method

.method public onCancel()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RemoteViews$AsyncApplyTask;->cancel(Z)Z

    return-void
.end method

.method protected onPostExecute(Landroid/widget/RemoteViews$ViewTree;)V
    .locals 7

    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mActions:[Landroid/widget/RemoteViews$Action;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mHandler:Landroid/widget/RemoteViews$OnClickHandler;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/widget/RemoteViews;->access$2400()Landroid/widget/RemoteViews$OnClickHandler;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mHandler:Landroid/widget/RemoteViews$OnClickHandler;

    :goto_0
    iget-object v1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mActions:[Landroid/widget/RemoteViews$Action;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-static {p1}, Landroid/widget/RemoteViews$ViewTree;->access$1000(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v6, v0}, Landroid/widget/RemoteViews$Action;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    goto :goto_2

    :catch_0
    move-exception v0

    iput-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    :cond_2
    :goto_2
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mListener:Landroid/widget/RemoteViews$OnViewAppliedListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mListener:Landroid/widget/RemoteViews$OnViewAppliedListener;

    iget-object v1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Landroid/widget/RemoteViews$OnViewAppliedListener;->onError(Ljava/lang/Exception;)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mListener:Landroid/widget/RemoteViews$OnViewAppliedListener;

    invoke-static {p1}, Landroid/widget/RemoteViews$ViewTree;->access$1000(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/widget/RemoteViews$OnViewAppliedListener;->onViewApplied(Landroid/view/View;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    instance-of v0, v0, Landroid/widget/RemoteViews$ActionException;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    check-cast v0, Landroid/widget/RemoteViews$ActionException;

    throw v0

    :cond_5
    new-instance v0, Landroid/widget/RemoteViews$ActionException;

    iget-object v1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_6
    :goto_3
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/widget/RemoteViews$ViewTree;

    invoke-virtual {p0, p1}, Landroid/widget/RemoteViews$AsyncApplyTask;->onPostExecute(Landroid/widget/RemoteViews$ViewTree;)V

    return-void
.end method
