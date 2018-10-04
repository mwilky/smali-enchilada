.class public abstract Landroid/widget/AbsSpinner;
.super Landroid/widget/AdapterView;
.source "AbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsSpinner$RecycleBin;,
        Landroid/widget/AbsSpinner$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView<",
        "Landroid/widget/SpinnerAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field mAdapter:Landroid/widget/SpinnerAdapter;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field mHeightMeasureSpec:I

.field final mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field final mSpinnerPadding:Landroid/graphics/Rect;

.field private mTouchFrame:Landroid/graphics/Rect;

.field mWidthMeasureSpec:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/widget/AbsSpinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/AbsSpinner;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsSpinner;->mSelectionLeftPadding:I

    iput v0, p0, Landroid/widget/AbsSpinner;->mSelectionTopPadding:I

    iput v0, p0, Landroid/widget/AbsSpinner;->mSelectionRightPadding:I

    iput v0, p0, Landroid/widget/AbsSpinner;->mSelectionBottomPadding:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    new-instance v0, Landroid/widget/AbsSpinner$RecycleBin;

    invoke-direct {v0, p0}, Landroid/widget/AbsSpinner$RecycleBin;-><init>(Landroid/widget/AbsSpinner;)V

    iput-object v0, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-direct {p0}, Landroid/widget/AbsSpinner;->initAbsSpinner()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsSpinner;->mSelectionLeftPadding:I

    iput v0, p0, Landroid/widget/AbsSpinner;->mSelectionTopPadding:I

    iput v0, p0, Landroid/widget/AbsSpinner;->mSelectionRightPadding:I

    iput v0, p0, Landroid/widget/AbsSpinner;->mSelectionBottomPadding:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    new-instance v1, Landroid/widget/AbsSpinner$RecycleBin;

    invoke-direct {v1, p0}, Landroid/widget/AbsSpinner$RecycleBin;-><init>(Landroid/widget/AbsSpinner;)V

    iput-object v1, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getImportantForAutofill()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/AbsSpinner;->setImportantForAutofill(I)V

    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsSpinner;->initAbsSpinner()V

    sget-object v1, Lcom/android/internal/R$styleable;->AbsSpinner:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v2, p1, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v3, 0x1090009

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p0, v2}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/AbsSpinner;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsSpinner;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method private initAbsSpinner()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setFocusable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public autofill(Landroid/view/autofill/AutofillValue;)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isList()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/widget/AbsSpinner;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " could not be autofilled into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getListValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setSelection(I)V

    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->handleDataChanged()V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/AbsSpinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method public getAutofillType()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAutofillValue()Landroid/view/autofill/AutofillValue;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getSelectedItemPosition()I

    move-result v0

    invoke-static {v0}, Landroid/view/autofill/AutofillValue;->forList(I)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method getChildWidth(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Landroid/widget/AbsSpinner;->mItemCount:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    iget v0, p0, Landroid/widget/AbsSpinner;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AbsSpinner;->mSelectedPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/widget/AbsSpinner;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsSpinner;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract layout(IZ)V
.end method

.method protected onMeasure(II)V
    .locals 10

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/AbsSpinner;->mPaddingLeft:I

    iget v3, p0, Landroid/widget/AbsSpinner;->mSelectionLeftPadding:I

    if-le v2, v3, :cond_0

    iget v2, p0, Landroid/widget/AbsSpinner;->mPaddingLeft:I

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/widget/AbsSpinner;->mSelectionLeftPadding:I

    :goto_0
    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/AbsSpinner;->mPaddingTop:I

    iget v3, p0, Landroid/widget/AbsSpinner;->mSelectionTopPadding:I

    if-le v2, v3, :cond_1

    iget v2, p0, Landroid/widget/AbsSpinner;->mPaddingTop:I

    goto :goto_1

    :cond_1
    iget v2, p0, Landroid/widget/AbsSpinner;->mSelectionTopPadding:I

    :goto_1
    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/AbsSpinner;->mPaddingRight:I

    iget v3, p0, Landroid/widget/AbsSpinner;->mSelectionRightPadding:I

    if-le v2, v3, :cond_2

    iget v2, p0, Landroid/widget/AbsSpinner;->mPaddingRight:I

    goto :goto_2

    :cond_2
    iget v2, p0, Landroid/widget/AbsSpinner;->mSelectionRightPadding:I

    :goto_2
    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/AbsSpinner;->mPaddingBottom:I

    iget v3, p0, Landroid/widget/AbsSpinner;->mSelectionBottomPadding:I

    if-le v2, v3, :cond_3

    iget v2, p0, Landroid/widget/AbsSpinner;->mPaddingBottom:I

    goto :goto_3

    :cond_3
    iget v2, p0, Landroid/widget/AbsSpinner;->mSelectionBottomPadding:I

    :goto_3
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-boolean v1, p0, Landroid/widget/AbsSpinner;->mDataChanged:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->handleDataChanged()V

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getSelectedItemPosition()I

    move-result v4

    const/4 v5, 0x0

    if-ltz v4, :cond_7

    iget-object v6, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v6, :cond_7

    iget-object v6, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v6}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v6

    if-ge v4, v6, :cond_7

    iget-object v6, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v6, v4}, Landroid/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v6, :cond_5

    iget-object v8, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v9, 0x0

    invoke-interface {v8, v4, v9, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v6, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_5
    if-eqz v6, :cond_7

    iget-object v8, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v8, v4, v6}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_6

    iput-boolean v7, p0, Landroid/widget/AbsSpinner;->mBlockLayoutRequests:Z

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v5, p0, Landroid/widget/AbsSpinner;->mBlockLayoutRequests:Z

    :cond_6
    invoke-virtual {p0, v6, p1, p2}, Landroid/widget/AbsSpinner;->measureChild(Landroid/view/View;II)V

    invoke-virtual {p0, v6}, Landroid/widget/AbsSpinner;->getChildHeight(Landroid/view/View;)I

    move-result v7

    iget-object v8, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int v1, v7, v8

    invoke-virtual {p0, v6}, Landroid/widget/AbsSpinner;->getChildWidth(Landroid/view/View;)I

    move-result v7

    iget-object v8, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int v2, v7, v8

    const/4 v3, 0x0

    :cond_7
    if-eqz v3, :cond_8

    iget-object v6, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int v1, v6, v7

    if-nez v0, :cond_8

    iget-object v6, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int v2, v6, v7

    :cond_8
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getSuggestedMinimumHeight()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getSuggestedMinimumWidth()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, p2, v5}, Landroid/widget/AbsSpinner;->resolveSizeAndState(III)I

    move-result v6

    invoke-static {v2, p1, v5}, Landroid/widget/AbsSpinner;->resolveSizeAndState(III)I

    move-result v5

    invoke-virtual {p0, v5, v6}, Landroid/widget/AbsSpinner;->setMeasuredDimension(II)V

    iput p2, p0, Landroid/widget/AbsSpinner;->mHeightMeasureSpec:I

    iput p1, p0, Landroid/widget/AbsSpinner;->mWidthMeasureSpec:I

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    move-object v0, p1

    check-cast v0, Landroid/widget/AbsSpinner$SavedState;

    invoke-virtual {v0}, Landroid/widget/AbsSpinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-wide v1, v0, Landroid/widget/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsSpinner;->mDataChanged:Z

    iput-boolean v1, p0, Landroid/widget/AbsSpinner;->mNeedSync:Z

    iget-wide v1, v0, Landroid/widget/AbsSpinner$SavedState;->selectedId:J

    iput-wide v1, p0, Landroid/widget/AbsSpinner;->mSyncRowId:J

    iget v1, v0, Landroid/widget/AbsSpinner$SavedState;->position:I

    iput v1, p0, Landroid/widget/AbsSpinner;->mSyncPosition:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsSpinner;->mSyncMode:I

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/widget/AbsSpinner$SavedState;

    invoke-direct {v1, v0}, Landroid/widget/AbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/widget/AbsSpinner$SavedState;->selectedId:J

    iget-wide v2, v1, Landroid/widget/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, v1, Landroid/widget/AbsSpinner$SavedState;->position:I

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/AbsSpinner$SavedState;->position:I

    :goto_0
    return-object v1
.end method

.method public pointToPosition(II)I
    .locals 5

    iget-object v0, p0, Landroid/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getChildCount()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_2

    invoke-virtual {p0, v2}, Landroid/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Landroid/widget/AbsSpinner;->mFirstPosition:I

    add-int/2addr v4, v2

    return v4

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    return v2
.end method

.method recycleAllViews()V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getChildCount()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    iget v2, p0, Landroid/widget/AbsSpinner;->mFirstPosition:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p0, v3}, Landroid/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    add-int v5, v2, v3

    invoke-virtual {v1, v5, v4}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsSpinner;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    :cond_0
    return-void
.end method

.method resetList()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsSpinner;->mDataChanged:Z

    iput-boolean v0, p0, Landroid/widget/AbsSpinner;->mNeedSync:Z

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->removeAllViewsInLayout()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsSpinner;->mOldSelectedPosition:I

    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Landroid/widget/AbsSpinner;->mOldSelectedRowId:J

    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->invalidate()V

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 3

    iget-object v0, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v1, p0, Landroid/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->resetList()V

    :cond_0
    iput-object p1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsSpinner;->mOldSelectedPosition:I

    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Landroid/widget/AbsSpinner;->mOldSelectedRowId:J

    iget-object v1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/widget/AbsSpinner;->mItemCount:I

    iput v1, p0, Landroid/widget/AbsSpinner;->mOldItemCount:I

    iget-object v1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsSpinner;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->checkFocus()V

    new-instance v1, Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    iput-object v1, p0, Landroid/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    iget-object v1, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Landroid/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget v1, p0, Landroid/widget/AbsSpinner;->mItemCount:I

    if-lez v1, :cond_1

    const/4 v0, 0x0

    nop

    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    iget v1, p0, Landroid/widget/AbsSpinner;->mItemCount:I

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->checkSelectionChanged()V

    :cond_2
    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->checkFocus()V

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->resetList()V

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->checkSelectionChanged()V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->requestLayout()V

    return-void
.end method

.method public setSelection(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->invalidate()V

    return-void
.end method

.method public setSelection(IZ)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget v1, p0, Landroid/widget/AbsSpinner;->mFirstPosition:I

    if-gt v1, p1, :cond_0

    iget v1, p0, Landroid/widget/AbsSpinner;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsSpinner;->setSelectionInt(IZ)V

    return-void
.end method

.method setSelectionInt(IZ)V
    .locals 2

    iget v0, p0, Landroid/widget/AbsSpinner;->mOldSelectedPosition:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSpinner;->mBlockLayoutRequests:Z

    iget v0, p0, Landroid/widget/AbsSpinner;->mSelectedPosition:I

    sub-int v0, p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0, v0, p2}, Landroid/widget/AbsSpinner;->layout(IZ)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AbsSpinner;->mBlockLayoutRequests:Z

    :cond_0
    return-void
.end method
