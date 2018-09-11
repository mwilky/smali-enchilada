.class Lcom/android/settings/widget/HotspotApBandSelectionPreference$SavedState;
.super Landroid/support/v7/preference/Preference$BaseSavedState;
.source "HotspotApBandSelectionPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/HotspotApBandSelectionPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/settings/widget/HotspotApBandSelectionPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field enabled2G:Z

.field enabled5G:Z

.field shouldRestore:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 247
    new-instance v0, Lcom/android/settings/widget/HotspotApBandSelectionPreference$SavedState$1;

    invoke-direct {v0}, Lcom/android/settings/widget/HotspotApBandSelectionPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/settings/widget/HotspotApBandSelectionPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 224
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference$SavedState;->shouldRestore:Z

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference$SavedState;->enabled2G:Z

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    nop

    :cond_2
    iput-boolean v1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference$SavedState;->enabled5G:Z

    .line 228
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/settings/widget/HotspotApBandSelectionPreference$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/settings/widget/HotspotApBandSelectionPreference$1;

    .line 214
    invoke-direct {p0, p1}, Lcom/android/settings/widget/HotspotApBandSelectionPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcelable;

    .line 220
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 221
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HotspotApBandSelectionPreference.SavedState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " shouldRestore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference$SavedState;->shouldRestore:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " enabled2G="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference$SavedState;->enabled2G:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " enabled5G="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference$SavedState;->enabled5G:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 232
    invoke-super {p0, p1, p2}, Landroid/support/v7/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 233
    iget-boolean v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference$SavedState;->shouldRestore:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 234
    iget-boolean v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference$SavedState;->enabled2G:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 235
    iget-boolean v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference$SavedState;->enabled5G:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 236
    return-void
.end method
