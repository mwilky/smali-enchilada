.class public Landroid/content/pm/VerificationParams;
.super Ljava/lang/Object;
.source "VerificationParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/VerificationParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_UID:I = -0x1

.field private static final TO_STRING_PREFIX:Ljava/lang/String; = "VerificationParams{"


# instance fields
.field private mInstallerUid:I

.field private final mOriginatingURI:Landroid/net/Uri;

.field private final mOriginatingUid:I

.field private final mReferrer:Landroid/net/Uri;

.field private final mVerificationURI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/VerificationParams$1;

    invoke-direct {v0}, Landroid/content/pm/VerificationParams$1;-><init>()V

    sput-object v0, Landroid/content/pm/VerificationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    iput-object p2, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    iput-object p3, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    iput p4, p0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/VerificationParams$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/VerificationParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/content/pm/VerificationParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/content/pm/VerificationParams;

    iget-object v3, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    if-nez v3, :cond_2

    iget-object v3, v1, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    if-eqz v3, :cond_3

    return v2

    :cond_2
    iget-object v3, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    iget-object v4, v1, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    if-nez v3, :cond_4

    iget-object v3, v1, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    if-eqz v3, :cond_5

    return v2

    :cond_4
    iget-object v3, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    iget-object v4, v1, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    if-nez v3, :cond_6

    iget-object v3, v1, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    if-eqz v3, :cond_7

    return v2

    :cond_6
    iget-object v3, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    iget-object v4, v1, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    iget v3, p0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    iget v4, v1, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    if-eq v3, v4, :cond_8

    return v2

    :cond_8
    iget v3, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    iget v4, v1, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    if-eq v3, v4, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public getInstallerUid()I
    .locals 1

    iget v0, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    return v0
.end method

.method public getOriginatingURI()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    return-object v0
.end method

.method public getOriginatingUid()I
    .locals 1

    iget v0, p0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    return v0
.end method

.method public getReferrer()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    return-object v0
.end method

.method public getVerificationURI()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x3

    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    :goto_0
    const/4 v3, 0x5

    mul-int/2addr v3, v1

    add-int/2addr v0, v3

    const/4 v1, 0x7

    iget-object v3, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->hashCode()I

    move-result v3

    :goto_1
    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    const/16 v1, 0xb

    iget-object v3, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    :goto_2
    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    const/16 v1, 0xd

    iget v2, p0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    const/16 v1, 0x11

    iget v2, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public setInstallerUid(I)V
    .locals 0

    iput p1, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VerificationParams{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "mVerificationURI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mOriginatingURI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mReferrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mOriginatingUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mInstallerUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/content/pm/VerificationParams;->mVerificationURI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/content/pm/VerificationParams;->mOriginatingURI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/content/pm/VerificationParams;->mReferrer:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/content/pm/VerificationParams;->mOriginatingUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/VerificationParams;->mInstallerUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
