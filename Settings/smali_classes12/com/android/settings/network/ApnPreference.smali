.class public Lcom/android/settings/network/ApnPreference;
.super Landroid/support/v7/preference/Preference;
.source "ApnPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final TAG:Ljava/lang/String; = "ApnPreference"

.field private static mCurrentChecked:Landroid/widget/CompoundButton;

.field private static mSelectedKey:Ljava/lang/String;


# instance fields
.field private mProtectFromCheckedChange:Z

.field private mSelectable:Z

.field private mSubId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/network/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/network/ApnPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f04003c

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/network/ApnPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/network/ApnPreference;->mSubId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/network/ApnPreference;->mProtectFromCheckedChange:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/network/ApnPreference;->mSelectable:Z

    return-void
.end method


# virtual methods
.method public getSelectable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/network/ApnPreference;->mSelectable:Z

    return v0
.end method

.method public isChecked()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0067

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/widget/RadioButton;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/widget/RadioButton;

    iget-boolean v2, p0, Lcom/android/settings/network/ApnPreference;->mSelectable:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sput-object v1, Lcom/android/settings/network/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/network/ApnPreference;->mProtectFromCheckedChange:Z

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/network/ApnPreference;->mProtectFromCheckedChange:Z

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_2
    :goto_0
    const v1, 0x7f0a057b

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    instance-of v2, v1, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_3

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const-string v0, "ApnPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/network/ApnPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    sget-object v0, Lcom/android/settings/network/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/network/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_1
    sput-object p1, Lcom/android/settings/network/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    sget-object v0, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/network/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    sput-object v0, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    if-eqz p1, :cond_0

    const v0, 0x7f0a057b

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, v1

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.EDIT"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v4, "sub_id"

    iget v5, p0, Lcom/android/settings/network/ApnPreference;->mSubId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public setChecked()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    return-void
.end method

.method public setSelectable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/network/ApnPreference;->mSelectable:Z

    return-void
.end method

.method public setSubId(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/network/ApnPreference;->mSubId:I

    return-void
.end method

.method public unsetChecked()V
    .locals 3

    sget-object v0, Lcom/android/settings/network/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    const-string v0, "ApnPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsetChecked mCurrentChecked.setChecked(false) getKey()  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/network/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    return-void
.end method
