.class public final Landroid/app/slice/SliceSpec;
.super Ljava/lang/Object;
.source "SliceSpec.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/slice/SliceSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mRevision:I

.field private final mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/slice/SliceSpec$1;

    invoke-direct {v0}, Landroid/app/slice/SliceSpec$1;-><init>()V

    sput-object v0, Landroid/app/slice/SliceSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/slice/SliceSpec;->mType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/slice/SliceSpec;->mRevision:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/slice/SliceSpec;->mType:Ljava/lang/String;

    iput p2, p0, Landroid/app/slice/SliceSpec;->mRevision:I

    return-void
.end method


# virtual methods
.method public canRender(Landroid/app/slice/SliceSpec;)Z
    .locals 3

    iget-object v0, p0, Landroid/app/slice/SliceSpec;->mType:Ljava/lang/String;

    iget-object v1, p1, Landroid/app/slice/SliceSpec;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroid/app/slice/SliceSpec;->mRevision:I

    iget v2, p1, Landroid/app/slice/SliceSpec;->mRevision:I

    if-lt v0, v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/app/slice/SliceSpec;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/app/slice/SliceSpec;

    iget-object v2, p0, Landroid/app/slice/SliceSpec;->mType:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/slice/SliceSpec;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/app/slice/SliceSpec;->mRevision:I

    iget v3, v0, Landroid/app/slice/SliceSpec;->mRevision:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public getRevision()I
    .locals 1

    iget v0, p0, Landroid/app/slice/SliceSpec;->mRevision:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/slice/SliceSpec;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "SliceSpec{%s,%d}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/app/slice/SliceSpec;->mType:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Landroid/app/slice/SliceSpec;->mRevision:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/slice/SliceSpec;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/slice/SliceSpec;->mRevision:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
