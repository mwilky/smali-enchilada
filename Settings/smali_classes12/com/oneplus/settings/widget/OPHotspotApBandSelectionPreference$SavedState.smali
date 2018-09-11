.class Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState;
.super Landroid/support/v7/preference/Preference$BaseSavedState;
.source "OPHotspotApBandSelectionPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference;
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
            "Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState;",
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

    .line 249
    new-instance v0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState$1;

    invoke-direct {v0}, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 226
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 227
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
    iput-boolean v0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState;->shouldRestore:Z

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState;->enabled2G:Z

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    nop

    :cond_2
    iput-boolean v1, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState;->enabled5G:Z

    .line 230
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$1;

    .line 216
    invoke-direct {p0, p1}, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcelable;

    .line 222
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 223
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HotspotApBandSelectionPreference.SavedState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " shouldRestore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState;->shouldRestore:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " enabled2G="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState;->enabled2G:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " enabled5G="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState;->enabled5G:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 234
    invoke-super {p0, p1, p2}, Landroid/support/v7/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 235
    iget-boolean v0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState;->shouldRestore:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 236
    iget-boolean v0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState;->enabled2G:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 237
    iget-boolean v0, p0, Lcom/oneplus/settings/widget/OPHotspotApBandSelectionPreference$SavedState;->enabled5G:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 238
    return-void
.end method
