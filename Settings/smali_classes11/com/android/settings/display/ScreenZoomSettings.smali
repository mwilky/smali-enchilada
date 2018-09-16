.class public Lcom/android/settings/display/ScreenZoomSettings;
.super Lcom/android/settings/PreviewSeekBarPreferenceFragment;
.source "ScreenZoomSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mDefaultDensity:I

.field private mValues:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 112
    new-instance v0, Lcom/android/settings/display/ScreenZoomSettings$1;

    invoke-direct {v0}, Lcom/android/settings/display/ScreenZoomSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/display/ScreenZoomSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected commit()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/android/settings/display/ScreenZoomSettings;->mValues:[I

    iget v1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mCurrentIndex:I

    aget v0, v0, v1

    .line 94
    .local v0, "densityDpi":I
    iget v1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mDefaultDensity:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 95
    invoke-static {v2}, Lcom/android/settingslib/display/DisplayDensityUtils;->clearForcedDisplayDensity(I)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-static {v2, v0}, Lcom/android/settingslib/display/DisplayDensityUtils;->setForcedDisplayDensity(II)V

    .line 99
    :goto_0
    return-void
.end method

.method protected createConfig(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
    .locals 2
    .param p1, "origConfig"    # Landroid/content/res/Configuration;
    .param p2, "index"    # I

    .line 83
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 84
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mValues:[I

    aget v1, v1, p2

    iput v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 85
    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    .line 103
    const v0, 0x7f120713

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 108
    const/16 v0, 0x153

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f0d0231

    iput v0, p0, Lcom/android/settings/display/ScreenZoomSettings;->mActivityLayoutResId:I

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/display/ScreenZoomSettings;->mPreviewSampleResIds:[I

    .line 58
    new-instance v0, Lcom/android/settingslib/display/DisplayDensityUtils;

    invoke-virtual {p0}, Lcom/android/settings/display/ScreenZoomSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/display/DisplayDensityUtils;-><init>(Landroid/content/Context;)V

    .line 60
    .local v0, "density":Lcom/android/settingslib/display/DisplayDensityUtils;
    invoke-virtual {v0}, Lcom/android/settingslib/display/DisplayDensityUtils;->getCurrentIndex()I

    move-result v1

    .line 61
    .local v1, "initialIndex":I
    if-gez v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenZoomSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 66
    .local v2, "densityDpi":I
    const/4 v3, 0x1

    new-array v4, v3, [I

    const/4 v5, 0x0

    aput v2, v4, v5

    iput-object v4, p0, Lcom/android/settings/display/ScreenZoomSettings;->mValues:[I

    .line 67
    new-array v3, v3, [Ljava/lang/String;

    sget v4, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_DEFAULT:I

    invoke-virtual {p0, v4}, Lcom/android/settings/display/ScreenZoomSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iput-object v3, p0, Lcom/android/settings/display/ScreenZoomSettings;->mEntries:[Ljava/lang/String;

    .line 68
    iput v5, p0, Lcom/android/settings/display/ScreenZoomSettings;->mInitialIndex:I

    .line 69
    iput v2, p0, Lcom/android/settings/display/ScreenZoomSettings;->mDefaultDensity:I

    .line 70
    .end local v2    # "densityDpi":I
    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/display/DisplayDensityUtils;->getValues()[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/display/ScreenZoomSettings;->mValues:[I

    .line 72
    invoke-virtual {v0}, Lcom/android/settingslib/display/DisplayDensityUtils;->getEntries()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/display/ScreenZoomSettings;->mEntries:[Ljava/lang/String;

    .line 73
    iput v1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mInitialIndex:I

    .line 74
    invoke-virtual {v0}, Lcom/android/settingslib/display/DisplayDensityUtils;->getDefaultDensity()I

    move-result v2

    iput v2, p0, Lcom/android/settings/display/ScreenZoomSettings;->mDefaultDensity:I

    .line 77
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenZoomSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f120f3e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 78
    return-void

    nop

    :array_0
    .array-data 4
        0x7f0d0232
        0x7f0d0235
    .end array-data
.end method
