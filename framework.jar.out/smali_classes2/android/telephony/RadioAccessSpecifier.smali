.class public final Landroid/telephony/RadioAccessSpecifier;
.super Ljava/lang/Object;
.source "RadioAccessSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/RadioAccessSpecifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBands:[I

.field private mChannels:[I

.field private mRadioAccessNetwork:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/RadioAccessSpecifier$1;

    invoke-direct {v0}, Landroid/telephony/RadioAccessSpecifier$1;-><init>()V

    sput-object v0, Landroid/telephony/RadioAccessSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[I[I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/RadioAccessSpecifier;->mRadioAccessNetwork:I

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, p0, Landroid/telephony/RadioAccessSpecifier;->mBands:[I

    goto :goto_0

    :cond_0
    iput-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->mBands:[I

    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->mChannels:[I

    goto :goto_1

    :cond_1
    iput-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->mChannels:[I

    :goto_1
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/RadioAccessSpecifier;->mRadioAccessNetwork:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->mBands:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->mChannels:[I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/RadioAccessSpecifier$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/RadioAccessSpecifier;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/telephony/RadioAccessSpecifier;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v2, p0, Landroid/telephony/RadioAccessSpecifier;->mRadioAccessNetwork:I

    iget v3, v1, Landroid/telephony/RadioAccessSpecifier;->mRadioAccessNetwork:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/telephony/RadioAccessSpecifier;->mBands:[I

    iget-object v3, v1, Landroid/telephony/RadioAccessSpecifier;->mBands:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/RadioAccessSpecifier;->mChannels:[I

    iget-object v3, v1, Landroid/telephony/RadioAccessSpecifier;->mChannels:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method public getBands()[I
    .locals 1

    iget-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->mBands:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->mBands:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_0
    return-object v0
.end method

.method public getChannels()[I
    .locals 1

    iget-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->mChannels:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->mChannels:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_0
    return-object v0
.end method

.method public getRadioAccessNetwork()I
    .locals 1

    iget v0, p0, Landroid/telephony/RadioAccessSpecifier;->mRadioAccessNetwork:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroid/telephony/RadioAccessSpecifier;->mRadioAccessNetwork:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/telephony/RadioAccessSpecifier;->mBands:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/telephony/RadioAccessSpecifier;->mChannels:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x27

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/telephony/RadioAccessSpecifier;->mRadioAccessNetwork:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->mBands:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->mChannels:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
