.class public final Landroid/app/timezone/DistroRulesVersion;
.super Ljava/lang/Object;
.source "DistroRulesVersion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/timezone/DistroRulesVersion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mRevision:I

.field private final mRulesVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/timezone/DistroRulesVersion$1;

    invoke-direct {v0}, Landroid/app/timezone/DistroRulesVersion$1;-><init>()V

    sput-object v0, Landroid/app/timezone/DistroRulesVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "rulesVersion"

    invoke-static {v0, p1}, Landroid/app/timezone/Utils;->validateRulesVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    const-string/jumbo v0, "revision"

    invoke-static {v0, p2}, Landroid/app/timezone/Utils;->validateVersion(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

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

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/app/timezone/DistroRulesVersion;

    iget v2, p0, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    iget v3, v1, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    iget-object v0, p0, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    iget-object v2, v1, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_3
    :goto_0
    return v0
.end method

.method public getRevision()I
    .locals 1

    iget v0, p0, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    return v0
.end method

.method public getRulesVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    add-int/2addr v1, v2

    return v1
.end method

.method public isOlderThan(Landroid/app/timezone/DistroRulesVersion;)Z
    .locals 5

    iget-object v0, p0, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    iget-object v1, p1, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-gez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-lez v0, :cond_1

    return v2

    :cond_1
    iget v3, p0, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    iget v4, p1, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    if-ge v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method public toDumpString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DistroRulesVersion{mRulesVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mRevision=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/timezone/DistroRulesVersion;->mRulesVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/timezone/DistroRulesVersion;->mRevision:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
