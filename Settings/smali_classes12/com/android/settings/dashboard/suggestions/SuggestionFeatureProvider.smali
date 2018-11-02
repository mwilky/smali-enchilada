.class public interface abstract Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;
.super Ljava/lang/Object;
.source "SuggestionFeatureProvider.java"


# virtual methods
.method public abstract dismissSuggestion(Landroid/content/Context;Lcom/android/settingslib/suggestions/SuggestionControllerMixin;Landroid/service/settings/suggestions/Suggestion;)V
.end method

.method public abstract filterExclusiveSuggestions(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getLoggingTaggedData(Landroid/content/Context;)[Landroid/util/Pair;
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
.end method

.method public abstract getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
.end method

.method public abstract getSuggestionServiceComponent()Landroid/content/ComponentName;
.end method

.method public abstract isSmartSuggestionEnabled(Landroid/content/Context;)Z
.end method

.method public abstract isSuggestionComplete(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .param p2    # Landroid/content/ComponentName;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isSuggestionEnabled(Landroid/content/Context;)Z
.end method
