.class final Lcom/android/server/autofill/ui/FillUi;
.super Ljava/lang/Object;
.source "FillUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;,
        Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;,
        Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;,
        Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;,
        Lcom/android/server/autofill/ui/FillUi$ViewItem;,
        Lcom/android/server/autofill/ui/FillUi$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FillUi"

.field private static final THEME_ID:I = 0x10303b9

.field private static final sTempTypedValue:Landroid/util/TypedValue;


# instance fields
.field private final mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

.field private mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

.field private final mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

.field private mContentHeight:I

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mFilterText:Ljava/lang/String;

.field private final mFooter:Landroid/view/View;

.field private final mFullScreen:Z

.field private final mHeader:Landroid/view/View;

.field private final mListView:Landroid/widget/ListView;

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mVisibleDatasetsMaxCount:I

.field private final mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

.field private final mWindowPresenter:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Lcom/android/server/autofill/ui/FillUi;->sTempTypedValue:Landroid/util/TypedValue;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Lcom/android/server/autofill/ui/OverlayControl;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/android/server/autofill/ui/FillUi$Callback;)V
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    new-instance v0, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;-><init>(Lcom/android/server/autofill/ui/FillUi;Lcom/android/server/autofill/ui/FillUi$1;)V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mWindowPresenter:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    move-object/from16 v5, p8

    iput-object v5, v1, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-static/range {p1 .. p1}, Lcom/android/server/autofill/ui/FillUi;->isFullScreen(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v6, 0x10303b9

    move-object/from16 v7, p1

    invoke-direct {v0, v7, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getHeader()Landroid/widget/RemoteViews;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getFooter()Landroid/widget/RemoteViews;

    move-result-object v10

    iget-boolean v0, v1, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    if-eqz v0, :cond_0

    const v0, 0x109003d

    invoke-virtual {v8, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_0
    goto :goto_2

    :cond_0
    if-nez v9, :cond_2

    if-eqz v10, :cond_1

    goto :goto_1

    :cond_1
    const v0, 0x109003c

    invoke-virtual {v8, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_2
    :goto_1
    const v0, 0x109003e

    invoke-virtual {v8, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :goto_2
    move-object v11, v0

    const v0, 0x10201bf

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    const/4 v0, 0x1

    const/4 v13, 0x0

    if-eqz v12, :cond_3

    iget-object v14, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    const v15, 0x10400d7

    new-array v6, v0, [Ljava/lang/Object;

    aput-object p6, v6, v13

    invoke-virtual {v14, v15, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const v6, 0x10201bc

    invoke-virtual {v11, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_4

    move-object/from16 v14, p7

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_4
    move-object/from16 v14, p7

    :goto_3
    iget-boolean v15, v1, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    if-eqz v15, :cond_5

    iget-object v15, v1, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    iget-object v13, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13, v15}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const/4 v13, -0x1

    iput v13, v1, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    iget v13, v15, Landroid/graphics/Point;->y:I

    div-int/lit8 v13, v13, 0x2

    iput v13, v1, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    sget-boolean v13, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v13, :cond_5

    const-string v13, "FillUi"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initialized fillscreen LayoutParams "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v0, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$FY016gv4LQ5AA6yOkKTH3EM5zaM;

    invoke-direct {v0, v1}, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$FY016gv4LQ5AA6yOkKTH3EM5zaM;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addOnUnhandledKeyEventListener(Landroid/view/View$OnUnhandledKeyEventListener;)V

    sget v0, Lcom/android/server/autofill/Helper;->sVisibleDatasetsMaxCount:I

    if-lez v0, :cond_6

    sget v0, Lcom/android/server/autofill/Helper;->sVisibleDatasetsMaxCount:I

    iput v0, v1, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_7

    const-string v0, "FillUi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "overriding maximum visible datasets to "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10e0004

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    :cond_7
    :goto_4
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$1;

    invoke-direct {v0, v1}, Lcom/android/server/autofill/ui/FillUi$1;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    move-object v4, v0

    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v13, 0x0

    iput-object v13, v1, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    iput-object v13, v1, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    iput-object v13, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    iput-object v13, v1, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    const v0, 0x10201be

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v13, v0

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getPresentation()Landroid/widget/RemoteViews;

    move-result-object v0

    const v15, 0x10303b9

    invoke-virtual {v0, v15}, Landroid/widget/RemoteViews;->setApplyTheme(I)V

    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getPresentation()Landroid/widget/RemoteViews;

    move-result-object v0

    iget-object v15, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v15, v11, v4}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Landroid/view/ViewGroup;->setFocusable(Z)V

    new-instance v15, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$Vch3vycmBdfZEFnJyIbU-GchQzA;

    move-object/from16 v18, v6

    move-object/from16 v6, p2

    invoke-direct {v15, v1, v6}, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$Vch3vycmBdfZEFnJyIbU-GchQzA;-><init>(Lcom/android/server/autofill/ui/FillUi;Landroid/service/autofill/FillResponse;)V

    invoke-virtual {v13, v15}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v15, v1, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    if-nez v15, :cond_9

    iget-object v15, v1, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    iget-object v7, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-static {v7, v15}, Lcom/android/server/autofill/ui/FillUi;->resolveMaxWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move-object/from16 v19, v8

    iget-boolean v8, v1, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    move-object/from16 v20, v12

    const/4 v12, -0x2

    if-eqz v8, :cond_8

    iget v8, v15, Landroid/graphics/Point;->x:I

    goto :goto_5

    :cond_8
    move v8, v12

    :goto_5
    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v12, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v7, v15, Landroid/graphics/Point;->x:I

    const/high16 v8, -0x80000000

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget v12, v15, Landroid/graphics/Point;->y:I

    invoke-static {v12, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v11, v7, v8}, Landroid/view/ViewGroup;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    iput v12, v1, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    iput v12, v1, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    goto :goto_6

    :cond_9
    move-object/from16 v19, v8

    move-object/from16 v20, v12

    :goto_6
    new-instance v7, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-direct {v7, v1, v11, v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;-><init>(Lcom/android/server/autofill/ui/FillUi;Landroid/view/View;Lcom/android/server/autofill/ui/OverlayControl;)V

    iput-object v7, v1, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/ui/FillUi;->requestShowFillUi()V

    nop

    move-object/from16 v29, v4

    goto/16 :goto_12

    :catch_0
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v19, v8

    move-object/from16 v20, v12

    move-object/from16 v6, p2

    invoke-interface/range {p8 .. p8}, Lcom/android/server/autofill/ui/FillUi$Callback;->onCanceled()V

    const-string v7, "FillUi"

    const-string v8, "Error inflating remote views"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v7, 0x0

    iput-object v7, v1, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    return-void

    :cond_a
    move-object/from16 v18, v6

    move-object/from16 v19, v8

    move-object/from16 v20, v12

    move-object/from16 v6, p2

    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_b

    const-string v0, "FillUi"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Number datasets: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " max visible: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v0, 0x0

    if-eqz v9, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/ui/FillUi;->newClickBlocker()Landroid/widget/RemoteViews$OnClickHandler;

    move-result-object v0

    const v8, 0x10303b9

    invoke-virtual {v9, v8}, Landroid/widget/RemoteViews;->setApplyTheme(I)V

    iget-object v8, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    invoke-virtual {v9, v8, v12, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    const v8, 0x10201bb

    invoke-virtual {v11, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    sget-boolean v12, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v12, :cond_c

    const-string v12, "FillUi"

    const-string v13, "adding header"

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v12, v1, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_7

    :cond_d
    const/4 v8, 0x0

    iput-object v8, v1, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    :goto_7
    if-eqz v10, :cond_11

    const v8, 0x10201ba

    invoke-virtual {v11, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_10

    if-nez v0, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/ui/FillUi;->newClickBlocker()Landroid/widget/RemoteViews$OnClickHandler;

    move-result-object v0

    :cond_e
    const v12, 0x10303b9

    invoke-virtual {v10, v12}, Landroid/widget/RemoteViews;->setApplyTheme(I)V

    iget-object v12, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v12

    iput-object v12, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    sget-boolean v12, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v12, :cond_f

    const-string v12, "FillUi"

    const-string v13, "adding footer"

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v12, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v12, 0x0

    goto :goto_8

    :cond_10
    const/4 v12, 0x0

    iput-object v12, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    :goto_8
    goto :goto_9

    :cond_11
    const/4 v12, 0x0

    iput-object v12, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    :goto_9
    move-object v8, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object v12, v0

    const/4 v0, 0x0

    :goto_a
    move v13, v0

    if-ge v13, v7, :cond_19

    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/service/autofill/Dataset;

    invoke-virtual {v15}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_18

    invoke-virtual {v15, v5}, Landroid/service/autofill/Dataset;->getFieldPresentation(I)Landroid/widget/RemoteViews;

    move-result-object v6

    if-nez v6, :cond_12

    const-string v0, "FillUi"

    move/from16 v27, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v8

    const-string/jumbo v8, "not displaying UI on field "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " because service didn\'t provide a presentation for it on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    nop

    move-object/from16 v29, v4

    goto/16 :goto_10

    :cond_12
    move/from16 v27, v7

    move-object/from16 v28, v8

    :try_start_1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v0, :cond_13

    :try_start_2
    const-string v0, "FillUi"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setting remote view for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    move-object/from16 v29, v4

    goto/16 :goto_f

    :cond_13
    :goto_b
    const v7, 0x10303b9

    :try_start_3
    invoke-virtual {v6, v7}, Landroid/widget/RemoteViews;->setApplyTheme(I)V

    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v4}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v26
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    nop

    nop

    invoke-virtual {v15, v5}, Landroid/service/autofill/Dataset;->getFilter(I)Landroid/service/autofill/Dataset$DatasetFieldFilter;

    move-result-object v0

    const/4 v8, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-nez v0, :cond_15

    invoke-virtual {v15}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/autofill/AutofillValue;

    if-eqz v7, :cond_14

    invoke-virtual {v7}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v21

    if-eqz v21, :cond_14

    move-object/from16 v29, v4

    invoke-virtual {v7}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    goto :goto_c

    :cond_14
    move-object/from16 v29, v4

    :goto_c
    move-object/from16 v30, v0

    move-object v4, v8

    goto :goto_e

    :cond_15
    move-object/from16 v29, v4

    iget-object v4, v0, Landroid/service/autofill/Dataset$DatasetFieldFilter;->pattern:Ljava/util/regex/Pattern;

    if-nez v4, :cond_17

    sget-boolean v7, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v7, :cond_16

    const-string v7, "FillUi"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v30, v0

    const-string v0, "Explicitly disabling filter at id "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for dataset #"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_16
    move-object/from16 v30, v0

    :goto_d
    const/4 v0, 0x0

    move/from16 v17, v0

    goto :goto_e

    :cond_17
    move-object/from16 v30, v0

    :goto_e
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$ViewItem;

    move-object/from16 v21, v0

    move-object/from16 v22, v15

    move-object/from16 v23, v4

    move/from16 v24, v17

    move-object/from16 v25, v16

    invoke-direct/range {v21 .. v26}, Lcom/android/server/autofill/ui/FillUi$ViewItem;-><init>(Landroid/service/autofill/Dataset;Ljava/util/regex/Pattern;ZLjava/lang/String;Landroid/view/View;)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :catch_2
    move-exception v0

    move-object/from16 v29, v4

    :goto_f
    const-string v4, "FillUi"

    const-string v7, "Error inflating remote views"

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    :cond_18
    move-object/from16 v29, v4

    move/from16 v27, v7

    move-object/from16 v28, v8

    :goto_10
    add-int/lit8 v0, v13, 0x1

    move/from16 v7, v27

    move-object/from16 v8, v28

    move-object/from16 v4, v29

    move-object/from16 v5, p8

    move-object/from16 v6, p2

    goto/16 :goto_a

    :cond_19
    move-object/from16 v29, v4

    move/from16 v27, v7

    move-object/from16 v28, v8

    new-instance v0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-direct {v0, v1, v12}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;-><init>(Lcom/android/server/autofill/ui/FillUi;Ljava/util/List;)V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    const v0, 0x10201bd

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    iget-object v4, v1, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    new-instance v4, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$jpLZ4TKMFTozyqA8_WsBHG3lWBg;

    invoke-direct {v4, v1}, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$jpLZ4TKMFTozyqA8_WsBHG3lWBg;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    if-nez p4, :cond_1a

    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    goto :goto_11

    :cond_1a
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    :goto_11
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/ui/FillUi;->applyNewFilterText()V

    new-instance v0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-direct {v0, v1, v11, v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;-><init>(Lcom/android/server/autofill/ui/FillUi;Landroid/view/View;Lcom/android/server/autofill/ui/OverlayControl;)V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    :goto_12
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/autofill/ui/FillUi;)Lcom/android/server/autofill/ui/FillUi$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/autofill/ui/FillUi;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/autofill/ui/FillUi;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/autofill/ui/FillUi;)Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/autofill/ui/FillUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->announceSearchResultIfNeeded()V

    return-void
.end method

.method private announceSearchResultIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;-><init>(Lcom/android/server/autofill/ui/FillUi;Lcom/android/server/autofill/ui/FillUi$1;)V

    iput-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;->post()V

    :cond_1
    return-void
.end method

.method private applyNewFilterText()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    new-instance v3, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$IWXsdxX6-XHI4qKxpJLqtc98gZA;

    invoke-direct {v3, p0, v0}, Lcom/android/server/autofill/ui/-$$Lambda$FillUi$IWXsdxX6-XHI4qKxpJLqtc98gZA;-><init>(Lcom/android/server/autofill/ui/FillUi;I)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    return-void
.end method

.method public static isFullScreen(Landroid/content/Context;)Z
    .locals 3

    sget-object v0, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "FillUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forcing full-screen mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$applyNewFilterText$3(Lcom/android/server/autofill/ui/FillUi;II)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-gtz p2, :cond_3

    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    const-string v1, "FillUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No dataset matches filter with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " chars"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestHideFillUi()V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->updateContentSize()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/autofill/ui/FillUi;->requestShowFillUi()V

    :cond_4
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v1

    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    if-le v1, v2, :cond_5

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onVisibilityAggregated(Z)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    :goto_1
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v0

    if-eq v0, p1, :cond_6

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    :cond_6
    :goto_2
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/autofill/ui/FillUi;Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0, p2}, Lcom/android/server/autofill/ui/FillUi$Callback;->dispatchUnhandledKey(Landroid/view/KeyEvent;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$new$1(Lcom/android/server/autofill/ui/FillUi;Landroid/service/autofill/FillResponse;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0, p1}, Lcom/android/server/autofill/ui/FillUi$Callback;->onResponsePicked(Landroid/service/autofill/FillResponse;)V

    return-void
.end method

.method public static synthetic lambda$new$2(Lcom/android/server/autofill/ui/FillUi;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v0, p3}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getItem(I)Lcom/android/server/autofill/ui/FillUi$ViewItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    iget-object v2, v0, Lcom/android/server/autofill/ui/FillUi$ViewItem;->dataset:Landroid/service/autofill/Dataset;

    invoke-interface {v1, v2}, Lcom/android/server/autofill/ui/FillUi$Callback;->onDatasetPicked(Landroid/service/autofill/Dataset;)V

    return-void
.end method

.method private newClickBlocker()Landroid/widget/RemoteViews$OnClickHandler;
    .locals 1

    new-instance v0, Lcom/android/server/autofill/ui/FillUi$2;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/ui/FillUi$2;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    return-object v0
.end method

.method private static resolveMaxWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    sget-object v0, Lcom/android/server/autofill/ui/FillUi;->sTempTypedValue:Landroid/util/TypedValue;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    const v3, 0x1110011

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v3, p1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v3, 0x1110010

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method private throwIfDestroyed()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot interact with a destroyed instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateContentSize()Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v2}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v2

    if-gtz v2, :cond_4

    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    if-eqz v2, :cond_2

    iput v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    const/4 v0, 0x1

    :cond_2
    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    if-eqz v2, :cond_3

    iput v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    const/4 v0, 0x1

    :cond_3
    return v0

    :cond_4
    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/server/autofill/ui/FillUi;->resolveMaxWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    iput v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    iput v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    iget v3, v2, Landroid/graphics/Point;->x:I

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v5}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-virtual {v6, v3, v4}, Landroid/view/View;->measure(II)V

    iget-object v6, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-direct {p0, v6, v2}, Lcom/android/server/autofill/ui/FillUi;->updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v6

    or-int/2addr v0, v6

    iget-object v6, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-direct {p0, v6, v2}, Lcom/android/server/autofill/ui/FillUi;->updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v6

    or-int/2addr v0, v6

    :cond_5
    nop

    :goto_0
    if-ge v1, v5, :cond_7

    iget-object v6, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v6, v1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getItem(I)Lcom/android/server/autofill/ui/FillUi$ViewItem;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/autofill/ui/FillUi$ViewItem;->view:Landroid/view/View;

    invoke-virtual {v6, v3, v4}, Landroid/view/View;->measure(II)V

    invoke-direct {p0, v6, v2}, Lcom/android/server/autofill/ui/FillUi;->updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v7

    or-int/2addr v0, v7

    iget v7, p0, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    if-ge v1, v7, :cond_6

    invoke-direct {p0, v6, v2}, Lcom/android/server/autofill/ui/FillUi;->updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v7

    or-int/2addr v0, v7

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-direct {p0, v1, v2}, Lcom/android/server/autofill/ui/FillUi;->updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-direct {p0, v1, v2}, Lcom/android/server/autofill/ui/FillUi;->updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_8
    return v0
.end method

.method private updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p2, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    if-eq v2, v3, :cond_0

    iput v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p2, Landroid/graphics/Point;->x:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    if-eq v2, v3, :cond_0

    iput v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public destroy(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->throwIfDestroyed()V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->hide(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/FillUi$Callback;->onDestroy()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestHideFillUi()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCallback: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFullScreen: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVisibleDatasetsMaxCount: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHeader: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mListView: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFooter: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    if-eqz v0, :cond_4

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAdapter: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFilterText: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/autofill/Helper;->printlnRedactedText(Ljava/io/PrintWriter;Ljava/lang/CharSequence;)V

    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mContentWidth: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mContentHeight: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDestroyed: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    if-eqz v0, :cond_8

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWindow: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "showing: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->access$300(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "view: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->access$400(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->access$500(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "params: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->access$500(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "screen coordinates: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->access$400(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_7

    const-string v1, "N/A"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->access$400(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v3

    aget v1, v3, v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, "x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v1, v3, v2

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    :cond_8
    :goto_1
    return-void
.end method

.method requestShowFillUi()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    iget v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindowPresenter:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestShowFillUi(IILandroid/view/autofill/IAutofillWindowPresenter;)V

    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->throwIfDestroyed()V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/autofill/ui/FillUi;->requestShowFillUi()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestHideFillUi()V

    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->applyNewFilterText()V

    return-void
.end method
