.class public Lcom/android/internal/view/TooltipPopup;
.super Ljava/lang/Object;
.source "TooltipPopup.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TooltipPopup"


# instance fields
.field private final mContentView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private final mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mMessageView:Landroid/widget/TextView;

.field private final mTmpAnchorPos:[I

.field private final mTmpAppPos:[I

.field private final mTmpDisplayFrame:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    iput-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090114

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    const v2, 0x1040690

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x3ed

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x1030302

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

.method private computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v3, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10501d6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v4

    if-lt v4, v3, :cond_0

    move/from16 v4, p2

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    if-lt v5, v3, :cond_1

    iget-object v5, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x10501d5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    add-int v7, p3, v5

    sub-int v5, p3, v5

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v7

    move v5, v6

    :goto_1
    const/16 v8, 0x31

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v8, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz p4, :cond_2

    const v9, 0x10501d9

    goto :goto_2

    :cond_2
    const v9, 0x10501d8

    :goto_2
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/WindowManagerGlobal;->getWindowView(Landroid/os/IBinder;)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_3

    const-string v6, "TooltipPopup"

    const-string v10, "Cannot find app view"

    invoke-static {v6, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v10, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v10, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    invoke-virtual {v9, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v10, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    move-object/from16 v11, p1

    invoke-virtual {v11, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v10, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget v12, v10, v6

    iget-object v13, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    aget v13, v13, v6

    sub-int/2addr v12, v13

    aput v12, v10, v6

    iget-object v10, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/4 v12, 0x1

    aget v13, v10, v12

    iget-object v14, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    aget v14, v14, v12

    sub-int/2addr v13, v14

    aput v13, v10, v12

    iget-object v10, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget v10, v10, v6

    add-int/2addr v10, v4

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v10, v13

    iput v10, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget-object v10, v0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v10, v6, v6}, Landroid/view/View;->measure(II)V

    iget-object v10, v0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    iget-object v13, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget v13, v13, v12

    add-int/2addr v13, v5

    sub-int/2addr v13, v8

    sub-int/2addr v13, v10

    iget-object v14, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget v12, v14, v12

    add-int/2addr v12, v7

    add-int/2addr v12, v8

    if-eqz p4, :cond_5

    if-ltz v13, :cond_4

    iput v13, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3

    :cond_4
    iput v12, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3

    :cond_5
    add-int v14, v12, v10

    iget-object v1, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gt v14, v1, :cond_6

    iput v12, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3

    :cond_6
    iput v13, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_3
    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public hide()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public show(Landroid/view/View;IIZLjava/lang/CharSequence;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/view/TooltipPopup;->computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
