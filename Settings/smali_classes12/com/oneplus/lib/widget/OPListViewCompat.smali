.class public Lcom/oneplus/lib/widget/OPListViewCompat;
.super Landroid/widget/ListView;
.source "OPListViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/OPListViewCompat$GateKeeperDrawable;
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final NO_POSITION:I = -0x1

.field private static final STATE_SET_NOTHING:[I


# instance fields
.field private mIsChildViewEnabled:Ljava/lang/reflect/Field;

.field protected mMotionPosition:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field private mSelector:Lcom/oneplus/lib/widget/OPListViewCompat$GateKeeperDrawable;

.field final mSelectorRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    sput-object v0, Lcom/oneplus/lib/widget/OPListViewCompat;->STATE_SET_NOTHING:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/OPListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/OPListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelectionLeftPadding:I

    iput v0, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelectionTopPadding:I

    iput v0, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelectionRightPadding:I

    iput v0, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelectionBottomPadding:I

    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "mIsChildViewEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/OPListViewCompat;->drawSelectorCompat(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawSelectorCompat(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPListViewCompat;->setSelectorEnabled(Z)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->updateSelectorStateCompat()V

    return-void
.end method

.method public lookForSelectablePosition(IZ)I
    .locals 4

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_4

    :cond_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz p2, :cond_1

    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    if-ge p1, v2, :cond_2

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v2, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_1
    if-ltz p1, :cond_2

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_2
    if-ltz p1, :cond_4

    if-lt p1, v2, :cond_3

    goto :goto_2

    :cond_3
    return p1

    :cond_4
    :goto_2
    return v1

    :cond_5
    if-ltz p1, :cond_7

    if-lt p1, v2, :cond_6

    goto :goto_3

    :cond_6
    return p1

    :cond_7
    :goto_3
    return v1

    :cond_8
    :goto_4
    return v1
.end method

.method public measureHeightOfChildrenCompat(IIIII)I
    .locals 23

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->getListPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->getListPaddingBottom()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->getListPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->getListPaddingRight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->getDividerHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    if-nez v8, :cond_0

    add-int v9, v2, v3

    return v9

    :cond_0
    add-int v9, v2, v3

    if-lez v6, :cond_1

    if-eqz v7, :cond_1

    move v11, v6

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    :goto_0
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v15

    move/from16 v16, v12

    move v12, v9

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v15, :cond_9

    invoke-interface {v8, v9}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v10

    if-eq v10, v14, :cond_2

    const/4 v13, 0x0

    move v14, v10

    :cond_2
    move/from16 v18, v2

    move-object/from16 v2, p0

    invoke-interface {v8, v9, v13, v2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    if-nez v19, :cond_3

    move/from16 v20, v3

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_3
    move/from16 v20, v3

    move-object/from16 v3, v19

    :goto_2
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_4

    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v21, v3

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move v3, v2

    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    move-object/from16 v21, v3

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    :goto_3
    move/from16 v2, p1

    invoke-virtual {v13, v2, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v13}, Landroid/view/View;->forceLayout()V

    if-lez v9, :cond_5

    add-int/2addr v12, v11

    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    add-int v12, v12, v17

    if-lt v12, v0, :cond_7

    if-ltz v1, :cond_6

    if-le v9, v1, :cond_6

    if-lez v16, :cond_6

    if-eq v12, v0, :cond_6

    nop

    move/from16 v17, v16

    goto :goto_4

    :cond_6
    nop

    move/from16 v17, v0

    :goto_4
    return v17

    :cond_7
    if-ltz v1, :cond_8

    if-lt v9, v1, :cond_8

    move/from16 v16, v12

    :cond_8
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v18

    move/from16 v3, v20

    goto :goto_1

    :cond_9
    move/from16 v18, v2

    move/from16 v20, v3

    move/from16 v2, p1

    return v12
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/widget/OPListViewCompat;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mMotionPosition:I

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected positionSelectorCompat(ILandroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelectionLeftPadding:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelectionTopPadding:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelectionRightPadding:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelectionBottomPadding:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v1, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->refreshDrawableState()V

    :cond_2
    return-void
.end method

.method protected positionSelectorLikeFocusCompat(ILandroid/view/View;)V
    .locals 8

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v0, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/OPListViewCompat;->positionSelectorCompat(ILandroid/view/View;)V

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    invoke-static {v0, v5, v6}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    :cond_3
    return-void
.end method

.method protected positionSelectorLikeTouchCompat(ILandroid/view/View;FF)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/OPListViewCompat;->positionSelectorLikeFocusCompat(ILandroid/view/View;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    invoke-static {v0, p3, p4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    :cond_0
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/oneplus/lib/widget/OPListViewCompat$GateKeeperDrawable;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/widget/OPListViewCompat$GateKeeperDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelector:Lcom/oneplus/lib/widget/OPListViewCompat$GateKeeperDrawable;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelector:Lcom/oneplus/lib/widget/OPListViewCompat$GateKeeperDrawable;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_2
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelectionLeftPadding:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelectionTopPadding:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelectionRightPadding:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelectionBottomPadding:I

    return-void
.end method

.method protected setSelectorEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelector:Lcom/oneplus/lib/widget/OPListViewCompat$GateKeeperDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPListViewCompat;->mSelector:Lcom/oneplus/lib/widget/OPListViewCompat$GateKeeperDrawable;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/OPListViewCompat$GateKeeperDrawable;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected shouldShowSelectorCompat()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->touchModeDrawsInPressedStateCompat()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected touchModeDrawsInPressedStateCompat()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected updateSelectorStateCompat()V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->shouldShowSelectorCompat()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method
