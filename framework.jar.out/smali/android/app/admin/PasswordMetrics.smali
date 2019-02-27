.class public Landroid/app/admin/PasswordMetrics;
.super Ljava/lang/Object;
.source "PasswordMetrics.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/PasswordMetrics$CharacterCatagory;
    }
.end annotation


# static fields
.field private static final CHAR_DIGIT:I = 0x2

.field private static final CHAR_LOWER_CASE:I = 0x0

.field private static final CHAR_SYMBOL:I = 0x3

.field private static final CHAR_UPPER_CASE:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/PasswordMetrics;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_ALLOWED_SEQUENCE:I = 0x3


# instance fields
.field public length:I

.field public letters:I

.field public lowerCase:I

.field public nonLetter:I

.field public numeric:I

.field public quality:I

.field public symbols:I

.field public upperCase:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/admin/PasswordMetrics$1;

    invoke-direct {v0}, Landroid/app/admin/PasswordMetrics$1;-><init>()V

    sput-object v0, Landroid/app/admin/PasswordMetrics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    iput p1, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    iput p2, p0, Landroid/app/admin/PasswordMetrics;->length:I

    return-void
.end method

.method public constructor <init>(IIIIIIII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/admin/PasswordMetrics;-><init>(II)V

    iput p3, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    iput p4, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iput p5, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iput p6, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iput p7, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    iput p8, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/admin/PasswordMetrics$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/admin/PasswordMetrics;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static categoryChar(C)I
    .locals 1

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/16 v0, 0x30

    if-gt v0, p0, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    const/4 v0, 0x3

    return v0
.end method

.method public static computeForPassword(Ljava/lang/String;)Landroid/app/admin/PasswordMetrics;
    .locals 19

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    const/4 v6, 0x0

    move/from16 v16, v4

    move v4, v1

    move v1, v0

    move v0, v6

    :goto_0
    if-ge v0, v15, :cond_0

    move-object/from16 v14, p0

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Landroid/app/admin/PasswordMetrics;->categoryChar(C)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :pswitch_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :pswitch_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :pswitch_3
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    nop

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v14, p0

    const/4 v0, 0x1

    if-lez v3, :cond_1

    move v7, v0

    goto :goto_2

    :cond_1
    move v7, v6

    :goto_2
    move/from16 v17, v7

    add-int v7, v1, v16

    if-lez v7, :cond_2

    goto :goto_3

    :cond_2
    move v0, v6

    :goto_3
    if-eqz v0, :cond_3

    if-eqz v17, :cond_3

    const/high16 v6, 0x50000

    :goto_4
    move v7, v6

    goto :goto_6

    :cond_3
    if-eqz v0, :cond_4

    const/high16 v6, 0x40000

    goto :goto_4

    :cond_4
    if-eqz v17, :cond_6

    invoke-static/range {p0 .. p0}, Landroid/app/admin/PasswordMetrics;->maxLengthSequence(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_5

    const/high16 v6, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v6, 0x30000

    :goto_5
    goto :goto_4

    :cond_6
    goto :goto_4

    :goto_6
    new-instance v18, Landroid/app/admin/PasswordMetrics;

    move-object/from16 v6, v18

    move v8, v15

    move v9, v1

    move v10, v4

    move v11, v2

    move v12, v3

    move/from16 v13, v16

    move v14, v5

    invoke-direct/range {v6 .. v14}, Landroid/app/admin/PasswordMetrics;-><init>(IIIIIIII)V

    return-object v18

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static maxDiffCategory(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/16 v0, 0xa

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static maxLengthSequence(Ljava/lang/String;)I
    .locals 12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/app/admin/PasswordMetrics;->categoryChar(C)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_4

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Landroid/app/admin/PasswordMetrics;->categoryChar(C)I

    move-result v8

    sub-int v9, v7, v0

    if-ne v8, v1, :cond_3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v1}, Landroid/app/admin/PasswordMetrics;->maxDiffCategory(I)I

    move-result v11

    if-le v10, v11, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    if-eq v9, v2, :cond_2

    sub-int v10, v6, v5

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v5, v6, -0x1

    :cond_2
    move v2, v9

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    sub-int v10, v6, v5

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v5, v6

    const/4 v3, 0x0

    move v1, v8

    :goto_2
    move v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    return v4
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/app/admin/PasswordMetrics;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/app/admin/PasswordMetrics;

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    iget v3, v0, Landroid/app/admin/PasswordMetrics;->quality:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->length:I

    iget v3, v0, Landroid/app/admin/PasswordMetrics;->length:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    iget v3, v0, Landroid/app/admin/PasswordMetrics;->letters:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iget v3, v0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iget v3, v0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iget v3, v0, Landroid/app/admin/PasswordMetrics;->numeric:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    iget v3, v0, Landroid/app/admin/PasswordMetrics;->symbols:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    iget v3, v0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public isDefault()Z
    .locals 1

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
