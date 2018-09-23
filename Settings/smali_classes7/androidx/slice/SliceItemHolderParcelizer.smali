.class public final Landroidx/slice/SliceItemHolderParcelizer;
.super Ljava/lang/Object;
.source "SliceItemHolderParcelizer.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/slice/SliceItemHolder;
    .locals 4

    new-instance v0, Landroidx/slice/SliceItemHolder;

    invoke-direct {v0}, Landroidx/slice/SliceItemHolder;-><init>()V

    iget-object v1, v0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v1

    iput-object v1, v0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    iget-object v1, v0, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    iget-object v1, v0, Landroidx/slice/SliceItemHolder;->mStr:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/slice/SliceItemHolder;->mStr:Ljava/lang/String;

    iget v1, v0, Landroidx/slice/SliceItemHolder;->mInt:I

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    move-result v1

    iput v1, v0, Landroidx/slice/SliceItemHolder;->mInt:I

    iget-wide v1, v0, Landroidx/slice/SliceItemHolder;->mLong:J

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v2, v3}, Landroidx/versionedparcelable/VersionedParcel;->readLong(JI)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/slice/SliceItemHolder;->mLong:J

    return-object v0
.end method

.method public static write(Landroidx/slice/SliceItemHolder;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Landroidx/versionedparcelable/VersionedParcel;->setSerializationFlags(ZZ)V

    iget-object v1, p0, Landroidx/slice/SliceItemHolder;->mVersionedParcelable:Landroidx/versionedparcelable/VersionedParcelable;

    invoke-virtual {p1, v1, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)V

    iget-object v0, p0, Landroidx/slice/SliceItemHolder;->mParcelable:Landroid/os/Parcelable;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroidx/slice/SliceItemHolder;->mStr:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;I)V

    iget v0, p0, Landroidx/slice/SliceItemHolder;->mInt:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    iget-wide v0, p0, Landroidx/slice/SliceItemHolder;->mLong:J

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeLong(JI)V

    return-void
.end method
