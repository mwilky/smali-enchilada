.class public Lcom/android/settings/display/AutoBrightnessSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AutoBrightnessSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "AutoBrightnessSettings"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lcom/android/settings/display/AutoBrightnessSettings$1;

    invoke-direct {v0}, Lcom/android/settings/display/AutoBrightnessSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/display/AutoBrightnessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 59
    const v0, 0x7f120708

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 49
    const-string v0, "AutoBrightnessSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 54
    const/16 v0, 0x565

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 44
    const v0, 0x7f16001e

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 37
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    iget-object v0, p0, Lcom/android/settings/display/AutoBrightnessSettings;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object v0

    .line 39
    const v1, 0x7f12019f

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    .line 40
    return-void
.end method
