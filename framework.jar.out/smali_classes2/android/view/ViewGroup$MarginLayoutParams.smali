.class public Landroid/view/ViewGroup$MarginLayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "ViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarginLayoutParams"
.end annotation


# static fields
.field public static final DEFAULT_MARGIN_RELATIVE:I = -0x80000000

.field private static final DEFAULT_MARGIN_RESOLVED:I = 0x0

.field private static final LAYOUT_DIRECTION_MASK:I = 0x3

.field private static final LEFT_MARGIN_UNDEFINED_MASK:I = 0x4

.field private static final NEED_RESOLUTION_MASK:I = 0x20

.field private static final RIGHT_MARGIN_UNDEFINED_MASK:I = 0x8

.field private static final RTL_COMPATIBILITY_MODE_MASK:I = 0x10

.field private static final UNDEFINED_MARGIN:I = -0x80000000


# instance fields
.field public bottomMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private endMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public leftMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field mMarginFlags:B
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x3
                mask = 0x3
                name = "LAYOUT_DIRECTION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4
                mask = 0x4
                name = "LEFT_MARGIN_UNDEFINED_MASK"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8
                mask = 0x8
                name = "RIGHT_MARGIN_UNDEFINED_MASK"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "RTL_COMPATIBILITY_MODE_MASK"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "NEED_RESOLUTION_MASK"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field public rightMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private startMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public topMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 v0, v0, -0x21

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 v0, v0, -0x11

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    invoke-direct {p0}, Landroid/view/ViewGroup$LayoutParams;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    sget-object v1, Lcom/android/internal/R$styleable;->ViewGroup_MarginLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setBaseAttributes(Landroid/content/res/TypedArray;II)V

    const/4 v3, -0x1

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    if-ltz v4, :cond_0

    iput v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_2

    :cond_0
    const/16 v5, 0x9

    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v6, 0xa

    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    const/16 v6, 0x8

    const/4 v7, 0x4

    if-ltz v5, :cond_1

    iput v5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    :cond_1
    const/4 v8, 0x3

    invoke-virtual {v1, v8, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v8, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v8, v0, :cond_2

    iget-byte v8, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/2addr v8, v7

    int-to-byte v8, v8

    iput-byte v8, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_2
    const/4 v8, 0x5

    invoke-virtual {v1, v8, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v8, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-ne v8, v0, :cond_3

    iget-byte v8, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/2addr v8, v6

    int-to-byte v8, v8

    iput-byte v8, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_3
    :goto_0
    const/4 v8, 0x7

    invoke-virtual {v1, v8, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    invoke-virtual {v1, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    if-ltz v3, :cond_4

    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v7, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v0, 0x6

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->isMarginRelative()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x11

    if-lt v3, v5, :cond_6

    if-nez v0, :cond_7

    :cond_6
    iget-byte v5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/lit8 v5, v5, 0x10

    int-to-byte v5, v5

    iput-byte v5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    :cond_7
    iget-byte v5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/2addr v2, v5

    int-to-byte v2, v2

    iput-byte v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 v0, v0, -0x21

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 v0, v0, -0x11

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewGroup$LayoutParams;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    iget-byte v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    return-void
.end method

.method private doResolveMargins()V
    .locals 4

    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    const/16 v1, 0x10

    and-int/2addr v0, v1

    const/high16 v2, -0x80000000

    if-ne v0, v1, :cond_1

    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    if-le v0, v2, :cond_0

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_0
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    if-le v0, v2, :cond_7

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    :cond_1
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    if-le v0, v2, :cond_2

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    if-le v0, v2, :cond_3

    iget v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    nop

    :cond_3
    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2

    :cond_4
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    if-le v0, v2, :cond_5

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    goto :goto_1

    :cond_5
    move v0, v3

    :goto_1
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    if-le v0, v2, :cond_6

    iget v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    nop

    :cond_6
    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    nop

    :cond_7
    :goto_2
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 v0, v0, -0x21

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    return-void
.end method


# virtual methods
.method public final copyMarginsFrom(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    iget-byte v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup$LayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    const-string v0, "leftMargin"

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string/jumbo v0, "topMargin"

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string/jumbo v0, "rightMargin"

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v0, "bottomMargin"

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string/jumbo v0, "startMargin"

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v0, "endMargin"

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    return-void
.end method

.method public getLayoutDirection()I
    .locals 1

    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getMarginEnd()I
    .locals 2

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    return v0

    :cond_0
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->doResolveMargins()V

    :cond_1
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return v0

    :cond_2
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return v0
.end method

.method public getMarginStart()I
    .locals 2

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    return v0

    :cond_0
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->doResolveMargins()V

    :cond_1
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return v0

    :cond_2
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return v0
.end method

.method public isLayoutRtl()Z
    .locals 2

    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isMarginRelative()Z
    .locals 2

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onDebugDraw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-static {v2}, Landroid/view/View;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    :goto_0
    nop

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, v2, Landroid/graphics/Insets;->left:I

    add-int v6, v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v2, Landroid/graphics/Insets;->top:I

    add-int v7, v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, v2, Landroid/graphics/Insets;->right:I

    sub-int v8, v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, v2, Landroid/graphics/Insets;->bottom:I

    sub-int v9, v3, v4

    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v11, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v12, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v13, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move-object/from16 v5, p2

    move-object/from16 v14, p3

    invoke-static/range {v5 .. v14}, Landroid/view/ViewGroup;->access$500(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V

    return-void
.end method

.method public resolveLayoutDirection(I)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setLayoutDirection(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->isMarginRelative()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->doResolveMargins()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 v0, v0, 0x3

    if-eq p1, v0, :cond_2

    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 v0, v0, -0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 v1, p1, 0x3

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->isMarginRelative()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    goto :goto_0

    :cond_1
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 v0, v0, -0x21

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    :cond_2
    :goto_0
    return-void
.end method

.method public setMarginEnd(I)V
    .locals 1

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    return-void
.end method

.method public setMarginStart(I)V
    .locals 1

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    return-void
.end method

.method public setMargins(IIII)V
    .locals 1

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 v0, v0, -0x5

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 v0, v0, -0x9

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->isMarginRelative()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    goto :goto_0

    :cond_0
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 v0, v0, -0x21

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    :goto_0
    return-void
.end method

.method public setMarginsRelative(IIII)V
    .locals 1

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    iput p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    return-void
.end method
