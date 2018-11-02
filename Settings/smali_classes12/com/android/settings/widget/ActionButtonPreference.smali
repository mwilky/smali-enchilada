.class public Lcom/android/settings/widget/ActionButtonPreference;
.super Landroid/support/v7/preference/Preference;
.source "ActionButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;
    }
.end annotation


# instance fields
.field private final mButton1Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

.field private final mButton2Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-direct {v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton1Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    new-instance v0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-direct {v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton2Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-direct {p0}, Lcom/android/settings/widget/ActionButtonPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-direct {v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton1Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    new-instance v0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-direct {v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton2Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-direct {p0}, Lcom/android/settings/widget/ActionButtonPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-direct {v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton1Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    new-instance v0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-direct {v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton2Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-direct {p0}, Lcom/android/settings/widget/ActionButtonPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-direct {v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton1Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    new-instance v0, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-direct {v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton2Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-direct {p0}, Lcom/android/settings/widget/ActionButtonPreference;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    const v0, 0x7f0d02c3

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ActionButtonPreference;->setLayoutResource(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ActionButtonPreference;->setSelectable(Z)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton1Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    const v1, 0x7f0a00c7

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$002(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;Landroid/widget/Button;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton1Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    const v1, 0x7f0a00c6

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$102(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;Landroid/widget/Button;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton2Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    const v1, 0x7f0a00c9

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$002(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;Landroid/widget/Button;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton2Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    const v1, 0x7f0a00c8

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$102(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;Landroid/widget/Button;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton1Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-virtual {v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->setUpButton()V

    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton2Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-virtual {v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->setUpButton()V

    return-void
.end method

.method public setButton1Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton1Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$300(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton1Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$302(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;Z)Z

    invoke-virtual {p0}, Lcom/android/settings/widget/ActionButtonPreference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setButton1OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/ActionButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton1Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$400(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton1Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$402(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/android/settings/widget/ActionButtonPreference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setButton1Positive(Z)Lcom/android/settings/widget/ActionButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton1Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$500(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton1Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$502(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;Z)Z

    invoke-virtual {p0}, Lcom/android/settings/widget/ActionButtonPreference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setButton1Text(I)Lcom/android/settings/widget/ActionButtonPreference;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/android/settings/widget/ActionButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton1Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v1}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$200(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton1Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v1, v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$202(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/widget/ActionButtonPreference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setButton1Visible(Z)Lcom/android/settings/widget/ActionButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton1Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$600(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton1Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$602(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;Z)Z

    invoke-virtual {p0}, Lcom/android/settings/widget/ActionButtonPreference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setButton2Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton2Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$300(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton2Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$302(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;Z)Z

    invoke-virtual {p0}, Lcom/android/settings/widget/ActionButtonPreference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setButton2OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/ActionButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton2Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$400(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton2Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$402(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/android/settings/widget/ActionButtonPreference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setButton2Positive(Z)Lcom/android/settings/widget/ActionButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton2Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$500(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton2Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$502(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;Z)Z

    invoke-virtual {p0}, Lcom/android/settings/widget/ActionButtonPreference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setButton2Text(I)Lcom/android/settings/widget/ActionButtonPreference;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/android/settings/widget/ActionButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton2Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v1}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$200(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton2Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v1, v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$202(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/widget/ActionButtonPreference;->notifyChanged()V

    :cond_0
    return-object p0
.end method

.method public setButton2Visible(Z)Lcom/android/settings/widget/ActionButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton2Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v0}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$600(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ActionButtonPreference;->mButton2Info:Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;

    invoke-static {v0, p1}, Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;->access$602(Lcom/android/settings/widget/ActionButtonPreference$ButtonInfo;Z)Z

    invoke-virtual {p0}, Lcom/android/settings/widget/ActionButtonPreference;->notifyChanged()V

    :cond_0
    return-object p0
.end method
