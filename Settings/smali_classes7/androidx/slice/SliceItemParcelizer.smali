.class public final Landroidx/slice/SliceItemParcelizer;
.super Ljava/lang/Object;
.source "SliceItemParcelizer.java"


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

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/slice/SliceItem;
    .locals 3
    .param p0, "parcel"    # Landroidx/versionedparcelable/VersionedParcel;

    .line 11
    new-instance v0, Landroidx/slice/SliceItem;

    invoke-direct {v0}, Landroidx/slice/SliceItem;-><init>()V

    .line 12
    .local v0, "obj":Landroidx/slice/SliceItem;
    iget-object v1, v0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    .line 13
    iget-object v1, v0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    .line 14
    iget-object v1, v0, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    .line 15
    iget-object v1, v0, Landroidx/slice/SliceItem;->mHolder:Landroidx/slice/SliceItemHolder;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v1

    check-cast v1, Landroidx/slice/SliceItemHolder;

    iput-object v1, v0, Landroidx/slice/SliceItem;->mHolder:Landroidx/slice/SliceItemHolder;

    .line 16
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->onPostParceling()V

    .line 17
    return-object v0
.end method

.method public static write(Landroidx/slice/SliceItem;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 2
    .param p0, "obj"    # Landroidx/slice/SliceItem;
    .param p1, "parcel"    # Landroidx/versionedparcelable/VersionedParcel;

    .line 21
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Landroidx/versionedparcelable/VersionedParcel;->setSerializationFlags(ZZ)V

    .line 22
    invoke-virtual {p1}, Landroidx/versionedparcelable/VersionedParcel;->isStream()Z

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/slice/SliceItem;->onPreParceling(Z)V

    .line 23
    iget-object v1, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeArray([Ljava/lang/Object;I)V

    .line 24
    iget-object v0, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;I)V

    .line 25
    iget-object v0, p0, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;I)V

    .line 26
    iget-object v0, p0, Landroidx/slice/SliceItem;->mHolder:Landroidx/slice/SliceItemHolder;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)V

    .line 27
    return-void
.end method
