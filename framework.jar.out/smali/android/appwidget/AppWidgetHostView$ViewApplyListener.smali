.class Landroid/appwidget/AppWidgetHostView$ViewApplyListener;
.super Ljava/lang/Object;
.source "AppWidgetHostView.java"

# interfaces
.implements Landroid/widget/RemoteViews$OnViewAppliedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewApplyListener"
.end annotation


# instance fields
.field private final mIsReapply:Z

.field private final mLayoutId:I

.field private final mViews:Landroid/widget/RemoteViews;

.field final synthetic this$0:Landroid/appwidget/AppWidgetHostView;


# direct methods
.method public constructor <init>(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews;IZ)V
    .locals 0

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mViews:Landroid/widget/RemoteViews;

    iput p3, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mLayoutId:I

    iput-boolean p4, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mIsReapply:Z

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 10

    iget-boolean v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mIsReapply:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mViews:Landroid/widget/RemoteViews;

    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    iget-object v3, v3, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-static {v5}, Landroid/appwidget/AppWidgetHostView;->access$200(Landroid/appwidget/AppWidgetHostView;)Ljava/util/concurrent/Executor;

    move-result-object v5

    new-instance v6, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;

    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    iget-object v8, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mViews:Landroid/widget/RemoteViews;

    iget v9, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mLayoutId:I

    invoke-direct {v6, v7, v8, v9, v1}, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;-><init>(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews;IZ)V

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    invoke-static {v1}, Landroid/appwidget/AppWidgetHostView;->access$300(Landroid/appwidget/AppWidgetHostView;)Landroid/widget/RemoteViews$OnClickHandler;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/os/CancellationSignal;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/appwidget/AppWidgetHostView;->access$102(Landroid/appwidget/AppWidgetHostView;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Landroid/appwidget/AppWidgetHostView;->access$000(Landroid/appwidget/AppWidgetHostView;Landroid/view/View;ZLjava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public onViewApplied(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    iget v1, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mLayoutId:I

    iput v1, v0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    const/4 v1, 0x1

    iput v1, v0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    iget-boolean v1, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mIsReapply:Z

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Landroid/appwidget/AppWidgetHostView;->access$000(Landroid/appwidget/AppWidgetHostView;Landroid/view/View;ZLjava/lang/Exception;)V

    return-void
.end method
