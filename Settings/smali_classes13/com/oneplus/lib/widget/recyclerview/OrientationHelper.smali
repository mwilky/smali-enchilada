.class abstract Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;
.super Ljava/lang/Object;
.source "OrientationHelper.java"


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INVALID_SIZE:I = -0x80000000

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mLastTotalSpace:I

.field protected final mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;


# direct methods
.method private constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->mLastTotalSpace:I

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public static createHorizontalHelper(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;
    .locals 1

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$1;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)V

    return-object v0
.end method

.method public static createOrientationHelper(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;I)Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->createVerticalHelper(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-static {p0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->createHorizontalHelper(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createVerticalHelper(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;
    .locals 1

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$2;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper$2;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)V

    return-object v0
.end method


# virtual methods
.method public abstract getDecoratedEnd(Landroid/view/View;)I
.end method

.method public abstract getDecoratedMeasurement(Landroid/view/View;)I
.end method

.method public abstract getDecoratedMeasurementInOther(Landroid/view/View;)I
.end method

.method public abstract getDecoratedStart(Landroid/view/View;)I
.end method

.method public abstract getEnd()I
.end method

.method public abstract getEndAfterPadding()I
.end method

.method public abstract getEndPadding()I
.end method

.method public abstract getStartAfterPadding()I
.end method

.method public abstract getTotalSpace()I
.end method

.method public getTotalSpaceChange()I
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->mLastTotalSpace:I

    const/high16 v1, -0x80000000

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->mLastTotalSpace:I

    sub-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public abstract offsetChild(Landroid/view/View;I)V
.end method

.method public abstract offsetChildren(I)V
.end method

.method public onLayoutComplete()V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->mLastTotalSpace:I

    return-void
.end method
