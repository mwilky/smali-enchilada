.class public Landroid/widget/TableRow$LayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "TableRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TableRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static final LOCATION:I = 0x0

.field private static final LOCATION_NEXT:I = 0x1


# instance fields
.field public column:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mOffset:[I

.field public span:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 464
    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 412
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    .line 465
    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    .line 466
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 467
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "column"    # I

    .line 479
    invoke-direct {p0}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    .line 480
    iput p1, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    .line 481
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 440
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 412
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    .line 441
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    .line 442
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 443
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "initWeight"    # F

    .line 453
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 412
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    .line 454
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    .line 455
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 456
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 418
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 412
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    .line 420
    sget-object v0, Lcom/android/internal/R$styleable;->TableRow_Cell:[I

    .line 421
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 424
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    .line 425
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 426
    iget v2, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    if-gt v2, v1, :cond_0

    .line 427
    iput v1, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 430
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 431
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 487
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    .line 488
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 494
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 412
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    .line 495
    return-void
.end method

.method static synthetic access$200(Landroid/widget/TableRow$LayoutParams;)[I
    .locals 1
    .param p0, "x0"    # Landroid/widget/TableRow$LayoutParams;

    .line 396
    iget-object v0, p0, Landroid/widget/TableRow$LayoutParams;->mOffset:[I

    return-object v0
.end method


# virtual methods
.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 517
    invoke-super {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 518
    const-string v0, "layout:column"

    iget v1, p0, Landroid/widget/TableRow$LayoutParams;->column:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 519
    const-string v0, "layout:span"

    iget v1, p0, Landroid/widget/TableRow$LayoutParams;->span:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 520
    return-void
.end method

.method protected setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "widthAttr"    # I
    .param p3, "heightAttr"    # I

    .line 500
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    const-string v0, "layout_width"

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->width:I

    goto :goto_0

    .line 503
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->width:I

    .line 507
    :goto_0
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    const-string v0, "layout_height"

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->height:I

    goto :goto_1

    .line 510
    :cond_1
    const/4 v0, -0x2

    iput v0, p0, Landroid/widget/TableRow$LayoutParams;->height:I

    .line 512
    :goto_1
    return-void
.end method
