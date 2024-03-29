.class public Landroid/app/ResultInfo;
.super Ljava/lang/Object;
.source "ResultInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ResultInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mData:Landroid/content/Intent;

.field public final mRequestCode:I

.field public final mResultCode:I

.field public final mResultWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/ResultInfo$1;

    invoke-direct {v0}, Landroid/app/ResultInfo$1;-><init>()V

    sput-object v0, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ResultInfo;->mResultWho:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ResultInfo;->mRequestCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ResultInfo;->mResultCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ResultInfo;->mResultWho:Ljava/lang/String;

    iput p2, p0, Landroid/app/ResultInfo;->mRequestCode:I

    iput p3, p0, Landroid/app/ResultInfo;->mResultCode:I

    iput-object p4, p0, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    return-void
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

    if-eqz p1, :cond_4

    instance-of v1, p1, Landroid/app/ResultInfo;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/app/ResultInfo;

    iget-object v2, p0, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    const/4 v3, 0x1

    if-nez v2, :cond_2

    iget-object v2, v1, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    nop

    move v2, v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    iget-object v4, v1, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_3

    iget-object v4, p0, Landroid/app/ResultInfo;->mResultWho:Ljava/lang/String;

    iget-object v5, v1, Landroid/app/ResultInfo;->mResultWho:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Landroid/app/ResultInfo;->mResultCode:I

    iget v5, v1, Landroid/app/ResultInfo;->mResultCode:I

    if-ne v4, v5, :cond_3

    iget v4, p0, Landroid/app/ResultInfo;->mRequestCode:I

    iget v5, v1, Landroid/app/ResultInfo;->mRequestCode:I

    if-ne v4, v5, :cond_3

    move v0, v3

    nop

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0x11

    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget v3, p0, Landroid/app/ResultInfo;->mRequestCode:I

    add-int/2addr v2, v3

    mul-int v0, v1, v2

    iget v3, p0, Landroid/app/ResultInfo;->mResultCode:I

    add-int/2addr v0, v3

    mul-int v2, v1, v0

    iget-object v3, p0, Landroid/app/ResultInfo;->mResultWho:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v0, p0, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    if-eqz v0, :cond_0

    mul-int/2addr v1, v2

    iget-object v0, p0, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->filterHashCode()I

    move-result v0

    add-int v2, v1, v0

    :cond_0
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultInfo{who="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/ResultInfo;->mResultWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/ResultInfo;->mRequestCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/ResultInfo;->mResultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/app/ResultInfo;->mResultWho:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/ResultInfo;->mRequestCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/ResultInfo;->mResultCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method
