.class public final Landroid/companion/AssociationRequest;
.super Ljava/lang/Object;
.source "AssociationRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/AssociationRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/AssociationRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDeviceFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/companion/DeviceFilter<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mSingleDevice:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 105
    new-instance v0, Landroid/companion/AssociationRequest$1;

    invoke-direct {v0}, Landroid/companion/AssociationRequest$1;-><init>()V

    sput-object v0, Landroid/companion/AssociationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 56
    nop

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-class v2, Landroid/companion/AssociationRequest;

    .line 58
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v1

    .line 56
    invoke-direct {p0, v0, v1}, Landroid/companion/AssociationRequest;-><init>(ZLjava/util/List;)V

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/companion/AssociationRequest$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/companion/AssociationRequest$1;

    .line 44
    invoke-direct {p0, p1}, Landroid/companion/AssociationRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(ZLjava/util/List;)V
    .locals 1
    .param p1, "singleDevice"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Landroid/companion/DeviceFilter<",
            "*>;>;)V"
        }
    .end annotation

    .line 50
    .local p2, "deviceFilters":Ljava/util/List;, "Ljava/util/List<Landroid/companion/DeviceFilter<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean p1, p0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    .line 52
    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    .line 53
    return-void
.end method

.method synthetic constructor <init>(ZLjava/util/List;Landroid/companion/AssociationRequest$1;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Landroid/companion/AssociationRequest$1;

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/companion/AssociationRequest;-><init>(ZLjava/util/List;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 74
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 75
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 76
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/companion/AssociationRequest;

    .line 77
    .local v2, "that":Landroid/companion/AssociationRequest;
    iget-boolean v3, p0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    iget-boolean v4, v2, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    iget-object v4, v2, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    .line 78
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 77
    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 75
    .end local v2    # "that":Landroid/companion/AssociationRequest;
    :cond_3
    :goto_1
    return v1
.end method

.method public getDeviceFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/companion/DeviceFilter<",
            "*>;>;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isSingleDevice()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AssociationRequest{mSingleDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceFilters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 96
    iget-boolean v0, p0, Landroid/companion/AssociationRequest;->mSingleDevice:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 97
    iget-object v0, p0, Landroid/companion/AssociationRequest;->mDeviceFilters:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 98
    return-void
.end method
