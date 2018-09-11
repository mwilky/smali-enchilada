.class public Lcom/oneplus/settings/system/OPSystemUpdatePreference;
.super Landroid/support/v7/preference/Preference;
.source "OPSystemUpdatePreference.java"


# static fields
.field public static final HAS_NEW_VERSION_TO_UPDATE:Ljava/lang/String; = "has_new_version_to_update"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-direct {p0, p1}, Lcom/oneplus/settings/system/OPSystemUpdatePreference;->initViews(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/oneplus/settings/system/OPSystemUpdatePreference;->initViews(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0, p1}, Lcom/oneplus/settings/system/OPSystemUpdatePreference;->initViews(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    iput-object p1, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreference;->mContext:Landroid/content/Context;

    .line 47
    const v0, 0x7f0d0178

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/system/OPSystemUpdatePreference;->setWidgetLayoutResource(I)V

    .line 48
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 52
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 54
    iget-object v0, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreference;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "has_new_version_to_update"

    .line 54
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v0, v1

    .line 56
    .local v0, "systemHasUpdate":Z
    const v1, 0x1020018

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 57
    .local v1, "updateIcon":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    return-void
.end method

.method public updateView()V
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcom/oneplus/settings/system/OPSystemUpdatePreference;->notifyChanged()V

    .line 64
    return-void
.end method
