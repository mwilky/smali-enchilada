.class public final Landroid/view/inputmethod/CursorAnchorInfo$Builder;
.super Ljava/lang/Object;
.source "CursorAnchorInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/CursorAnchorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

.field private mComposingText:Ljava/lang/CharSequence;

.field private mComposingTextStart:I

.field private mInsertionMarkerBaseline:F

.field private mInsertionMarkerBottom:F

.field private mInsertionMarkerFlags:I

.field private mInsertionMarkerHorizontal:F

.field private mInsertionMarkerTop:F

.field private mMatrixInitialized:Z

.field private mMatrixValues:[F

.field private mSelectionEnd:I

.field private mSelectionStart:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionStart:I

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionEnd:I

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingTextStart:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingText:Ljava/lang/CharSequence;

    const/high16 v1, 0x7fc00000    # NaNf

    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerHorizontal:F

    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerTop:F

    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBaseline:F

    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBottom:F

    const/4 v1, 0x0

    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerFlags:I

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixValues:[F

    iput-boolean v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixInitialized:Z

    return-void
.end method

.method static synthetic access$100(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionStart:I

    return v0
.end method

.method static synthetic access$1000(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixInitialized:Z

    return v0
.end method

.method static synthetic access$1200(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)[F
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixValues:[F

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionEnd:I

    return v0
.end method

.method static synthetic access$300(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingTextStart:I

    return v0
.end method

.method static synthetic access$400(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$500(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerFlags:I

    return v0
.end method

.method static synthetic access$600(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerHorizontal:F

    return v0
.end method

.method static synthetic access$700(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerTop:F

    return v0
.end method

.method static synthetic access$800(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBaseline:F

    return v0
.end method

.method static synthetic access$900(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBottom:F

    return v0
.end method


# virtual methods
.method public addCharacterBounds(IFFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .locals 8

    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    invoke-direct {v0}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    :cond_0
    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->append(IFFFFI)Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index must not be a negative integer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Landroid/view/inputmethod/CursorAnchorInfo;
    .locals 3

    iget-boolean v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixInitialized:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    invoke-virtual {v0}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerHorizontal:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerTop:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBaseline:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBottom:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Coordinate transformation matrix is required when positional parameters are specified."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_1
    new-instance v0, Landroid/view/inputmethod/CursorAnchorInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/CursorAnchorInfo;-><init>(Landroid/view/inputmethod/CursorAnchorInfo$Builder;Landroid/view/inputmethod/CursorAnchorInfo$1;)V

    return-object v0
.end method

.method public reset()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionStart:I

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionEnd:I

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingTextStart:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingText:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerFlags:I

    const/high16 v1, 0x7fc00000    # NaNf

    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerHorizontal:F

    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerTop:F

    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBaseline:F

    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBottom:F

    iput-boolean v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixInitialized:Z

    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    invoke-virtual {v0}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->reset()V

    :cond_0
    return-void
.end method

.method public setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .locals 1

    iput p1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingTextStart:I

    if-nez p2, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingText:Ljava/lang/CharSequence;

    :goto_0
    return-object p0
.end method

.method public setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerHorizontal:F

    iput p2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerTop:F

    iput p3, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBaseline:F

    iput p4, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBottom:F

    iput p5, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerFlags:I

    return-object p0
.end method

.method public setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixValues:[F

    if-nez v0, :cond_0

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixValues:[F

    :cond_0
    if-eqz p1, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    :goto_0
    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixInitialized:Z

    return-object p0
.end method

.method public setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionStart:I

    iput p2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionEnd:I

    return-object p0
.end method
