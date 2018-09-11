.class Lcom/oneplus/settings/ui/OPLedColorPickerPreference$SavedState;
.super Landroid/support/v7/preference/Preference$BaseSavedState;
.source "OPLedColorPickerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPLedColorPickerPreference;
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
            "Lcom/oneplus/settings/ui/OPLedColorPickerPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field tmpColor:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 503
    new-instance v0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$SavedState$1;

    invoke-direct {v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 481
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 485
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$SavedState;->tmpColor:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    goto :goto_0

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 490
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 493
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 494
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 498
    invoke-super {p0, p1, p2}, Landroid/support/v7/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 500
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$SavedState;->tmpColor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 501
    return-void
.end method
