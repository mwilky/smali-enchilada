.class Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChooserRowAdapter"
.end annotation


# instance fields
.field private mAnimationCount:I

.field private mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

.field private final mColumnCount:I

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "wrappedAdapter"    # Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    .line 1266
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1263
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mColumnCount:I

    .line 1264
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mAnimationCount:I

    .line 1267
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    .line 1268
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 1270
    new-instance v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;Lcom/android/internal/app/ChooserActivity;)V

    invoke-virtual {p2, v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1283
    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    .line 1260
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    return-object v0
.end method

.method private setVertPadding(Lcom/android/internal/app/ChooserActivity$RowViewHolder;II)V
    .locals 0
    .param p1, "holder"    # Lcom/android/internal/app/ChooserActivity$RowViewHolder;
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .line 1463
    return-void
.end method


# virtual methods
.method bindViewHolder(ILcom/android/internal/app/ChooserActivity$RowViewHolder;)V
    .locals 16
    .param p1, "rowPosition"    # I
    .param p2, "holder"    # Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    move-object/from16 v0, p0

    .line 1389
    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getFirstRowPosition(I)I

    move-result v2

    .line 1390
    .local v2, "start":I
    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    move-result v3

    .line 1392
    .local v3, "startType":I
    add-int/lit8 v4, v2, 0x4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 1393
    .local v4, "end":I
    :goto_0
    iget-object v6, v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v6, v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    move-result v6

    if-eq v6, v3, :cond_0

    if-lt v4, v2, :cond_0

    .line 1394
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1397
    :cond_0
    const/4 v7, 0x0

    if-ne v3, v5, :cond_4

    .line 1400
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 1401
    .local v8, "typedValue":Landroid/util/TypedValue;
    iget-object v9, v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v9}, Lcom/android/internal/app/ChooserActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    .line 1402
    .local v9, "theme":Landroid/content/res/Resources$Theme;
    const v10, 0x1010031

    invoke-virtual {v9, v10, v8, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1403
    iget v10, v8, Landroid/util/TypedValue;->data:I

    .line 1404
    .local v10, "color":I
    iget-object v11, v1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    iget-object v12, v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v12}, Landroid/content/res/ThemeController;->getInstance(Landroid/content/Context;)Landroid/content/res/ThemeController;

    move-result-object v12

    const/4 v13, 0x2

    new-array v13, v13, [I

    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const v6, 0x1060062

    invoke-virtual {v14, v6}, Lcom/android/internal/app/ChooserActivity;->getColor(I)I

    move-result v6

    aput v6, v13, v7

    aput v10, v13, v5

    invoke-virtual {v12, v13}, Landroid/content/res/ThemeController;->getCorrectThemeResource([I)I

    move-result v6

    invoke-virtual {v11, v6}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 1408
    iget-object v6, v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    add-int/lit8 v11, p1, 0x1

    .line 1409
    invoke-virtual {v0, v11}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getFirstRowPosition(I)I

    move-result v11

    .line 1408
    invoke-virtual {v6, v11}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    move-result v6

    .line 1410
    .local v6, "nextStartType":I
    iget-object v11, v1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 1411
    const v12, 0x105003b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 1412
    .local v11, "serviceSpacing":I
    if-nez p1, :cond_1

    if-eq v6, v5, :cond_1

    .line 1414
    invoke-direct {v0, v1, v7, v7}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->setVertPadding(Lcom/android/internal/app/ChooserActivity$RowViewHolder;II)V

    goto :goto_2

    .line 1416
    :cond_1
    if-nez p1, :cond_2

    move v12, v11

    goto :goto_1

    :cond_2
    move v12, v7

    .line 1417
    .local v12, "top":I
    :goto_1
    if-eq v6, v5, :cond_3

    .line 1418
    invoke-direct {v0, v1, v12, v11}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->setVertPadding(Lcom/android/internal/app/ChooserActivity$RowViewHolder;II)V

    goto :goto_2

    .line 1420
    :cond_3
    invoke-direct {v0, v1, v12, v7}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->setVertPadding(Lcom/android/internal/app/ChooserActivity$RowViewHolder;II)V

    .line 1424
    .end local v6    # "nextStartType":I
    .end local v8    # "typedValue":Landroid/util/TypedValue;
    .end local v9    # "theme":Landroid/content/res/Resources$Theme;
    .end local v10    # "color":I
    .end local v11    # "serviceSpacing":I
    .end local v12    # "top":I
    :goto_2
    goto :goto_4

    .line 1425
    :cond_4
    iget-object v6, v1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 1426
    iget-object v6, v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    add-int/lit8 v8, p1, -0x1

    .line 1427
    invoke-virtual {v0, v8}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getFirstRowPosition(I)I

    move-result v8

    .line 1426
    invoke-virtual {v6, v8}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    move-result v6

    .line 1428
    .local v6, "lastStartType":I
    if-eq v6, v5, :cond_6

    if-nez p1, :cond_5

    goto :goto_3

    .line 1433
    :cond_5
    invoke-direct {v0, v1, v7, v7}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->setVertPadding(Lcom/android/internal/app/ChooserActivity$RowViewHolder;II)V

    .end local v6    # "lastStartType":I
    goto :goto_4

    .line 1429
    .restart local v6    # "lastStartType":I
    :cond_6
    :goto_3
    iget-object v8, v1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 1430
    const v9, 0x105003b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1431
    .local v8, "serviceSpacing":I
    invoke-direct {v0, v1, v8, v7}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->setVertPadding(Lcom/android/internal/app/ChooserActivity$RowViewHolder;II)V

    .line 1432
    .end local v8    # "serviceSpacing":I
    nop

    .line 1437
    .end local v6    # "lastStartType":I
    :goto_4
    iget-object v6, v1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1438
    .local v6, "oldHeight":I
    iget-object v8, v1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v9, v1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measuredRowHeight:I

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1439
    iget-object v5, v1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v5, v6, :cond_7

    .line 1440
    iget-object v5, v1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1443
    :cond_7
    move v5, v7

    .local v5, "i":I
    :goto_5
    const/4 v8, 0x4

    if-ge v5, v8, :cond_9

    .line 1444
    iget-object v9, v1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->cells:[Landroid/view/View;

    aget-object v9, v9, v5

    .line 1445
    .local v9, "v":Landroid/view/View;
    add-int v10, v2, v5

    if-gt v10, v4, :cond_8

    .line 1446
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1447
    iget-object v8, v1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->itemIndices:[I

    add-int v10, v2, v5

    aput v10, v8, v5

    .line 1448
    iget-object v8, v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    iget-object v10, v1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->itemIndices:[I

    aget v10, v10, v5

    invoke-virtual {v8, v10, v9}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->bindView(ILandroid/view/View;)V

    goto :goto_6

    .line 1450
    :cond_8
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1443
    .end local v9    # "v":Landroid/view/View;
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1453
    .end local v5    # "i":I
    :cond_9
    return-void
.end method

.method createViewHolder(Landroid/view/ViewGroup;)Lcom/android/internal/app/ChooserActivity$RowViewHolder;
    .locals 11
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 1329
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const v2, 0x109004c

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1331
    .local v0, "row":Landroid/view/ViewGroup;
    new-instance v2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;-><init>(Landroid/view/ViewGroup;I)V

    .line 1332
    .local v2, "holder":Lcom/android/internal/app/ChooserActivity$RowViewHolder;
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1334
    .local v4, "spec":I
    nop

    .local v1, "i":I
    :goto_0
    const/4 v5, -0x1

    if-ge v1, v3, :cond_1

    .line 1335
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v6, v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1336
    .local v6, "v":Landroid/view/View;
    move v7, v1

    .line 1337
    .local v7, "column":I
    new-instance v8, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;

    invoke-direct {v8, p0, v2, v7}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;Lcom/android/internal/app/ChooserActivity$RowViewHolder;I)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1343
    new-instance v8, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;

    invoke-direct {v8, p0, v2, v7}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;Lcom/android/internal/app/ChooserActivity$RowViewHolder;I)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1352
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1353
    iget-object v8, v2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->cells:[Landroid/view/View;

    aput-object v6, v8, v1

    .line 1356
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 1357
    .local v8, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v6, v4, v4}, Landroid/view/View;->measure(II)V

    .line 1358
    if-nez v8, :cond_0

    .line 1359
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-direct {v9, v5, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v8, v9

    .line 1360
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1362
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iput v5, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1364
    :goto_1
    nop

    .line 1334
    .end local v6    # "v":Landroid/view/View;
    .end local v7    # "column":I
    .end local v8    # "lp":Landroid/view/ViewGroup$LayoutParams;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1376
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measure()V

    .line 1377
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1378
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_2

    .line 1379
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    iget v6, v2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measuredRowHeight:I

    invoke-direct {v3, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v1, v3

    .line 1380
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 1382
    :cond_2
    iget v3, v2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measuredRowHeight:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1384
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 1385
    return-object v2
.end method

.method public getCallerTargetRowCount()I
    .locals 2

    .line 1295
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    .line 1296
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 1295
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getCount()I
    .locals 4

    .line 1287
    nop

    .line 1288
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getCallerTargetRowCount()I

    move-result v0

    .line 1289
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getServiceTargetRowCount()I

    move-result v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    .line 1290
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getStandardTargetCount()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 1287
    return v0
.end method

.method getFirstRowPosition(I)I
    .locals 6
    .param p1, "row"    # I

    .line 1466
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v0

    .line 1467
    .local v0, "callerCount":I
    int-to-float v1, v0

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 1469
    .local v1, "callerRows":I
    if-ge p1, v1, :cond_0

    .line 1470
    mul-int/lit8 v2, p1, 0x4

    return v2

    .line 1473
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v3

    .line 1474
    .local v3, "serviceCount":I
    int-to-float v4, v3

    div-float/2addr v4, v2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 1476
    .local v2, "serviceRows":I
    add-int v4, v1, v2

    if-ge p1, v4, :cond_1

    .line 1477
    sub-int v4, p1, v1

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v0

    return v4

    .line 1480
    :cond_1
    add-int v4, v0, v3

    sub-int v5, p1, v1

    sub-int/2addr v5, v2

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    return v4
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 1307
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 1312
    int-to-long v0, p1

    return-wide v0
.end method

.method public getServiceTargetRowCount()I
    .locals 1

    .line 1301
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 1318
    if-nez p2, :cond_0

    .line 1319
    invoke-virtual {p0, p3}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->createViewHolder(Landroid/view/ViewGroup;)Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    move-result-object v0

    .local v0, "holder":Lcom/android/internal/app/ChooserActivity$RowViewHolder;
    goto :goto_0

    .line 1321
    .end local v0    # "holder":Lcom/android/internal/app/ChooserActivity$RowViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    .line 1323
    .restart local v0    # "holder":Lcom/android/internal/app/ChooserActivity$RowViewHolder;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->bindViewHolder(ILcom/android/internal/app/ChooserActivity$RowViewHolder;)V

    .line 1325
    iget-object v1, v0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    return-object v1
.end method
