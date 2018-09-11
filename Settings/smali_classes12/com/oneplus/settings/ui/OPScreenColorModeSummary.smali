.class public Lcom/oneplus/settings/ui/OPScreenColorModeSummary;
.super Lcom/android/settingslib/RestrictedPreference;
.source "OPScreenColorModeSummary.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSummary:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 23
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->mContext:Landroid/content/Context;

    .line 24
    const v0, 0x7f0d01a5

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->setLayoutResource(I)V

    .line 25
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 41
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 42
    const v0, 0x7f0a04f8

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->mSummary:Landroid/widget/TextView;

    .line 43
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "night_display_activated"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 44
    .local v0, "nightmodeenabled":Z
    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "reading_mode_status_manual"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 45
    .local v1, "readingmodeenabled":Z
    :goto_1
    if-nez v0, :cond_2

    .line 46
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->mSummary:Landroid/widget/TextView;

    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const v4, 0x7f120c51

    invoke-virtual {v3, v4}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :cond_2
    if-nez v1, :cond_3

    .line 49
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->mSummary:Landroid/widget/TextView;

    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const v4, 0x7f120c4e

    invoke-virtual {v3, v4}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :cond_3
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .line 62
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->setTextSummary(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public setTextSummary(Ljava/lang/String;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->notifyChanged()V

    .line 58
    return-void
.end method
