.class public Lcom/oneplus/settings/timer/timepower/TimepowerPreference;
.super Landroid/support/v7/preference/Preference;
.source "TimepowerPreference.java"


# instance fields
.field private mSettingsViewClicklistener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 29
    const v0, 0x101008e

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const v0, 0x7f0d01c7

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;->setLayoutResource(I)V

    .line 26
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 37
    const v0, 0x7f0a054b

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "textLayout":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 40
    const v1, 0x7f0a054c

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 41
    .local v1, "settingsIcon":Landroid/view/View;
    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;->mSettingsViewClicklistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method

.method public setViewClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 18
    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;->mSettingsViewClicklistener:Landroid/view/View$OnClickListener;

    .line 19
    return-void
.end method
