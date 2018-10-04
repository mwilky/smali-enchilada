.class public Lcom/android/internal/widget/NotificationActionListLayout;
.super Landroid/widget/LinearLayout;
.source "NotificationActionListLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final MEASURE_ORDER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/widget/TextView;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mDefaultPaddingBottom:I

.field private mDefaultPaddingTop:I

.field private mEmphasizedHeight:I

.field private mEmphasizedMode:Z

.field private final mGravity:I

.field private mMeasureOrderOther:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasureOrderTextViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/widget/TextView;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRegularHeight:I

.field private mTotalWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/internal/widget/-$$Lambda$NotificationActionListLayout$uFZFEmIEBpI3kn6c3tNvvgmMSv8;->INSTANCE:Lcom/android/internal/widget/-$$Lambda$NotificationActionListLayout$uFZFEmIEBpI3kn6c3tNvvgmMSv8;

    sput-object v0, Lcom/android/internal/widget/NotificationActionListLayout;->MEASURE_ORDER_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/NotificationActionListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/NotificationActionListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100af

    aput v2, v1, v0

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mGravity:I

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private clearMeasureOrder()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method static synthetic lambda$static$0(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 2

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method private rebuildMeasureOrder(II)V
    .locals 6

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->clearMeasureOrder()V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    move-object v4, v2

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/internal/widget/NotificationActionListLayout;->MEASURE_ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-void
.end method

.method private updateHeights()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105012e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105012f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int v2, v1, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050124

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedHeight:I

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050125

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mRegularHeight:I

    return-void
.end method


# virtual methods
.method public getExtraMeasureHeight()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedHeight:I

    iget v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mRegularHeight:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultPaddingBottom:I

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultPaddingTop:I

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->updateHeights()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 21

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedMode:Z

    if-eqz v3, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->isLayoutRtl()Z

    move-result v3

    iget v4, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingTop:I

    iget v5, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mGravity:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    move v6, v7

    :goto_0
    move v5, v6

    if-eqz v5, :cond_2

    iget v6, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    add-int v6, v6, p2

    sub-int v8, p4, p2

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v6, v8

    iget v8, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v6, v8

    goto :goto_1

    :cond_2
    iget v6, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    const v8, 0x800003

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getLayoutDirection()I

    move-result v9

    invoke-static {v8, v9}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_3

    sub-int v9, p4, p2

    iget v10, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    sub-int/2addr v9, v10

    add-int/2addr v6, v9

    :cond_3
    :goto_1
    sub-int v10, p5, p3

    sub-int v11, v10, v4

    iget v12, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingBottom:I

    sub-int/2addr v11, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v3, :cond_4

    add-int/lit8 v13, v12, -0x1

    const/4 v14, -0x1

    :cond_4
    nop

    :goto_2
    if-ge v7, v12, :cond_6

    mul-int v15, v14, v7

    add-int/2addr v15, v13

    invoke-virtual {v0, v15}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move/from16 v17, v3

    move-object/from16 v3, v16

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    sub-int v16, v11, v2

    div-int/lit8 v16, v16, 0x2

    add-int v16, v4, v16

    move/from16 v18, v4

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v16, v16, v4

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v4, v16, v4

    move/from16 v19, v5

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v6, v5

    add-int v5, v6, v0

    add-int v8, v4, v2

    invoke-virtual {v1, v6, v4, v5, v8}, Landroid/view/View;->layout(IIII)V

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v0

    add-int/2addr v6, v5

    goto :goto_3

    :cond_5
    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    :goto_3
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move-object/from16 v0, p0

    goto :goto_2

    :cond_6
    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    return-void
.end method

.method protected onMeasure(II)V
    .locals 22

    move-object/from16 v6, p0

    iget-boolean v0, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedMode:Z

    if-eqz v0, :cond_0

    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result v7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v8, v0

    move v9, v1

    move v10, v2

    move v0, v3

    :goto_0
    const/16 v11, 0x8

    if-ge v0, v7, :cond_3

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v9, v9, 0x1

    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v11, :cond_2

    add-int/lit8 v10, v10, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iget-object v1, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v8, v1, :cond_4

    iget-object v1, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v9, v1, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    if-nez v0, :cond_8

    iget-object v1, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    move v0, v3

    :goto_2
    if-ge v0, v1, :cond_7

    iget-object v4, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v12, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-eq v5, v12, :cond_6

    const/4 v2, 0x1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    move v12, v2

    goto :goto_3

    :cond_8
    move v12, v0

    :goto_3
    if-eqz v12, :cond_9

    invoke-direct {v6, v8, v9}, Lcom/android/internal/widget/NotificationActionListLayout;->rebuildMeasureOrder(II)V

    :cond_9
    nop

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_4

    :cond_a
    move v0, v3

    :goto_4
    move v13, v0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingRight:I

    sub-int v14, v0, v1

    iget-object v0, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/4 v0, 0x0

    const/4 v1, 0x0

    move/from16 v16, v0

    move/from16 v17, v1

    :goto_5
    move v5, v3

    if-ge v5, v7, :cond_e

    if-ge v5, v15, :cond_b

    iget-object v0, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_6

    :cond_b
    iget-object v0, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    sub-int v1, v5, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    :goto_6
    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v11, :cond_c

    nop

    move/from16 v21, v5

    move/from16 v20, v7

    goto :goto_7

    :cond_c
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    move/from16 v0, v16

    if-eqz v13, :cond_d

    sub-int v1, v14, v16

    sub-int v2, v10, v17

    div-int v2, v1, v2

    sub-int v0, v14, v2

    :cond_d
    move/from16 v18, v0

    const/16 v19, 0x0

    move-object v0, v6

    move-object v1, v4

    move/from16 v2, p1

    move-object v11, v3

    move/from16 v3, v18

    move/from16 v20, v7

    move-object v7, v4

    move/from16 v4, p2

    move/from16 v21, v5

    move/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/NotificationActionListLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    iget v1, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    add-int v16, v16, v0

    add-int/lit8 v17, v17, 0x1

    :goto_7
    add-int/lit8 v3, v21, 0x1

    move/from16 v7, v20

    const/16 v11, 0x8

    goto :goto_5

    :cond_e
    move/from16 v20, v7

    iget v0, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingRight:I

    add-int v0, v16, v0

    iget v1, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    add-int/2addr v0, v1

    iput v0, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getSuggestedMinimumWidth()I

    move-result v0

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/internal/widget/NotificationActionListLayout;->resolveSize(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getSuggestedMinimumHeight()I

    move-result v2

    move/from16 v3, p2

    invoke-static {v2, v3}, Lcom/android/internal/widget/NotificationActionListLayout;->resolveSize(II)I

    move-result v2

    invoke-virtual {v6, v0, v2}, Lcom/android/internal/widget/NotificationActionListLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewAdded(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->clearMeasureOrder()V

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    :cond_0
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewRemoved(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->clearMeasureOrder()V

    return-void
.end method

.method public setEmphasizedMode(Z)V
    .locals 8
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedMode:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105012e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105012f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedHeight:I

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingStart()I

    move-result v4

    sub-int v5, v0, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingEnd()I

    move-result v6

    sub-int v7, v1, v3

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/internal/widget/NotificationActionListLayout;->setPaddingRelative(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingStart()I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultPaddingTop:I

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingEnd()I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultPaddingBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/widget/NotificationActionListLayout;->setPaddingRelative(IIII)V

    iget v2, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mRegularHeight:I

    :goto_0
    move v0, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/NotificationActionListLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
