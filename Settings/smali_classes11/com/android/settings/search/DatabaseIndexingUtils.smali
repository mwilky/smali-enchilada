.class public Lcom/android/settings/search/DatabaseIndexingUtils;
.super Ljava/lang/Object;
.source "DatabaseIndexingUtils.java"


# static fields
.field public static final FIELD_NAME_SEARCH_INDEX_DATA_PROVIDER:Ljava/lang/String; = "SEARCH_INDEX_DATA_PROVIDER"

.field private static final TAG:Ljava/lang/String; = "IndexingUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "screenTitle"    # Ljava/lang/String;

    .line 54
    const/16 v0, 0x22

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/settings/search/DatabaseIndexingUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "screenTitle"    # Ljava/lang/String;
    .param p4, "sourceMetricsCategory"    # I

    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, ":settings:fragment_args_key"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {v1, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 64
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 65
    invoke-virtual {v1, p3}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 66
    invoke-virtual {v1, p4}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v1

    .line 68
    .local v1, "searchDestination":Landroid/content/Intent;
    const-string v2, ":settings:fragment_args_key"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.settings.SEARCH_RESULT_TRAMPOLINE"

    .line 69
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 70
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 71
    return-object v1
.end method

.method public static getIndexableClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 127
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 130
    nop

    .line 132
    invoke-static {v1}, Lcom/android/settings/search/DatabaseIndexingUtils;->isIndexableClass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    nop

    :cond_0
    return-object v0

    .line 128
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "IndexingUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-object v0
.end method

.method public static getPayloadKeyMap(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;
    .locals 8
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/search/ResultPayload;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 82
    .local v0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/settings/search/ResultPayload;>;"
    if-nez p1, :cond_0

    .line 83
    return-object v0

    .line 86
    :cond_0
    invoke-static {p0}, Lcom/android/settings/search/DatabaseIndexingUtils;->getIndexableClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 88
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_1

    .line 89
    const-string v2, "IndexingUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SearchIndexableResource \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' should implement the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v4, Lcom/android/settings/search/Indexable;

    .line 90
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " interface!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-object v0

    .line 96
    :cond_1
    invoke-static {v1}, Lcom/android/settings/search/DatabaseIndexingUtils;->getSearchIndexProvider(Ljava/lang/Class;)Lcom/android/settings/search/Indexable$SearchIndexProvider;

    move-result-object v2

    .line 98
    .local v2, "provider":Lcom/android/settings/search/Indexable$SearchIndexProvider;
    nop

    .line 99
    invoke-interface {v2, p1}, Lcom/android/settings/search/Indexable$SearchIndexProvider;->getPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 101
    .local v3, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    if-nez v3, :cond_2

    .line 102
    return-object v0

    .line 105
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 107
    .local v5, "controller":Lcom/android/settingslib/core/AbstractPreferenceController;
    instance-of v6, v5, Lcom/android/settings/core/PreferenceControllerMixin;

    if-eqz v6, :cond_3

    .line 108
    move-object v6, v5

    check-cast v6, Lcom/android/settings/core/PreferenceControllerMixin;

    invoke-interface {v6}, Lcom/android/settings/core/PreferenceControllerMixin;->getResultPayload()Lcom/android/settings/search/ResultPayload;

    move-result-object v6

    .local v6, "payload":Lcom/android/settings/search/ResultPayload;
    :goto_1
    goto :goto_2

    .line 110
    .end local v6    # "payload":Lcom/android/settings/search/ResultPayload;
    :cond_3
    instance-of v6, v5, Lcom/android/settings/core/BasePreferenceController;

    if-eqz v6, :cond_5

    .line 111
    move-object v6, v5

    check-cast v6, Lcom/android/settings/core/BasePreferenceController;

    invoke-virtual {v6}, Lcom/android/settings/core/BasePreferenceController;->getResultPayload()Lcom/android/settings/search/ResultPayload;

    move-result-object v6

    goto :goto_1

    .line 114
    .restart local v6    # "payload":Lcom/android/settings/search/ResultPayload;
    :goto_2
    nop

    .line 116
    if-eqz v6, :cond_4

    .line 117
    invoke-virtual {v5}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .end local v5    # "controller":Lcom/android/settingslib/core/AbstractPreferenceController;
    .end local v6    # "payload":Lcom/android/settings/search/ResultPayload;
    :cond_4
    goto :goto_0

    .line 113
    .restart local v5    # "controller":Lcom/android/settingslib/core/AbstractPreferenceController;
    :cond_5
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " must implement "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v7, Lcom/android/settings/core/PreferenceControllerMixin;

    .line 114
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 121
    .end local v5    # "controller":Lcom/android/settingslib/core/AbstractPreferenceController;
    :cond_6
    return-object v0
.end method

.method public static getSearchIndexProvider(Ljava/lang/Class;)Lcom/android/settings/search/Indexable$SearchIndexProvider;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/android/settings/search/Indexable$SearchIndexProvider;"
        }
    .end annotation

    .line 141
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SEARCH_INDEX_DATA_PROVIDER"

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 142
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/search/Indexable$SearchIndexProvider;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 150
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "IndexingUtil"

    const-string v3, "Illegal argument when accessing field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 148
    :catch_1
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "IndexingUtil"

    const-string v3, "Illegal access to field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 145
    :catch_2
    move-exception v1

    .line 146
    .local v1, "se":Ljava/lang/SecurityException;
    const-string v2, "IndexingUtil"

    const-string v3, "Security exception for field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "se":Ljava/lang/SecurityException;
    goto :goto_0

    .line 143
    :catch_3
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string v2, "IndexingUtil"

    const-string v3, "Cannot find field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :goto_0
    nop

    .line 154
    :goto_1
    return-object v0
.end method

.method public static isIndexableClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 136
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    const-class v0, Lcom/android/settings/search/Indexable;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
