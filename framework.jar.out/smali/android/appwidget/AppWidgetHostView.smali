.class public Landroid/appwidget/AppWidgetHostView;
.super Landroid/widget/FrameLayout;
.source "AppWidgetHostView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/appwidget/AppWidgetHostView$ViewApplyListener;
    }
.end annotation


# static fields
.field private static final INFLATER_FILTER:Landroid/view/LayoutInflater$Filter;

.field private static final KEY_JAILED_ARRAY:Ljava/lang/String; = "jail"

.field static final LOGD:Z = false

.field static final TAG:Ljava/lang/String; = "AppWidgetHostView"

.field static final VIEW_MODE_CONTENT:I = 0x1

.field static final VIEW_MODE_DEFAULT:I = 0x3

.field static final VIEW_MODE_ERROR:I = 0x2

.field static final VIEW_MODE_NOINIT:I


# instance fields
.field mAppWidgetId:I

.field private mAsyncExecutor:Ljava/util/concurrent/Executor;

.field mContext:Landroid/content/Context;

.field mInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field private mLastExecutionSignal:Landroid/os/CancellationSignal;

.field mLayoutId:I

.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field mRemoteContext:Landroid/content/Context;

.field mView:Landroid/view/View;

.field mViewMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/appwidget/-$$Lambda$AppWidgetHostView$AzPWN1sIsRb7M-0Ss1rK2mksT-o;->INSTANCE:Landroid/appwidget/-$$Lambda$AppWidgetHostView$AzPWN1sIsRb7M-0Ss1rK2mksT-o;

    sput-object v0, Landroid/appwidget/AppWidgetHostView;->INFLATER_FILTER:Landroid/view/LayoutInflater$Filter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-direct {p0, p1, v0, v1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->setIsRootNamespace(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 2

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-direct {p0, p1, v0, v1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;II)V

    iput-object p2, p0, Landroid/appwidget/AppWidgetHostView;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    return-void
.end method

.method static synthetic access$000(Landroid/appwidget/AppWidgetHostView;Landroid/view/View;ZLjava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetHostView;->applyContent(Landroid/view/View;ZLjava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$102(Landroid/appwidget/AppWidgetHostView;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;
    .locals 0

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    return-object p1
.end method

.method static synthetic access$200(Landroid/appwidget/AppWidgetHostView;)Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mAsyncExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$300(Landroid/appwidget/AppWidgetHostView;)Landroid/widget/RemoteViews$OnClickHandler;
    .locals 1

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    return-object v0
.end method

.method private applyContent(Landroid/view/View;ZLjava/lang/Exception;)V
    .locals 4

    if-nez p1, :cond_2

    iget v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    const-string v0, "AppWidgetHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error inflating RemoteViews : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getErrorView()Landroid/view/View;

    move-result-object p1

    iput v1, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->prepareView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->addView(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    if-eq v0, p1, :cond_4

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->removeView(Landroid/view/View;)V

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    :cond_4
    return-void
.end method

.method private generateId()I
    .locals 2

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v1, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method private getDefaultPadding()Landroid/graphics/Rect;
    .locals 3

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    invoke-static {p0, v0, p2}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    return-object v1
.end method

.method private static getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    if-eqz p1, :cond_1

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p2, Landroid/graphics/Rect;->left:I

    const v1, 0x1050075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p2, Landroid/graphics/Rect;->right:I

    const v1, 0x1050076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p2, Landroid/graphics/Rect;->top:I

    const v1, 0x1050073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    :cond_1
    return-object p2
.end method

.method private inflateAsync(Landroid/widget/RemoteViews;)V
    .locals 8

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getRemoteContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    iget v1, p0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mAsyncExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;

    const/4 v1, 0x1

    invoke-direct {v6, p0, p1, v0, v1}, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;-><init>(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews;IZ)V

    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/os/CancellationSignal;

    move-result-object v1

    iput-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    if-nez v1, :cond_1

    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mAsyncExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;

    const/4 v1, 0x0

    invoke-direct {v6, p0, p1, v0, v1}, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;-><init>(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews;IZ)V

    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object v2, p1

    move-object v4, p0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/os/CancellationSignal;

    move-result-object v1

    iput-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    :cond_1
    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/Class;)Z
    .locals 1

    const-class v0, Landroid/widget/RemoteViews$RemoteView;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected applyRemoteViews(Landroid/widget/RemoteViews;Z)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v3}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    :cond_0
    if-nez p1, :cond_2

    iget v3, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getDefaultView()Landroid/view/View;

    move-result-object v1

    const/4 v3, -0x1

    iput v3, p0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    iput v4, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    goto :goto_2

    :cond_2
    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mAsyncExecutor:Ljava/util/concurrent/Executor;

    if-eqz v3, :cond_3

    if-eqz p2, :cond_3

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;->inflateAsync(Landroid/widget/RemoteViews;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getRemoteContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    if-nez v1, :cond_4

    iget v4, p0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    if-ne v3, v4, :cond_4

    :try_start_0
    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    iget-object v6, p0, Landroid/appwidget/AppWidgetHostView;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {p1, v4, v5, v6}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v2, v4

    :cond_4
    :goto_0
    if-nez v1, :cond_5

    :try_start_1
    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {p1, v4, p0, v5}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v4

    goto :goto_1

    :catch_1
    move-exception v4

    move-object v2, v4

    :cond_5
    :goto_1
    iput v3, p0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    const/4 v4, 0x1

    iput v4, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    :goto_2
    invoke-direct {p0, v1, v0, v2}, Landroid/appwidget/AppWidgetHostView;->applyContent(Landroid/view/View;ZLjava/lang/Exception;)V

    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->generateId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    const/4 v1, 0x0

    instance-of v2, v0, Landroid/os/Bundle;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/os/Bundle;

    const-string/jumbo v3, "jail"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    :cond_1
    :try_start_0
    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "AppWidgetHostView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to restoreInstanceState for widget id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v5, :cond_2

    const-string/jumbo v5, "null"

    goto :goto_0

    :cond_2
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "jail"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->generateId()I

    move-result v2

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    :goto_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v1
.end method

.method public getAppWidgetId()I
    .locals 1

    iget v0, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    return v0
.end method

.method public getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    return-object v0
.end method

.method protected getDefaultView()Landroid/view/View;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getRemoteContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    invoke-virtual {v3, v2}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    move-object v3, v4

    sget-object v4, Landroid/appwidget/AppWidgetHostView;->INFLATER_FILTER:Landroid/view/LayoutInflater$Filter;

    invoke-virtual {v3, v4}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    iget v5, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v4, v5}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v5

    iget-object v6, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v6, v6, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    const-string v7, "appWidgetCategory"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "appWidgetCategory"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    iget-object v8, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v8, v8, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    if-nez v8, :cond_0

    move v9, v6

    goto :goto_0

    :cond_0
    move v9, v8

    :goto_0
    move v6, v9

    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v3, v6, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    move-object v0, v7

    goto :goto_1

    :cond_2
    const-string v2, "AppWidgetHostView"

    const-string v3, "can\'t inflate defaultView because mInfo is missing"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v2

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_3

    const-string v2, "AppWidgetHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error inflating AppWidget "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getErrorView()Landroid/view/View;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 3

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0x104025c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v1, 0x0

    const/16 v2, 0x7f

    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    return-object v0
.end method

.method protected getRemoteContext()Landroid/content/Context;
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "AppWidgetHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    return-object v1
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AppWidgetHostView"

    const-string v2, "Remote provider threw runtime exception, using error view instead."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/appwidget/AppWidgetHostView;->removeViewInLayout(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getErrorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/appwidget/AppWidgetHostView;->prepareView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Landroid/appwidget/AppWidgetHostView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getMeasuredWidth()I

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0, v1, v2, v4}, Landroid/appwidget/AppWidgetHostView;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v4, p0, Landroid/appwidget/AppWidgetHostView;->mPaddingLeft:I

    add-int/2addr v2, v4

    iget v4, p0, Landroid/appwidget/AppWidgetHostView;->mPaddingRight:I

    add-int/2addr v2, v4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Landroid/appwidget/AppWidgetHostView;->mPaddingTop:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/appwidget/AppWidgetHostView;->mPaddingBottom:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v3, v3, v2, v4}, Landroid/view/View;->layout(IIII)V

    iput-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    const/4 v2, 0x2

    iput v2, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    :goto_0
    return-void
.end method

.method protected prepareView(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    :cond_0
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method resetAppWidget(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 1

    iget v0, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {p0, v0, p1}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 6

    iput p1, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    iput-object p2, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->getDefaultPadding()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/appwidget/AppWidgetProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104066b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v1}, Landroid/appwidget/AppWidgetHostView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    :cond_0
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mAsyncExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public setOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    return-void
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/appwidget/AppWidgetHostView;->applyRemoteViews(Landroid/widget/RemoteViews;Z)V

    return-void
.end method

.method public updateAppWidgetOptions(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget v1, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v0, v1, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidgetOptions(ILandroid/os/Bundle;)V

    return-void
.end method

.method public updateAppWidgetSize(Landroid/os/Bundle;IIII)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIIIZ)V

    return-void
.end method

.method public updateAppWidgetSize(Landroid/os/Bundle;IIIIZ)V
    .locals 14

    move-object v0, p0

    if-nez p1, :cond_0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    invoke-direct {v0}, Landroid/appwidget/AppWidgetHostView;->getDefaultPadding()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v4

    float-to-int v5, v5

    iget v6, v3, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v4

    float-to-int v6, v6

    const/4 v7, 0x0

    if-eqz p6, :cond_1

    move v8, v7

    goto :goto_1

    :cond_1
    move v8, v5

    :goto_1
    sub-int v8, p2, v8

    if-eqz p6, :cond_2

    move v9, v7

    goto :goto_2

    :cond_2
    move v9, v6

    :goto_2
    sub-int v9, p3, v9

    if-eqz p6, :cond_3

    move v10, v7

    goto :goto_3

    :cond_3
    move v10, v5

    :goto_3
    sub-int v10, p4, v10

    if-eqz p6, :cond_4

    goto :goto_4

    :cond_4
    move v7, v6

    :goto_4
    sub-int v7, p5, v7

    iget-object v11, v0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v11

    iget v1, v0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v11, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v1

    const/4 v12, 0x0

    move-object v13, v3

    const-string v3, "appWidgetMinWidth"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v8, v3, :cond_5

    const-string v3, "appWidgetMinHeight"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v9, v3, :cond_5

    const-string v3, "appWidgetMaxWidth"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v10, v3, :cond_5

    const-string v3, "appWidgetMaxHeight"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eq v7, v3, :cond_6

    :cond_5
    const/4 v12, 0x1

    :cond_6
    if-eqz v12, :cond_7

    const-string v3, "appWidgetMinWidth"

    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "appWidgetMinHeight"

    invoke-virtual {v2, v3, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "appWidgetMaxWidth"

    invoke-virtual {v2, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "appWidgetMaxHeight"

    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    :cond_7
    return-void
.end method

.method viewDataChanged(I)V
    .locals 4

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/widget/AdapterView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/BaseAdapter;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    instance-of v3, v1, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    invoke-interface {v3}, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;->deferNotifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method
