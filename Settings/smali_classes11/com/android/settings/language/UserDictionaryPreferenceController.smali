.class public Lcom/android/settings/language/UserDictionaryPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "UserDictionaryPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final KEY_USER_DICTIONARY_SETTINGS:Ljava/lang/String; = "key_user_dictionary_settings"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getDictionaryLocales()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/language/UserDictionaryPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/inputmethod/UserDictionaryList;->getUserDictionaryLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "key_user_dictionary_settings"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/language/UserDictionaryPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/language/UserDictionaryPreferenceController;->getDictionaryLocales()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_2

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "locale"

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-class v2, Lcom/android/settings/inputmethod/UserDictionarySettings;

    goto :goto_0

    :cond_2
    const-class v2, Lcom/android/settings/inputmethod/UserDictionaryList;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->setFragment(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    return-void
.end method
