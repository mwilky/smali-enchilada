.class Lcom/oneplus/lib/widget/TimePickerClockDelegate$NearestTouchDelegate;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NearestTouchDelegate"
.end annotation


# instance fields
.field private mInitialTouchTarget:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$NearestTouchDelegate;-><init>()V

    return-void
.end method

.method private findNearestChild(Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 9

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int v5, p2, v5

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    sub-int v6, p3, v6

    mul-int v7, v5, v5

    mul-int v8, v6, v6

    add-int/2addr v7, v8

    if-le v1, v7, :cond_0

    move-object v0, v4

    move v1, v7

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v2, v3, v4}, Lcom/oneplus/lib/widget/TimePickerClockDelegate$NearestTouchDelegate;->findNearestChild(Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$NearestTouchDelegate;->mInitialTouchTarget:Landroid/view/View;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$NearestTouchDelegate;->mInitialTouchTarget:Landroid/view/View;

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$NearestTouchDelegate;->mInitialTouchTarget:Landroid/view/View;

    if-nez v2, :cond_2

    const/4 v1, 0x0

    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p2, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {v2, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    neg-float v6, v3

    neg-float v7, v4

    invoke-virtual {p2, v6, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v6, 0x1

    if-eq v0, v6, :cond_3

    const/4 v6, 0x3

    if-ne v0, v6, :cond_4

    :cond_3
    iput-object v1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$NearestTouchDelegate;->mInitialTouchTarget:Landroid/view/View;

    :cond_4
    return v5
.end method
