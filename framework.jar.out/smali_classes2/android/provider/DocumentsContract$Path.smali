.class public final Landroid/provider/DocumentsContract$Path;
.super Ljava/lang/Object;
.source "DocumentsContract.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/DocumentsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Path"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/provider/DocumentsContract$Path;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRootId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1801
    new-instance v0, Landroid/provider/DocumentsContract$Path$1;

    invoke-direct {v0}, Landroid/provider/DocumentsContract$Path$1;-><init>()V

    sput-object v0, Landroid/provider/DocumentsContract$Path;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "rootId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1735
    .local p2, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1736
    const-string/jumbo v0, "path"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionNotEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 1737
    const-string/jumbo v0, "path"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 1739
    iput-object p1, p0, Landroid/provider/DocumentsContract$Path;->mRootId:Ljava/lang/String;

    .line 1740
    iput-object p2, p0, Landroid/provider/DocumentsContract$Path;->mPath:Ljava/util/List;

    .line 1741
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1798
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1762
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1763
    return v0

    .line 1765
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    instance-of v2, p1, Landroid/provider/DocumentsContract$Path;

    if-nez v2, :cond_1

    goto :goto_1

    .line 1768
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/provider/DocumentsContract$Path;

    .line 1769
    .local v2, "path":Landroid/provider/DocumentsContract$Path;
    iget-object v3, p0, Landroid/provider/DocumentsContract$Path;->mRootId:Ljava/lang/String;

    iget-object v4, v2, Landroid/provider/DocumentsContract$Path;->mRootId:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/provider/DocumentsContract$Path;->mPath:Ljava/util/List;

    iget-object v4, v2, Landroid/provider/DocumentsContract$Path;->mPath:Ljava/util/List;

    .line 1770
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 1769
    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 1766
    .end local v2    # "path":Landroid/provider/DocumentsContract$Path;
    :cond_3
    :goto_1
    return v1
.end method

.method public getPath()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1757
    iget-object v0, p0, Landroid/provider/DocumentsContract$Path;->mPath:Ljava/util/List;

    return-object v0
.end method

.method public getRootId()Ljava/lang/String;
    .locals 1

    .line 1748
    iget-object v0, p0, Landroid/provider/DocumentsContract$Path;->mRootId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1775
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/provider/DocumentsContract$Path;->mRootId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/provider/DocumentsContract$Path;->mPath:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DocumentsContract.Path{"

    .line 1781
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "rootId="

    .line 1782
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/provider/DocumentsContract$Path;->mRootId:Ljava/lang/String;

    .line 1783
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", path="

    .line 1784
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/provider/DocumentsContract$Path;->mPath:Ljava/util/List;

    .line 1785
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 1786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1787
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1780
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1792
    iget-object v0, p0, Landroid/provider/DocumentsContract$Path;->mRootId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1793
    iget-object v0, p0, Landroid/provider/DocumentsContract$Path;->mPath:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1794
    return-void
.end method
