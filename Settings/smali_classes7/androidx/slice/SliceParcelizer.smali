.class public final Landroidx/slice/SliceParcelizer;
.super Ljava/lang/Object;
.source "SliceParcelizer.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/slice/Slice;
    .locals 3
    .param p0, "parcel"    # Landroidx/versionedparcelable/VersionedParcel;

    .line 11
    new-instance v0, Landroidx/slice/Slice;

    invoke-direct {v0}, Landroidx/slice/Slice;-><init>()V

    .line 12
    .local v0, "obj":Landroidx/slice/Slice;
    iget-object v1, v0, Landroidx/slice/Slice;->mSpec:Landroidx/slice/SliceSpec;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v1

    check-cast v1, Landroidx/slice/SliceSpec;

    iput-object v1, v0, Landroidx/slice/Slice;->mSpec:Landroidx/slice/SliceSpec;

    .line 13
    iget-object v1, v0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/slice/SliceItem;

    iput-object v1, v0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    .line 14
    iget-object v1, v0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    .line 15
    iget-object v1, v0, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    .line 16
    return-object v0
.end method

.method public static write(Landroidx/slice/Slice;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 2
    .param p0, "obj"    # Landroidx/slice/Slice;
    .param p1, "parcel"    # Landroidx/versionedparcelable/VersionedParcel;

    .line 20
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->setSerializationFlags(ZZ)V

    .line 21
    iget-object v1, p0, Landroidx/slice/Slice;->mSpec:Landroidx/slice/SliceSpec;

    invoke-virtual {p1, v1, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)V

    .line 22
    iget-object v0, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeArray([Ljava/lang/Object;I)V

    .line 23
    iget-object v0, p0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeArray([Ljava/lang/Object;I)V

    .line 24
    iget-object v0, p0, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;I)V

    .line 25
    return-void
.end method
