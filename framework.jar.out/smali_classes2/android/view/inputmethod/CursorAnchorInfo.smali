.class public final Landroid/view/inputmethod/CursorAnchorInfo;
.super Ljava/lang/Object;
.source "CursorAnchorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/CursorAnchorInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_HAS_INVISIBLE_REGION:I = 0x2

.field public static final FLAG_HAS_VISIBLE_REGION:I = 0x1

.field public static final FLAG_IS_RTL:I = 0x4


# instance fields
.field private final mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

.field private final mComposingText:Ljava/lang/CharSequence;

.field private final mComposingTextStart:I

.field private final mHashCode:I

.field private final mInsertionMarkerBaseline:F

.field private final mInsertionMarkerBottom:F

.field private final mInsertionMarkerFlags:I

.field private final mInsertionMarkerHorizontal:F

.field private final mInsertionMarkerTop:F

.field private final mMatrixValues:[F

.field private final mSelectionEnd:I

.field private final mSelectionStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/CursorAnchorInfo$1;

    invoke-direct {v0}, Landroid/view/inputmethod/CursorAnchorInfo$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/CursorAnchorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mHashCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    const-class v0, Landroid/view/inputmethod/SparseRectFArray;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/SparseRectFArray;

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    return-void
.end method

.method private constructor <init>(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->access$100(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->access$200(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->access$300(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->access$400(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->access$500(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->access$600(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->access$700(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->access$800(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->access$900(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->access$1000(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->access$1000(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->build()Landroid/view/inputmethod/SparseRectFArray;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    const/16 v0, 0x9

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->access$1100(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->access$1200(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)[F

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_1
    sget-object v0, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    :goto_1
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mHashCode:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/inputmethod/CursorAnchorInfo$Builder;Landroid/view/inputmethod/CursorAnchorInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/CursorAnchorInfo;-><init>(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)V

    return-void
.end method

.method private static areSameFloatImpl(FF)Z
    .locals 2

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    cmpl-float v0, p0, p1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Landroid/view/inputmethod/CursorAnchorInfo;

    if-nez v2, :cond_2

    return v0

    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/view/inputmethod/CursorAnchorInfo;

    invoke-virtual {p0}, Landroid/view/inputmethod/CursorAnchorInfo;->hashCode()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/inputmethod/CursorAnchorInfo;->hashCode()I

    move-result v4

    if-eq v3, v4, :cond_3

    return v0

    :cond_3
    iget v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    iget v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    if-ne v3, v4, :cond_d

    iget v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    iget v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    if-eq v3, v4, :cond_4

    goto/16 :goto_3

    :cond_4
    iget v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    iget v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    if-ne v3, v4, :cond_c

    iget v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    iget v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    invoke-static {v3, v4}, Landroid/view/inputmethod/CursorAnchorInfo;->areSameFloatImpl(FF)Z

    move-result v3

    if-eqz v3, :cond_c

    iget v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    iget v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    invoke-static {v3, v4}, Landroid/view/inputmethod/CursorAnchorInfo;->areSameFloatImpl(FF)Z

    move-result v3

    if-eqz v3, :cond_c

    iget v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    iget v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    invoke-static {v3, v4}, Landroid/view/inputmethod/CursorAnchorInfo;->areSameFloatImpl(FF)Z

    move-result v3

    if-eqz v3, :cond_c

    iget v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    iget v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    invoke-static {v3, v4}, Landroid/view/inputmethod/CursorAnchorInfo;->areSameFloatImpl(FF)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    iget-object v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    iget-object v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v0

    :cond_6
    iget v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    iget v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    if-ne v3, v4, :cond_b

    iget-object v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    iget-object v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    iget-object v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    array-length v3, v3

    iget-object v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    array-length v4, v4

    if-eq v3, v4, :cond_8

    return v0

    :cond_8
    move v3, v0

    :goto_0
    iget-object v4, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    array-length v4, v4

    if-ge v3, v4, :cond_a

    iget-object v4, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    aget v4, v4, v3

    iget-object v5, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    aget v5, v5, v3

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_9

    return v0

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_a
    return v1

    :cond_b
    :goto_1
    return v0

    :cond_c
    :goto_2
    return v0

    :cond_d
    :goto_3
    return v0
.end method

.method public getCharacterBounds(I)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/SparseRectFArray;->get(I)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getCharacterBoundsFlags(I)I
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/SparseRectFArray;->getFlags(II)I

    move-result v0

    return v0
.end method

.method public getComposingText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getComposingTextStart()I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    return v0
.end method

.method public getInsertionMarkerBaseline()F
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    return v0
.end method

.method public getInsertionMarkerBottom()F
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    return v0
.end method

.method public getInsertionMarkerFlags()I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    return v0
.end method

.method public getInsertionMarkerHorizontal()F
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    return v0
.end method

.method public getInsertionMarkerTop()F
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    return v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 2

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    return-object v0
.end method

.method public getSelectionEnd()I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    return v0
.end method

.method public getSelectionStart()I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mHashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CursorAnchorInfo{mHashCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mHashCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSelection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mComposingTextStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mComposingText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mInsertionMarkerFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mInsertionMarkerHorizontal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mInsertionMarkerTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mInsertionMarkerBaseline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mInsertionMarkerBottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mCharacterBoundsArray="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mMatrix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mHashCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    return-void
.end method
