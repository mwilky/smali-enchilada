.class Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;
.super Lcom/android/internal/widget/ExploreByTouchHelper;
.source "RadialTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RadialTimePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadialPickerTouchHelper"
.end annotation


# instance fields
.field private final MASK_TYPE:I

.field private final MASK_VALUE:I

.field private final MINUTE_INCREMENT:I

.field private final SHIFT_TYPE:I

.field private final SHIFT_VALUE:I

.field private final TYPE_HOUR:I

.field private final TYPE_MINUTE:I

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/widget/RadialTimePickerView;


# direct methods
.method public constructor <init>(Landroid/widget/RadialTimePickerView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, 0x1

    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->TYPE_HOUR:I

    const/4 p1, 0x2

    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->TYPE_MINUTE:I

    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->SHIFT_TYPE:I

    const/16 p1, 0xf

    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->MASK_TYPE:I

    const/16 p1, 0x8

    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->SHIFT_VALUE:I

    const/16 p1, 0xff

    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->MASK_VALUE:I

    const/4 p1, 0x5

    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->MINUTE_INCREMENT:I

    return-void
.end method

.method private adjustPicker(I)V
    .locals 7

    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->access$100(Landroid/widget/RadialTimePickerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v1

    iget-object v2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v2}, Landroid/widget/RadialTimePickerView;->access$200(Landroid/widget/RadialTimePickerView;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    const/4 v3, 0x0

    const/16 v4, 0x17

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->hour24To12(I)I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0xc

    :goto_0
    move v1, v4

    goto :goto_1

    :cond_1
    const/4 v0, 0x5

    iget-object v1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v1

    div-int v2, v1, v0

    const/4 v3, 0x0

    const/16 v1, 0x37

    :goto_1
    add-int v4, v2, p1

    mul-int/2addr v4, v0

    invoke-static {v4, v3, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v5

    iget-object v6, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v6}, Landroid/widget/RadialTimePickerView;->access$100(Landroid/widget/RadialTimePickerView;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v6, v5}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    goto :goto_2

    :cond_2
    iget-object v6, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v6, v5}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    :goto_2
    return-void
.end method

.method private getBoundsForVirtualView(ILandroid/graphics/Rect;)V
    .locals 13

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result v0

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v3, v1}, Landroid/widget/RadialTimePickerView;->access$900(Landroid/widget/RadialTimePickerView;I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v4}, Landroid/widget/RadialTimePickerView;->access$1000(Landroid/widget/RadialTimePickerView;)I

    move-result v4

    iget-object v5, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v5}, Landroid/widget/RadialTimePickerView;->access$1100(Landroid/widget/RadialTimePickerView;)[I

    move-result-object v5

    aget v2, v5, v2

    sub-int/2addr v4, v2

    int-to-float v2, v4

    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v4}, Landroid/widget/RadialTimePickerView;->access$1200(Landroid/widget/RadialTimePickerView;)I

    move-result v4

    int-to-float v4, v4

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v2}, Landroid/widget/RadialTimePickerView;->access$1000(Landroid/widget/RadialTimePickerView;)I

    move-result v2

    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v4}, Landroid/widget/RadialTimePickerView;->access$1100(Landroid/widget/RadialTimePickerView;)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v4}, Landroid/widget/RadialTimePickerView;->access$1200(Landroid/widget/RadialTimePickerView;)I

    move-result v4

    int-to-float v4, v4

    :goto_0
    iget-object v5, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v5, v1}, Landroid/widget/RadialTimePickerView;->access$1300(Landroid/widget/RadialTimePickerView;I)I

    move-result v5

    int-to-float v3, v5

    goto :goto_1

    :cond_1
    if-ne v0, v2, :cond_2

    iget-object v2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v2}, Landroid/widget/RadialTimePickerView;->access$1000(Landroid/widget/RadialTimePickerView;)I

    move-result v2

    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v4}, Landroid/widget/RadialTimePickerView;->access$1100(Landroid/widget/RadialTimePickerView;)[I

    move-result-object v4

    aget v3, v4, v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v3, v1}, Landroid/widget/RadialTimePickerView;->access$1400(Landroid/widget/RadialTimePickerView;I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v4}, Landroid/widget/RadialTimePickerView;->access$1200(Landroid/widget/RadialTimePickerView;)I

    move-result v4

    int-to-float v4, v4

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    iget-object v7, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v7}, Landroid/widget/RadialTimePickerView;->access$1500(Landroid/widget/RadialTimePickerView;)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    iget-object v8, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v8}, Landroid/widget/RadialTimePickerView;->access$1600(Landroid/widget/RadialTimePickerView;)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v9, v2

    sub-float/2addr v8, v9

    sub-float v9, v7, v4

    float-to-int v9, v9

    sub-float v10, v8, v4

    float-to-int v10, v10

    add-float v11, v7, v4

    float-to-int v11, v11

    add-float v12, v8, v4

    float-to-int v12, v12

    invoke-virtual {p2, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getCircularDiff(III)I
    .locals 3

    sub-int v0, p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/lit8 v1, p3, 0x2

    if-le v0, v1, :cond_0

    sub-int v2, p3, v0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    return v2
.end method

.method private getTypeFromId(I)I
    .locals 1

    ushr-int/lit8 v0, p1, 0x0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method private getValueFromId(I)I
    .locals 1

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private getVirtualViewDescription(II)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    nop

    return-object v0
.end method

.method private getVirtualViewIdAfter(II)I
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    add-int/lit8 v0, p2, 0x1

    iget-object v1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v1}, Landroid/widget/RadialTimePickerView;->access$200(Landroid/widget/RadialTimePickerView;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x17

    goto :goto_0

    :cond_0
    const/16 v1, 0xc

    :goto_0
    if-gt v0, v1, :cond_1

    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v2

    return v2

    :cond_1
    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    rem-int/lit8 v1, p2, 0x5

    sub-int v1, p2, v1

    add-int/lit8 v2, v1, 0x5

    if-ge p2, v0, :cond_3

    if-le v2, v0, :cond_3

    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v3

    return v3

    :cond_3
    const/16 v3, 0x3c

    if-ge v2, v3, :cond_4

    invoke-direct {p0, p1, v2}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v3

    return v3

    :cond_4
    :goto_1
    const/high16 v0, -0x80000000

    return v0
.end method

.method private hour12To24(II)I
    .locals 2

    move v0, p1

    const/16 v1, 0xc

    if-ne p1, v1, :cond_0

    if-nez p2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    add-int/lit8 v0, v0, 0xc

    :cond_1
    :goto_0
    return v0
.end method

.method private hour24To12(I)I
    .locals 1

    const/16 v0, 0xc

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-le p1, v0, :cond_1

    add-int/lit8 v0, p1, -0xc

    return v0

    :cond_1
    return p1
.end method

.method private isVirtualViewSelected(II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object v2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v2}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v2

    if-ne v2, p2, :cond_0

    move v0, v1

    nop

    :cond_0
    :goto_0
    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v2}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v2

    if-ne v2, p2, :cond_2

    move v0, v1

    nop

    :cond_2
    goto :goto_0

    :cond_3
    nop

    :goto_1
    return v0
.end method

.method private makeId(II)I
    .locals 2

    shl-int/lit8 v0, p1, 0x0

    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 9

    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroid/widget/RadialTimePickerView;->access$300(Landroid/widget/RadialTimePickerView;FFZ)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/widget/RadialTimePickerView;->access$400(II)I

    move-result v2

    rem-int/lit16 v2, v2, 0x168

    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v3}, Landroid/widget/RadialTimePickerView;->access$100(Landroid/widget/RadialTimePickerView;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v3, p1, p2}, Landroid/widget/RadialTimePickerView;->access$500(Landroid/widget/RadialTimePickerView;FF)Z

    move-result v3

    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v4, v2, v3}, Landroid/widget/RadialTimePickerView;->access$600(Landroid/widget/RadialTimePickerView;IZ)I

    move-result v4

    iget-object v5, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v5}, Landroid/widget/RadialTimePickerView;->access$200(Landroid/widget/RadialTimePickerView;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    invoke-direct {p0, v4}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->hour24To12(I)I

    move-result v5

    :goto_0
    invoke-direct {p0, v1, v5}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v1

    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v3, v0}, Landroid/widget/RadialTimePickerView;->access$700(Landroid/widget/RadialTimePickerView;I)I

    move-result v3

    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v4, v2}, Landroid/widget/RadialTimePickerView;->access$700(Landroid/widget/RadialTimePickerView;I)I

    move-result v4

    const/16 v5, 0x3c

    invoke-direct {p0, v1, v3, v5}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getCircularDiff(III)I

    move-result v6

    invoke-direct {p0, v4, v3, v5}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getCircularDiff(III)I

    move-result v5

    if-ge v6, v5, :cond_2

    move v7, v1

    goto :goto_1

    :cond_2
    move v7, v4

    :goto_1
    const/4 v8, 0x2

    invoke-direct {p0, v8, v7}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v1

    :goto_2
    goto :goto_3

    :cond_3
    const/high16 v1, -0x80000000

    :goto_3
    return v1
.end method

.method protected getVisibleVirtualViews(Landroid/util/IntArray;)V
    .locals 5

    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->access$100(Landroid/widget/RadialTimePickerView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->access$200(Landroid/widget/RadialTimePickerView;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-object v2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v2}, Landroid/widget/RadialTimePickerView;->access$200(Landroid/widget/RadialTimePickerView;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x17

    goto :goto_0

    :cond_0
    const/16 v2, 0xc

    :goto_0
    move v3, v0

    :goto_1
    if-gt v3, v2, :cond_1

    invoke-direct {p0, v1, v3}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IntArray;->add(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    goto :goto_3

    :cond_2
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0x3c

    if-ge v1, v2, :cond_4

    const/4 v2, 0x2

    invoke-direct {p0, v2, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/IntArray;->add(I)V

    if-le v0, v1, :cond_3

    add-int/lit8 v3, v1, 0x5

    if-ge v0, v3, :cond_3

    invoke-direct {p0, v2, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/IntArray;->add(I)V

    :cond_3
    add-int/lit8 v1, v1, 0x5

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 5

    const/16 v0, 0x10

    if-ne p2, v0, :cond_2

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result v0

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v3}, Landroid/widget/RadialTimePickerView;->access$200(Landroid/widget/RadialTimePickerView;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v3}, Landroid/widget/RadialTimePickerView;->access$800(Landroid/widget/RadialTimePickerView;)I

    move-result v3

    invoke-direct {p0, v1, v3}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->hour12To24(II)I

    move-result v3

    :goto_0
    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v4, v3}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    return v2

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v3, v1}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result v0

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getVirtualViewDescription(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result v0

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getVirtualViewDescription(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v3}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getBoundsForVirtualView(ILandroid/graphics/Rect;)V

    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    invoke-direct {p0, v0, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->isVirtualViewSelected(II)Z

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    invoke-direct {p0, v0, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getVirtualViewIdAfter(II)I

    move-result v4

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_0

    iget-object v5, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {p2, v5, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/widget/ExploreByTouchHelper;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x1000

    if-eq p2, v0, :cond_2

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->adjustPicker(I)V

    return v1

    :cond_2
    invoke-direct {p0, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->adjustPicker(I)V

    return v1
.end method
