.class public Lcom/android/settings/nfc/NfcPaymentPreference;
.super Lcom/android/settingslib/CustomDialogPreference;
.source "NfcPaymentPreference.java"

# interfaces
.implements Lcom/android/settings/nfc/PaymentBackend$Callback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NfcPaymentPreference"


# instance fields
.field private final mAdapter:Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;

.field private final mContext:Landroid/content/Context;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

.field private mSettingsButtonView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/nfc/PaymentBackend;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p2, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    iput-object p1, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0}, Lcom/android/settings/nfc/PaymentBackend;->registerCallback(Lcom/android/settings/nfc/PaymentBackend$Callback;)V

    new-instance v0, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;-><init>(Lcom/android/settings/nfc/NfcPaymentPreference;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mAdapter:Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;

    const v0, 0x7f120992

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcPaymentPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0212

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcPaymentPreference;->setWidgetLayoutResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPaymentPreference;->refresh()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/NfcPaymentPreference;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/NfcPaymentPreference;)Lcom/android/settings/nfc/PaymentBackend;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    return-object v0
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/CustomDialogPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a04d7

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mSettingsButtonView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mSettingsButtonView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPaymentPreference;->updateSettingsVisibility()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "NfcPaymentPreference"

    const-string v4, "Settings activity not found."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onPaymentAppsChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPaymentPreference;->refresh()V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mAdapter:Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method public refresh()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v1}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    iget-object v3, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mAdapter:Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;

    invoke-virtual {v3, v2, v1}, Lcom/android/settings/nfc/NfcPaymentPreference$NfcPaymentAdapter;->updateApps([Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;)V

    :cond_0
    const v2, 0x7f12098c

    invoke-virtual {p0, v2}, Lcom/android/settings/nfc/NfcPaymentPreference;->setTitle(I)V

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/settings/nfc/NfcPaymentPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f12098d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/nfc/NfcPaymentPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPaymentPreference;->updateSettingsVisibility()V

    return-void
.end method

.method updateSettingsVisibility()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mSettingsButtonView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultApp()Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->settingsComponent:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mSettingsButtonView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/nfc/NfcPaymentPreference;->mSettingsButtonView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method
