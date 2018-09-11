.class public Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProviderImpl;
.super Ljava/lang/Object;
.source "SuggestionFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;


# static fields
.field private static final EXCLUSIVE_SUGGESTION_MAX_COUNT:I = 0x3

.field private static final SHARED_PREF_FILENAME:Ljava/lang/String; = "suggestions"

.field private static final TAG:Ljava/lang/String; = "SuggestionFeature"


# instance fields
.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 108
    .local v0, "appContext":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProviderImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 110
    return-void
.end method


# virtual methods
.method public dismissSuggestion(Landroid/content/Context;Lcom/android/settingslib/suggestions/SuggestionControllerMixin;Landroid/service/settings/suggestions/Suggestion;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mixin"    # Lcom/android/settingslib/suggestions/SuggestionControllerMixin;
    .param p3, "suggestion"    # Landroid/service/settings/suggestions/Suggestion;

    .line 126
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProviderImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/16 v1, 0x183

    .line 131
    invoke-virtual {p3}, Landroid/service/settings/suggestions/Suggestion;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Pair;

    .line 129
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 132
    invoke-virtual {p2, p3}, Lcom/android/settingslib/suggestions/SuggestionControllerMixin;->dismissSuggestion(Landroid/service/settings/suggestions/Suggestion;)V

    .line 133
    return-void

    .line 127
    :cond_1
    :goto_0
    return-void
.end method

.method public filterExclusiveSuggestions(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;)V"
        }
    .end annotation

    .line 114
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    if-nez p1, :cond_0

    .line 115
    return-void

    .line 117
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 118
    const-string v1, "SuggestionFeature"

    const-string v2, "Removing exclusive suggestion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 117
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 121
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public getLoggingTaggedData(Landroid/content/Context;)[Landroid/util/Pair;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")[",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProviderImpl;->isSmartSuggestionEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 138
    .local v0, "isSmartSuggestionEnabled":Z
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/util/Pair;

    .line 139
    const/16 v2, 0x449

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 140
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 138
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    return-object v1
.end method

.method public getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 103
    const-string v0, "suggestions"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionServiceComponent()Landroid/content/ComponentName;
    .locals 3

    .line 68
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings.intelligence"

    const-string v2, "com.android.settings.intelligence.suggestions.SuggestionService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public isSmartSuggestionEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public isSuggestionComplete(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "component"    # Landroid/content/ComponentName;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 80
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "className":Ljava/lang/String;
    const-class v1, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-static {p1}, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result v1

    return v1

    .line 83
    :cond_0
    const-class v1, Lcom/android/settings/fingerprint/FingerprintSuggestionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    invoke-static {p1}, Lcom/android/settings/fingerprint/FingerprintSuggestionActivity;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result v1

    return v1

    .line 85
    :cond_1
    const-class v1, Lcom/android/settings/fingerprint/FingerprintEnrollSuggestionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    invoke-static {p1}, Lcom/android/settings/fingerprint/FingerprintEnrollSuggestionActivity;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result v1

    return v1

    .line 87
    :cond_2
    const-class v1, Lcom/android/settings/password/ScreenLockSuggestionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 88
    invoke-static {p1}, Lcom/android/settings/password/ScreenLockSuggestionActivity;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result v1

    return v1

    .line 89
    :cond_3
    const-class v1, Lcom/android/settings/wifi/calling/WifiCallingSuggestionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 90
    invoke-static {p1}, Lcom/android/settings/wifi/calling/WifiCallingSuggestionActivity;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result v1

    return v1

    .line 91
    :cond_4
    const-class v1, Lcom/android/settings/Settings$NightDisplaySuggestionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 92
    invoke-static {p1}, Lcom/android/settings/display/NightDisplayPreferenceController;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result v1

    return v1

    .line 93
    :cond_5
    const-class v1, Lcom/android/settings/support/NewDeviceIntroSuggestionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 94
    invoke-static {p1}, Lcom/android/settings/support/NewDeviceIntroSuggestionActivity;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result v1

    return v1

    .line 95
    :cond_6
    const-class v1, Lcom/android/settings/notification/ZenSuggestionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 96
    invoke-static {p1}, Lcom/android/settings/notification/ZenOnboardingActivity;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result v1

    return v1

    .line 98
    :cond_7
    const/4 v1, 0x0

    return v1
.end method

.method public isSuggestionEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    const-string v0, "activity"

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    const/4 v0, 0x0

    return v0
.end method
