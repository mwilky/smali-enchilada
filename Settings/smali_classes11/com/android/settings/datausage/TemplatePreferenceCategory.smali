.class public Lcom/android/settings/datausage/TemplatePreferenceCategory;
.super Landroid/support/v7/preference/PreferenceCategory;
.source "TemplatePreferenceCategory.java"

# interfaces
.implements Lcom/android/settings/datausage/TemplatePreference;


# instance fields
.field private mSubId:I

.field private mTemplate:Landroid/net/NetworkTemplate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public addPreference(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/settings/datausage/TemplatePreference;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TemplatePreferenceCategories can only hold TemplatePreferences"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pushTemplates(Lcom/android/settings/datausage/TemplatePreference$NetworkServices;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mTemplate:Landroid/net/NetworkTemplate;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/TemplatePreference;

    iget-object v2, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mTemplate:Landroid/net/NetworkTemplate;

    iget v3, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mSubId:I

    invoke-interface {v1, v2, v3, p1}, Lcom/android/settings/datausage/TemplatePreference;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "null mTemplate for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mTemplate:Landroid/net/NetworkTemplate;

    iput p2, p0, Lcom/android/settings/datausage/TemplatePreferenceCategory;->mSubId:I

    return-void
.end method
