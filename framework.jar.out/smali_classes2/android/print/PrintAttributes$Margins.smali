.class public final Landroid/print/PrintAttributes$Margins;
.super Ljava/lang/Object;
.source "PrintAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Margins"
.end annotation


# static fields
.field public static final NO_MARGINS:Landroid/print/PrintAttributes$Margins;


# instance fields
.field private final mBottomMils:I

.field private final mLeftMils:I

.field private final mRightMils:I

.field private final mTopMils:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/print/PrintAttributes$Margins;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/print/PrintAttributes$Margins;-><init>(IIII)V

    sput-object v0, Landroid/print/PrintAttributes$Margins;->NO_MARGINS:Landroid/print/PrintAttributes$Margins;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    iput p1, p0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    iput p3, p0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    iput p4, p0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    return-void
.end method

.method static createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Margins;
    .locals 5

    new-instance v0, Landroid/print/PrintAttributes$Margins;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/print/PrintAttributes$Margins;-><init>(IIII)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/print/PrintAttributes$Margins;

    iget v3, p0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    iget v4, v2, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    iget v3, p0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    iget v4, v2, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    if-eq v3, v4, :cond_4

    return v1

    :cond_4
    iget v3, p0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    iget v4, v2, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    if-eq v3, v4, :cond_5

    return v1

    :cond_5
    iget v3, p0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    iget v4, v2, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    if-eq v3, v4, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public getBottomMils()I
    .locals 1

    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    return v0
.end method

.method public getLeftMils()I
    .locals 1

    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    return v0
.end method

.method public getRightMils()I
    .locals 1

    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    return v0
.end method

.method public getTopMils()I
    .locals 1

    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    const/16 v0, 0x1f

    const/4 v1, 0x1

    const/16 v2, 0x1f

    mul-int v3, v2, v1

    iget v4, p0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    add-int/2addr v3, v4

    mul-int v1, v2, v3

    iget v4, p0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    add-int/2addr v1, v4

    mul-int v3, v2, v1

    iget v4, p0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    add-int/2addr v3, v4

    mul-int/2addr v2, v3

    iget v1, p0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    add-int/2addr v2, v1

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Margins{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "leftMils: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", topMils: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rightMils: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottomMils: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method writeToParcel(Landroid/os/Parcel;)V
    .locals 1

    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
