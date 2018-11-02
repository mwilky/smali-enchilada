.class public Lcom/android/settings/wifi/LinkablePreference;
.super Landroid/support/v7/preference/Preference;
.source "LinkablePreference.java"


# instance fields
.field private mClickListener:Lcom/android/settings/LinkifyUtils$OnClickListener;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mContentTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/LinkablePreference;->setSelectable(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/LinkablePreference;->setSelectable(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/LinkablePreference;->setSelectable(Z)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v2, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentTitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/LinkablePreference;->mClickListener:Lcom/android/settings/LinkifyUtils$OnClickListener;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/LinkablePreference;->mClickListener:Lcom/android/settings/LinkifyUtils$OnClickListener;

    invoke-static {v0, v2, v3}, Lcom/android/settings/LinkifyUtils;->linkify(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/settings/LinkifyUtils$OnClickListener;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentTitle:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    new-instance v5, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/android/settings/wifi/LinkablePreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x1030044

    invoke-direct {v5, v6, v7}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iget-object v6, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentTitle:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/16 v7, 0x11

    invoke-interface {v4, v5, v1, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v1}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settings/LinkifyUtils$OnClickListener;)V
    .locals 0
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentTitle:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentDescription:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/settings/wifi/LinkablePreference;->mClickListener:Lcom/android/settings/LinkifyUtils$OnClickListener;

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings/wifi/LinkablePreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
