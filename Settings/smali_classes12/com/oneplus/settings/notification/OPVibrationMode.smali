.class public Lcom/oneplus/settings/notification/OPVibrationMode;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPVibrationMode.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/notification/OPVibrationMode$1;

    invoke-direct {v0}, Lcom/oneplus/settings/notification/OPVibrationMode$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/notification/OPVibrationMode;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f16009a

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPVibrationMode;->addPreferencesFromResource(I)V

    return-void
.end method
