.class public Landroid/app/assist/AssistStructure$ViewNode;
.super Ljava/lang/Object;
.source "AssistStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewNode"
.end annotation


# static fields
.field static final FLAGS_ACCESSIBILITY_FOCUSED:I = 0x1000

.field static final FLAGS_ACTIVATED:I = 0x2000

.field static final FLAGS_ALL_CONTROL:I = -0x100000

.field static final FLAGS_ASSIST_BLOCKED:I = 0x80

.field static final FLAGS_CHECKABLE:I = 0x100

.field static final FLAGS_CHECKED:I = 0x200

.field static final FLAGS_CLICKABLE:I = 0x400

.field static final FLAGS_CONTEXT_CLICKABLE:I = 0x4000

.field static final FLAGS_DISABLED:I = 0x1

.field static final FLAGS_FOCUSABLE:I = 0x10

.field static final FLAGS_FOCUSED:I = 0x20

.field static final FLAGS_HAS_ALPHA:I = 0x20000000

.field static final FLAGS_HAS_AUTOFILL_DATA:I = -0x80000000

.field static final FLAGS_HAS_CHILDREN:I = 0x100000

.field static final FLAGS_HAS_COMPLEX_TEXT:I = 0x800000

.field static final FLAGS_HAS_CONTENT_DESCRIPTION:I = 0x2000000

.field static final FLAGS_HAS_ELEVATION:I = 0x10000000

.field static final FLAGS_HAS_EXTRAS:I = 0x400000

.field static final FLAGS_HAS_ID:I = 0x200000

.field static final FLAGS_HAS_INPUT_TYPE:I = 0x40000

.field static final FLAGS_HAS_LARGE_COORDS:I = 0x4000000

.field static final FLAGS_HAS_LOCALE_LIST:I = 0x10000

.field static final FLAGS_HAS_MATRIX:I = 0x40000000

.field static final FLAGS_HAS_SCROLL:I = 0x8000000

.field static final FLAGS_HAS_TEXT:I = 0x1000000

.field static final FLAGS_HAS_URL:I = 0x80000

.field static final FLAGS_LONG_CLICKABLE:I = 0x800

.field static final FLAGS_OPAQUE:I = 0x8000

.field static final FLAGS_SELECTED:I = 0x40

.field static final FLAGS_VISIBILITY_MASK:I = 0xc

.field public static final TEXT_COLOR_UNDEFINED:I = 0x1

.field public static final TEXT_STYLE_BOLD:I = 0x1

.field public static final TEXT_STYLE_ITALIC:I = 0x2

.field public static final TEXT_STYLE_STRIKE_THRU:I = 0x8

.field public static final TEXT_STYLE_UNDERLINE:I = 0x4


# instance fields
.field mAlpha:F

.field mAutofillHints:[Ljava/lang/String;

.field mAutofillId:Landroid/view/autofill/AutofillId;

.field mAutofillOptions:[Ljava/lang/CharSequence;

.field mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

.field mAutofillType:I

.field mAutofillValue:Landroid/view/autofill/AutofillValue;

.field mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

.field mClassName:Ljava/lang/String;

.field mContentDescription:Ljava/lang/CharSequence;

.field mElevation:F

.field mExtras:Landroid/os/Bundle;

.field mFlags:I

.field mHeight:I

.field mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

.field mId:I

.field mIdEntry:Ljava/lang/String;

.field mIdPackage:Ljava/lang/String;

.field mIdType:Ljava/lang/String;

.field mImportantForAutofill:I

.field mInputType:I

.field mLocaleList:Landroid/os/LocaleList;

.field mMatrix:Landroid/graphics/Matrix;

.field mMaxEms:I

.field mMaxLength:I

.field mMinEms:I

.field mSanitized:Z

.field mScrollX:I

.field mScrollY:I

.field mText:Landroid/app/assist/AssistStructure$ViewNodeText;

.field mTextIdEntry:Ljava/lang/String;

.field mWebDomain:Ljava/lang/String;

.field mWebScheme:Ljava/lang/String;

.field mWidth:I

.field mX:I

.field mY:I


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    return-void
.end method

.method constructor <init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;I)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    const v2, 0x22222222

    invoke-virtual {p1, v2, p2}, Landroid/app/assist/AssistStructure$ParcelTransferReader;->readParcel(II)Landroid/os/Parcel;

    move-result-object v2

    iget v3, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadViews:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadViews:I

    iget-object v3, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mStringReader:Landroid/os/PooledStringReader;

    invoke-virtual {v3}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mClassName:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    iget v5, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    const/high16 v6, 0x200000

    and-int/2addr v6, v5

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    iget v6, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    if-eq v6, v0, :cond_0

    invoke-virtual {v3}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdType:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdPackage:Ljava/lang/String;

    :cond_0
    const/high16 v0, -0x80000000

    and-int/2addr v0, v5

    const/4 v6, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v4, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    invoke-virtual {v2, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    invoke-virtual {v2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillHints:[Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillValue;

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    invoke-virtual {v2}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v7, v0, Landroid/view/ViewStructure$HtmlInfo;

    if-eqz v7, :cond_2

    move-object v7, v0

    check-cast v7, Landroid/view/ViewStructure$HtmlInfo;

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

    :cond_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    invoke-virtual {v3}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mTextIdEntry:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mImportantForAutofill:I

    :cond_3
    const/high16 v0, 0x4000000

    and-int/2addr v0, v5

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    and-int/lit16 v7, v0, 0x7fff

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    shr-int/lit8 v7, v0, 0x10

    and-int/lit16 v7, v7, 0x7fff

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    and-int/lit16 v7, v0, 0x7fff

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    shr-int/lit8 v7, v0, 0x10

    and-int/lit16 v7, v7, 0x7fff

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    :goto_1
    const/high16 v0, 0x8000000

    and-int/2addr v0, v5

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    :cond_5
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, v5

    if-eqz v0, :cond_6

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    iget-object v0, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mTmpMatrix:[F

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    iget-object v7, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mTmpMatrix:[F

    invoke-virtual {v0, v7}, Landroid/graphics/Matrix;->setValues([F)V

    :cond_6
    const/high16 v0, 0x10000000

    and-int/2addr v0, v5

    if-eqz v0, :cond_7

    invoke-virtual {v2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    :cond_7
    const/high16 v0, 0x20000000

    and-int/2addr v0, v5

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    :cond_8
    const/high16 v0, 0x2000000

    and-int/2addr v0, v5

    if-eqz v0, :cond_9

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    :cond_9
    const/high16 v0, 0x1000000

    and-int/2addr v0, v5

    if-eqz v0, :cond_b

    new-instance v0, Landroid/app/assist/AssistStructure$ViewNodeText;

    const/high16 v7, 0x800000

    and-int/2addr v7, v5

    if-nez v7, :cond_a

    goto :goto_2

    :cond_a
    move v4, v1

    :goto_2
    invoke-direct {v0, v2, v4}, Landroid/app/assist/AssistStructure$ViewNodeText;-><init>(Landroid/os/Parcel;Z)V

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    :cond_b
    const/high16 v0, 0x40000

    and-int/2addr v0, v5

    if-eqz v0, :cond_c

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    :cond_c
    const/high16 v0, 0x80000

    and-int/2addr v0, v5

    if-eqz v0, :cond_d

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebScheme:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    :cond_d
    const/high16 v0, 0x10000

    and-int/2addr v0, v5

    if-eqz v0, :cond_e

    invoke-virtual {v2, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    :cond_e
    const/high16 v0, 0x400000

    and-int/2addr v0, v5

    if-eqz v0, :cond_f

    invoke-virtual {v2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    :cond_f
    const/high16 v0, 0x100000

    and-int/2addr v0, v5

    if-eqz v0, :cond_10

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v4, v0, [Landroid/app/assist/AssistStructure$ViewNode;

    iput-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    nop

    :goto_3
    if-ge v1, v0, :cond_10

    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    new-instance v6, Landroid/app/assist/AssistStructure$ViewNode;

    add-int/lit8 v7, p2, 0x1

    invoke-direct {v6, p1, v7}, Landroid/app/assist/AssistStructure$ViewNode;-><init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;I)V

    aput-object v6, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_10
    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    return v0
.end method

.method public getAutofillHints()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillHints:[Ljava/lang/String;

    return-object v0
.end method

.method public getAutofillId()Landroid/view/autofill/AutofillId;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public getAutofillOptions()[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getAutofillType()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    return v0
.end method

.method public getAutofillValue()Landroid/view/autofill/AutofillValue;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    return-object v0
.end method

.method public getChildAt(I)Landroid/app/assist/AssistStructure$ViewNode;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getElevation()F
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    return v0
.end method

.method public getHint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mHint:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getHtmlInfo()Landroid/view/ViewStructure$HtmlInfo;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    return v0
.end method

.method public getIdEntry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    return-object v0
.end method

.method public getIdPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getIdType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdType:Ljava/lang/String;

    return-object v0
.end method

.method public getImportantForAutofill()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mImportantForAutofill:I

    return v0
.end method

.method public getInputType()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    return v0
.end method

.method public getLocaleList()Landroid/os/LocaleList;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    return-object v0
.end method

.method public getMaxTextEms()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    return v0
.end method

.method public getMaxTextLength()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    return v0
.end method

.method public getMinTextEms()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    return v0
.end method

.method public getScrollX()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    return v0
.end method

.method public getScrollY()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTextBackgroundColor()I
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextBackgroundColor:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getTextColor()I
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextColor:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getTextIdEntry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mTextIdEntry:Ljava/lang/String;

    return-object v0
.end method

.method public getTextLineBaselines()[I
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineBaselines:[I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTextLineCharOffsets()[I
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineCharOffsets:[I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTextSelectionEnd()I
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionEnd:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getTextSelectionStart()I
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionStart:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getTextSize()F
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSize:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTextStyle()I
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextStyle:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTop()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    return v0
.end method

.method public getTransformation()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getWebDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getWebScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebScheme:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    return v0
.end method

.method public isAccessibilityFocused()Z
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isActivated()Z
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAssistBlocked()Z
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCheckable()Z
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isChecked()Z
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isClickable()Z
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isContextClickable()Z
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isFocusable()Z
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFocused()Z
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLongClickable()Z
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOpaque()Z
    .locals 2

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSanitized()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAutofillOverlay(Landroid/app/assist/AssistStructure$AutofillOverlay;)V
    .locals 0

    iput-object p1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    return-void
.end method

.method public setWebDomain(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "AssistStructure"

    const-string v2, "Failed to parse web domain"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebScheme:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    return-void
.end method

.method public updateAutofillValue(Landroid/view/autofill/AutofillValue;)V
    .locals 2

    iput-object p1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/assist/AssistStructure$ViewNodeText;

    invoke-direct {v0}, Landroid/app/assist/AssistStructure$ViewNodeText;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    :cond_0
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    :cond_1
    return-void
.end method

.method writeSelfToParcel(Landroid/os/Parcel;Landroid/os/PooledStringWriter;Z[F)I
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    const/4 v4, 0x1

    iget v5, v0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    const v6, 0xfffff

    and-int/2addr v5, v6

    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    const/high16 v7, 0x200000

    const/4 v8, -0x1

    if-eq v6, v8, :cond_0

    or-int/2addr v5, v7

    :cond_0
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    const/high16 v9, -0x80000000

    if-eqz v6, :cond_1

    or-int/2addr v5, v9

    :cond_1
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    and-int/lit16 v6, v6, -0x8000

    const/high16 v10, 0x4000000

    const/4 v12, 0x0

    if-nez v6, :cond_4

    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    and-int/lit16 v6, v6, -0x8000

    if-nez v6, :cond_4

    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    and-int/lit16 v6, v6, -0x8000

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    move v6, v12

    :goto_0
    iget v13, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    and-int/lit16 v13, v13, -0x8000

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    goto :goto_1

    :cond_3
    move v13, v12

    :goto_1
    or-int/2addr v6, v13

    if-eqz v6, :cond_5

    :cond_4
    or-int/2addr v5, v10

    :cond_5
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    const/high16 v13, 0x8000000

    if-nez v6, :cond_6

    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    if-eqz v6, :cond_7

    :cond_6
    or-int/2addr v5, v13

    :cond_7
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v14, 0x40000000    # 2.0f

    if-eqz v6, :cond_8

    or-int/2addr v5, v14

    :cond_8
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    const/4 v15, 0x0

    cmpl-float v6, v6, v15

    const/high16 v15, 0x10000000

    if-eqz v6, :cond_9

    or-int/2addr v5, v15

    :cond_9
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    const/high16 v16, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v16

    const/high16 v16, 0x20000000

    if-eqz v6, :cond_a

    or-int v5, v5, v16

    :cond_a
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    const/high16 v17, 0x2000000

    if-eqz v6, :cond_b

    or-int v5, v5, v17

    :cond_b
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    const/high16 v18, 0x800000

    const/high16 v19, 0x1000000

    if-eqz v6, :cond_c

    or-int v5, v5, v19

    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    invoke-virtual {v6}, Landroid/app/assist/AssistStructure$ViewNodeText;->isSimple()Z

    move-result v6

    if-nez v6, :cond_c

    or-int v5, v5, v18

    :cond_c
    iget v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    const/high16 v20, 0x40000

    if-eqz v6, :cond_d

    or-int v5, v5, v20

    :cond_d
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWebScheme:Ljava/lang/String;

    if-nez v6, :cond_e

    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    if-eqz v6, :cond_f

    :cond_e
    const/high16 v6, 0x80000

    or-int/2addr v5, v6

    :cond_f
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    if-eqz v6, :cond_10

    const/high16 v6, 0x10000

    or-int/2addr v5, v6

    :cond_10
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    if-eqz v6, :cond_11

    const/high16 v6, 0x400000

    or-int/2addr v5, v6

    :cond_11
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    if-eqz v6, :cond_12

    const/high16 v6, 0x100000

    or-int/2addr v5, v6

    :cond_12
    iget-object v6, v0, Landroid/app/assist/AssistStructure$ViewNode;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    move v6, v5

    and-int v21, v5, v9

    if-eqz v21, :cond_14

    iget-boolean v11, v0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    if-nez v11, :cond_13

    if-nez p3, :cond_14

    :cond_13
    and-int/lit16 v6, v5, -0x201

    :cond_14
    iget-object v11, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    if-eqz v11, :cond_16

    iget-object v11, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    iget-boolean v11, v11, Landroid/app/assist/AssistStructure$AutofillOverlay;->focused:Z

    if-eqz v11, :cond_15

    or-int/lit8 v6, v6, 0x20

    goto :goto_2

    :cond_15
    and-int/lit8 v6, v6, -0x21

    :cond_16
    :goto_2
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    and-int/2addr v7, v5

    if-eqz v7, :cond_17

    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    if-eq v7, v8, :cond_17

    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    if-eqz v7, :cond_17

    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdType:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mIdPackage:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    :cond_17
    and-int v7, v5, v9

    if-eqz v7, :cond_1d

    iget-boolean v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    if-nez v7, :cond_19

    if-nez p3, :cond_18

    goto :goto_3

    :cond_18
    move v7, v12

    goto :goto_4

    :cond_19
    :goto_3
    const/4 v7, 0x1

    :goto_4
    move v4, v7

    iget-boolean v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v7, v12}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillHints:[Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    if-eqz v4, :cond_1a

    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    :goto_5
    goto :goto_6

    :cond_1a
    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    if-eqz v7, :cond_1b

    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    iget-object v7, v7, Landroid/app/assist/AssistStructure$AutofillOverlay;->value:Landroid/view/autofill/AutofillValue;

    if-eqz v7, :cond_1b

    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    iget-object v7, v7, Landroid/app/assist/AssistStructure$AutofillOverlay;->value:Landroid/view/autofill/AutofillValue;

    goto :goto_5

    :cond_1b
    const/4 v7, 0x0

    :goto_6
    invoke-virtual {v1, v7, v12}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

    instance-of v8, v8, Landroid/os/Parcelable;

    if-eqz v8, :cond_1c

    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

    check-cast v8, Landroid/os/Parcelable;

    invoke-virtual {v1, v8, v12}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_7

    :cond_1c
    const/4 v8, 0x0

    invoke-virtual {v1, v8, v12}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :goto_7
    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMinEms:I

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxEms:I

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMaxLength:I

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mTextIdEntry:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mImportantForAutofill:I

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1d
    and-int v7, v5, v10

    if-eqz v7, :cond_1e

    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :cond_1e
    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    shl-int/lit8 v7, v7, 0x10

    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    or-int/2addr v7, v8

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    shl-int/lit8 v7, v7, 0x10

    iget v8, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    or-int/2addr v7, v8

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    and-int v7, v5, v13

    if-eqz v7, :cond_1f

    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1f
    and-int v7, v5, v14

    if-eqz v7, :cond_20

    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->getValues([F)V

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeFloatArray([F)V

    :cond_20
    and-int v7, v5, v15

    if-eqz v7, :cond_21

    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_21
    and-int v7, v5, v16

    if-eqz v7, :cond_22

    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_22
    and-int v7, v5, v17

    if-eqz v7, :cond_23

    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v7, v1, v12}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    :cond_23
    and-int v7, v5, v19

    if-eqz v7, :cond_25

    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    and-int v8, v5, v18

    if-nez v8, :cond_24

    const/4 v8, 0x1

    goto :goto_9

    :cond_24
    move v8, v12

    :goto_9
    invoke-virtual {v7, v1, v8, v4}, Landroid/app/assist/AssistStructure$ViewNodeText;->writeToParcel(Landroid/os/Parcel;ZZ)V

    :cond_25
    and-int v7, v5, v20

    if-eqz v7, :cond_26

    iget v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    :cond_26
    const/high16 v7, 0x80000

    and-int/2addr v7, v5

    if-eqz v7, :cond_27

    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWebScheme:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_27
    const/high16 v7, 0x10000

    and-int/2addr v7, v5

    if-eqz v7, :cond_28

    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1, v7, v12}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_28
    const/high16 v7, 0x400000

    and-int/2addr v7, v5

    if-eqz v7, :cond_29

    iget-object v7, v0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    :cond_29
    return v5
.end method
